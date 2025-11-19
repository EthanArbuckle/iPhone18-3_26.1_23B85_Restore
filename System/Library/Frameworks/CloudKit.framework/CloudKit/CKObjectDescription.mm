@interface CKObjectDescription
- (CKObjectDescription)initWithObject:(id)a3 redact:(BOOL)a4 avoidShortDescription:(BOOL)a5;
- (id)_arrayDescription:(id)a3 shouldRedact:(BOOL)a4;
- (id)_dictionaryDescription:(id)a3 shouldRedact:(BOOL)a4;
- (id)description;
- (void)addBooleanProperty:(id)a3 value:(BOOL)a4 defaultValue:(int64_t)a5;
- (void)addFlagsForKey:(id)a3 flagsAndConditions:(id)a4;
- (void)addPropertyIfExists:(id)a3 value:(id)a4 shouldRedact:(BOOL)a5;
@end

@implementation CKObjectDescription

- (id)description
{
  v4 = objc_msgSend_count(self->_orderedDictionary, a2, v2);
  v7 = objc_msgSend_printAsDictionary(self, v5, v6);
  if (v4)
  {
    if (v7)
    {
      v9 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v8, @"{ ");
    }

    else
    {
      v9 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v8, self->_descriptionPrefix);
      objc_msgSend_appendString_(v9, v11, @" ");
    }

    orderedDictionary = self->_orderedDictionary;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1883EE69C;
    v22[3] = &unk_1E70BED00;
    v10 = v9;
    v23 = v10;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(orderedDictionary, v13, v22);
    v16 = objc_msgSend_length(v10, v14, v15);
    objc_msgSend_deleteCharactersInRange_(v10, v17, v16 - 2, 2);
    if (objc_msgSend_printAsDictionary(self, v18, v19))
    {
      objc_msgSend_appendString_(v10, v20, @" }");
    }

    else
    {
      objc_msgSend_appendString_(v10, v20, @">");
    }
  }

  else if (v7)
  {
    v10 = @"{}";
  }

  else
  {
    v10 = objc_msgSend_stringByAppendingString_(self->_descriptionPrefix, v8, @">");
  }

  return v10;
}

- (CKObjectDescription)initWithObject:(id)a3 redact:(BOOL)a4 avoidShortDescription:(BOOL)a5
{
  v8 = a3;
  v28.receiver = self;
  v28.super_class = CKObjectDescription;
  v9 = [(CKObjectDescription *)&v28 init];
  v12 = v9;
  if (v9)
  {
    v9->_printAsDictionary = 0;
    v9->_redact = a4;
    v9->_avoidShortDescription = a5;
    if (v8)
    {
      ShouldPrintPointer = objc_msgSend_CKDescriptionShouldPrintPointer(v8, v10, v11);
      v14 = MEMORY[0x1E696AEC0];
      v17 = objc_msgSend_CKDescriptionClassName(v8, v15, v16);
      v19 = v17;
      if (ShouldPrintPointer)
      {
        objc_msgSend_stringWithFormat_(v14, v18, @"<%@: %p;", v17, v8);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v14, v18, @"<%@", v17);
      }
      v20 = ;
      descriptionPrefix = v12->_descriptionPrefix;
      v12->_descriptionPrefix = v20;
    }

    v22 = objc_msgSend_orderedDictionary(CKOrderedDictionary, v10, v11);
    orderedDictionary = v12->_orderedDictionary;
    v12->_orderedDictionary = v22;

    v24 = objc_opt_class();
    if (objc_msgSend_conformsToProtocol_(v24, v25, &unk_1EFA8A7B0))
    {
      objc_msgSend_CKDescribePropertiesUsing_(v8, v26, v12);
    }
  }

  return v12;
}

- (void)addPropertyIfExists:(id)a3 value:(id)a4 shouldRedact:(BOOL)a5
{
  if (a4)
  {
    MEMORY[0x1EEE66B58](self, sel__addProperty_value_shouldRedact_, a3);
  }
}

- (void)addBooleanProperty:(id)a3 value:(BOOL)a4 defaultValue:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    if (a5 == 1)
    {
      goto LABEL_7;
    }

    v10 = @"YES";
  }

  else
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    v10 = @"NO";
  }

  v11 = v8;
  v8 = objc_msgSend_addObject_forKey_(self->_orderedDictionary, v8, v10, v8);
  v9 = v11;
LABEL_7:

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)addFlagsForKey:(id)a3 flagsAndConditions:(id)a4
{
  v15 = a3;
  v7 = objc_msgSend_CKCompactMap_(a4, v6, &unk_1EFA306D0);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_sortedArrayUsingSelector_(v7, v10, sel_compare_);
    v13 = objc_msgSend_componentsJoinedByString_(v11, v12, @"|");

    objc_msgSend_addObject_forKey_(self->_orderedDictionary, v14, v13, v15);
  }
}

- (id)_arrayDescription:(id)a3 shouldRedact:(BOOL)a4
{
  v6 = a3;
  if (objc_msgSend_avoidShortDescription(self, v7, v8))
  {
    v10 = objc_msgSend_orderedDictionaryWithCapacity_(CKOrderedDictionary, v9, 2);
    objc_msgSend_addObject_forKey_(v10, v11, @"array", @"type");
    objc_msgSend_addObject_forKey_(v10, v12, @"items", @"items");
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1886AD274;
    v14[3] = &unk_1E70C1C60;
    v14[4] = self;
    v15 = a4;
    v10 = objc_msgSend_CKMap_(v6, v9, v14);
  }

  return v10;
}

- (id)_dictionaryDescription:(id)a3 shouldRedact:(BOOL)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1886AD314;
  v6[3] = &unk_1E70C1C88;
  v6[4] = self;
  v7 = a4;
  v4 = objc_msgSend_CKMapValues_(a3, a2, v6);

  return v4;
}

@end