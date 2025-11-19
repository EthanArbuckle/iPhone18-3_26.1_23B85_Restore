@interface HIDLibElement
- (BOOL)isEqual:(id)a3;
- (HIDLibElement)initWithElementRef:(__IOHIDElement *)a3;
- (HIDLibElement)initWithElementStruct:(IOHIDElementStruct *)a3 parent:(__IOHIDElement *)a4 index:(unsigned int)a5;
- (NSData)dataValue;
- (__IOHIDValue)valueRef;
- (id)description;
- (int)collectionType;
- (int)type;
- (int64_t)integerValue;
- (int64_t)length;
- (unint64_t)timestamp;
- (unsigned)elementCookie;
- (unsigned)reportID;
- (unsigned)unit;
- (unsigned)unitExponent;
- (unsigned)usage;
- (unsigned)usagePage;
- (void)dealloc;
- (void)setDataValue:(id)a3;
- (void)setDefaultValueRef:(__IOHIDValue *)a3;
- (void)setElementRef:(__IOHIDElement *)a3;
- (void)setIntegerValue:(int64_t)a3;
- (void)setValueRef:(__IOHIDValue *)a3;
@end

@implementation HIDLibElement

- (HIDLibElement)initWithElementRef:(__IOHIDElement *)a3
{
  v8.receiver = self;
  v8.super_class = HIDLibElement;
  v4 = [(HIDLibElement *)&v8 init];
  if (v4)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    CFRetain(a3);
    v4->_element = a3;
    v6 = v4;
  }

  return v6;
}

- (HIDLibElement)initWithElementStruct:(IOHIDElementStruct *)a3 parent:(__IOHIDElement *)a4 index:(unsigned int)a5
{
  v11.receiver = self;
  v11.super_class = HIDLibElement;
  v6 = [(HIDLibElement *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v6->_element = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 1);
  memmove(&v7->_elementStruct, a3, 0x60uLL);
  if (Mutable)
  {
    v7->_element = _IOHIDElementCreateWithParentAndData();
    CFRelease(Mutable);
  }

  if (v7->_element)
  {
    v9 = v7;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  defaultValue = self->_defaultValue;
  if (defaultValue)
  {
    CFRelease(defaultValue);
  }

  element = self->_element;
  if (element)
  {
    CFRelease(element);
  }

  v5.receiver = self;
  v5.super_class = HIDLibElement;
  [(HIDLibElement *)&v5 dealloc];
}

- (id)description
{
  v4 = MEMORY[0x29EDBA0F8];
  element = self->_element;
  v6 = objc_msgSend_type(self, a2, v2);
  v9 = objc_msgSend_usagePage(self, v7, v8);
  v12 = objc_msgSend_usage(self, v10, v11);
  v15 = objc_msgSend_elementCookie(self, v13, v14);
  v18 = objc_msgSend_integerValue(self, v16, v17);
  return objc_msgSend_stringWithFormat_(v4, v19, @"element: %p type: %d uP: 0x%02x u: 0x%02x cookie: %d val: %ld", element, v6, v9, v12, v15, v18);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToHIDLibElement = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToHIDLibElement = objc_msgSend_isEqualToHIDLibElement_(self, v5, v4);
    }

    else
    {
      isEqualToHIDLibElement = 0;
    }
  }

  return isEqualToHIDLibElement;
}

- (void)setElementRef:(__IOHIDElement *)a3
{
  element = self->_element;
  if (element != a3)
  {
    if (element)
    {
      CFRelease(element);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_element = a3;
  }
}

- (__IOHIDValue)valueRef
{
  result = self->_element;
  if (result)
  {
    return MEMORY[0x2A1C5C000](result, a2);
  }

  return result;
}

- (void)setValueRef:(__IOHIDValue *)a3
{
  if (self->_element)
  {
    MEMORY[0x2A1C5C010]();
  }
}

- (void)setDefaultValueRef:(__IOHIDValue *)a3
{
  defaultValue = self->_defaultValue;
  if (defaultValue != a3)
  {
    if (defaultValue)
    {
      CFRelease(defaultValue);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_defaultValue = a3;
  }
}

- (int64_t)integerValue
{
  result = objc_msgSend_valueRef(self, a2, v2);
  if (result)
  {
    v7 = objc_msgSend_valueRef(self, v5, v6);

    return IOHIDValueGetIntegerValue(v7);
  }

  return result;
}

- (void)setIntegerValue:(int64_t)a3
{
  v5 = *MEMORY[0x29EDB8ED8];
  element = self->_element;
  v7 = mach_absolute_time();
  v8 = IOHIDValueCreateWithIntegerValue(v5, element, v7, a3);
  objc_msgSend_setValueRef_(self, v9, v8);
  if (v8)
  {

    CFRelease(v8);
  }
}

- (NSData)dataValue
{
  v4 = objc_msgSend_valueRef(self, a2, v2);
  if (v4)
  {
    v7 = MEMORY[0x29EDB8DA0];
    v8 = objc_msgSend_valueRef(self, v5, v6);
    BytePtr = IOHIDValueGetBytePtr(v8);
    v12 = objc_msgSend_valueRef(self, v10, v11);
    Length = IOHIDValueGetLength(v12);
    v4 = objc_msgSend_dataWithBytes_length_(v7, v14, BytePtr, Length);
  }

  return v4;
}

- (void)setDataValue:(id)a3
{
  v5 = *MEMORY[0x29EDB8ED8];
  element = self->_element;
  v7 = a3;
  v8 = a3;
  v11 = objc_msgSend_bytes(v8, v9, v10);
  v14 = objc_msgSend_length(v8, v12, v13);

  v15 = IOHIDValueCreateWithBytes(v5, element, 0, v11, v14);
  objc_msgSend_setValueRef_(self, v16, v15);
  if (v15)
  {

    CFRelease(v15);
  }
}

- (unint64_t)timestamp
{
  result = objc_msgSend_valueRef(self, a2, v2);
  if (result)
  {
    v7 = objc_msgSend_valueRef(self, v5, v6);

    return IOHIDValueGetTimeStamp(v7);
  }

  return result;
}

- (int64_t)length
{
  result = self->_element;
  if (result)
  {
    return _IOHIDElementGetLength();
  }

  return result;
}

- (unsigned)elementCookie
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetCookie(element);
  }

  return element;
}

- (int)type
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetType(element);
  }

  return element;
}

- (unsigned)usage
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetUsage(element);
  }

  return element;
}

- (unsigned)usagePage
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetUsagePage(element);
  }

  return element;
}

- (unsigned)unit
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetUnit(element);
  }

  return element;
}

- (unsigned)unitExponent
{
  element = self->_element;
  if (element)
  {
    LOBYTE(element) = IOHIDElementGetUnitExponent(element);
  }

  return element;
}

- (unsigned)reportID
{
  element = self->_element;
  if (element)
  {
    LOBYTE(element) = IOHIDElementGetReportID(element);
  }

  return element;
}

- (int)collectionType
{
  element = self->_element;
  if (element)
  {
    LODWORD(element) = IOHIDElementGetCollectionType(element);
  }

  return element;
}

@end