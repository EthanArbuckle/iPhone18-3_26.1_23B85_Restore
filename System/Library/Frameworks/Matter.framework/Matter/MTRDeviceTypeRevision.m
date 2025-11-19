@interface MTRDeviceTypeRevision
- (BOOL)isEqual:(id)a3;
- (MTRDeviceTypeRevision)initWithCoder:(id)a3;
- (MTRDeviceTypeRevision)initWithDeviceTypeID:(id)a3 revision:(id)a4;
- (MTRDeviceTypeRevision)initWithDeviceTypeStruct:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTRDeviceTypeRevision

- (MTRDeviceTypeRevision)initWithDeviceTypeID:(id)a3 revision:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 unsignedLongLongValue];
    v11 = v10;
    if (HIDWORD(v10))
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

    else if ((v10 & 0xFFFF0000) > 0xFFFE0000 || (v10 & 0xC000) == 0xC000)
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
      v12 = [v8 unsignedLongLongValue];
      if ((v12 - 1) < 0xFFFF)
      {
        v13 = [v6 copy];
        v14 = [v8 copy];
        self = sub_238F4261C(&self->super.isa, v13, v14);

        v9 = self;
        goto LABEL_21;
      }

      v17 = sub_2393D9044(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = v12;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "MTRDeviceTypeRevision provided invalid device type revision: 0x%llx", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }
    }

    sub_2393D5320(0, 1);
    goto LABEL_20;
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (MTRDeviceTypeRevision)initWithDeviceTypeStruct:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceType];
  v6 = [v4 revision];
  v7 = [(MTRDeviceTypeRevision *)self initWithDeviceTypeID:v5 revision:v6];

  return v7;
}

- (MTRDeviceTypeRevision)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTRDeviceTypeRevision;
  v5 = [(MTRDeviceTypeRevision *)&v11 init];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "decodeInt64ForKey:", @"ty"}];
  deviceTypeID = v5->_deviceTypeID;
  v5->_deviceTypeID = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "decodeIntegerForKey:", @"re"}];
  deviceTypeRevision = v5->_deviceTypeRevision;
  v5->_deviceTypeRevision = v8;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[NSNumber unsignedLongLongValue](self->_deviceTypeID forKey:{"unsignedLongLongValue"), @"ty"}];
  [v4 encodeInteger:-[NSNumber unsignedIntegerValue](self->_deviceTypeRevision forKey:{"unsignedIntegerValue"), @"re"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    deviceTypeID = self->_deviceTypeID;
    v9 = [v7 deviceTypeID];
    if ([(NSNumber *)deviceTypeID isEqual:v9])
    {
      deviceTypeRevision = self->_deviceTypeRevision;
      v11 = [v7 deviceTypeRevision];
      v6 = [(NSNumber *)deviceTypeRevision isEqual:v11];
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
  v5 = [(NSNumber *)self->_deviceTypeID unsignedIntValue];
  v6 = [(MTRDeviceTypeRevision *)self typeInformation];
  v7 = [v6 name];
  v8 = [(NSNumber *)self->_deviceTypeRevision unsignedIntValue];
  v9 = @"???";
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v3 stringWithFormat:@"<%@ 0x%x (%@) rev %d>", v4, v5, v9, v8];

  return v10;
}

@end