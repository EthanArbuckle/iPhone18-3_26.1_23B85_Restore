@interface MTRDeviceTypeRevision
- (BOOL)isEqual:(id)equal;
- (MTRDeviceTypeRevision)initWithCoder:(id)coder;
- (MTRDeviceTypeRevision)initWithDeviceTypeID:(id)d revision:(id)revision;
- (MTRDeviceTypeRevision)initWithDeviceTypeStruct:(id)struct;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRDeviceTypeRevision

- (MTRDeviceTypeRevision)initWithDeviceTypeID:(id)d revision:(id)revision
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  revisionCopy = revision;
  v8 = revisionCopy;
  selfCopy = 0;
  if (dCopy && revisionCopy)
  {
    unsignedLongLongValue = [dCopy unsignedLongLongValue];
    v11 = unsignedLongLongValue;
    if (HIDWORD(unsignedLongLongValue))
    {
      v15 = sub_2393D9044(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = v11;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "MTRDeviceTypeRevision provided too-large device type ID: 0x%llx", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_20;
      }
    }

    else if ((unsignedLongLongValue & 0xFFFF0000) > 0xFFFE0000 || (unsignedLongLongValue & 0xC000) == 0xC000)
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v21) = v11;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "MTRDeviceTypeRevision provided invalid device type ID: 0x%x", buf, 8u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_20;
      }
    }

    else
    {
      unsignedLongLongValue2 = [v8 unsignedLongLongValue];
      if ((unsignedLongLongValue2 - 1) < 0xFFFF)
      {
        v13 = [dCopy copy];
        v14 = [v8 copy];
        self = sub_238F4261C(&self->super.isa, v13, v14);

        selfCopy = self;
        goto LABEL_21;
      }

      v17 = sub_2393D9044(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = unsignedLongLongValue2;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "MTRDeviceTypeRevision provided invalid device type revision: 0x%llx", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_20:
        selfCopy = 0;
        goto LABEL_21;
      }
    }

    sub_2393D5320(0, 1);
    goto LABEL_20;
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (MTRDeviceTypeRevision)initWithDeviceTypeStruct:(id)struct
{
  structCopy = struct;
  deviceType = [structCopy deviceType];
  revision = [structCopy revision];
  v7 = [(MTRDeviceTypeRevision *)self initWithDeviceTypeID:deviceType revision:revision];

  return v7;
}

- (MTRDeviceTypeRevision)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MTRDeviceTypeRevision;
  v5 = [(MTRDeviceTypeRevision *)&v11 init];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(coderCopy, "decodeInt64ForKey:", @"ty"}];
  deviceTypeID = v5->_deviceTypeID;
  v5->_deviceTypeID = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"re"}];
  deviceTypeRevision = v5->_deviceTypeRevision;
  v5->_deviceTypeRevision = v8;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NSNumber unsignedLongLongValue](self->_deviceTypeID forKey:{"unsignedLongLongValue"), @"ty"}];
  [coderCopy encodeInteger:-[NSNumber unsignedIntegerValue](self->_deviceTypeRevision forKey:{"unsignedIntegerValue"), @"re"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    deviceTypeID = self->_deviceTypeID;
    deviceTypeID = [v7 deviceTypeID];
    if ([(NSNumber *)deviceTypeID isEqual:deviceTypeID])
    {
      deviceTypeRevision = self->_deviceTypeRevision;
      deviceTypeRevision = [v7 deviceTypeRevision];
      v6 = [(NSNumber *)deviceTypeRevision isEqual:deviceTypeRevision];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  unsignedIntValue = [(NSNumber *)self->_deviceTypeID unsignedIntValue];
  typeInformation = [(MTRDeviceTypeRevision *)self typeInformation];
  name = [typeInformation name];
  unsignedIntValue2 = [(NSNumber *)self->_deviceTypeRevision unsignedIntValue];
  v9 = @"???";
  if (name)
  {
    v9 = name;
  }

  v10 = [v3 stringWithFormat:@"<%@ 0x%x (%@) rev %d>", v4, unsignedIntValue, v9, unsignedIntValue2];

  return v10;
}

@end