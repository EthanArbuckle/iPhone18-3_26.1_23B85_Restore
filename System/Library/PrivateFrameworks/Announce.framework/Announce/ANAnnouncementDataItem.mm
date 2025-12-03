@interface ANAnnouncementDataItem
+ (id)strictSecureDecodeFromData:(id)data;
+ (id)strictSecureDecodeFromData:(id)data classList:(id)list decodingFailurePolicy:(int64_t)policy;
- (ANAnnouncementDataItem)init;
- (ANAnnouncementDataItem)initWithCoder:(id)coder;
- (ANAnnouncementDataItem)initWithData:(id)data type:(unint64_t)type;
- (ANAnnouncementDataItem)initWithMessage:(id)message;
- (NSDictionary)info;
- (NSString)description;
- (id)_stringForDataType:(unint64_t)type;
- (id)copy;
- (id)message;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementDataItem

- (ANAnnouncementDataItem)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementDataItem;
  return [(ANAnnouncementDataItem *)&v3 init];
}

- (ANAnnouncementDataItem)initWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v8 = [(ANAnnouncementDataItem *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, data);
    v9->_type = type;
    v9->_flags = 0;
  }

  return v9;
}

+ (id)strictSecureDecodeFromData:(id)data
{
  v3 = MEMORY[0x277CBEBF8];
  if (data)
  {
    v4 = MEMORY[0x277CBEB98];
    dataCopy = data;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v9 = [ANAnnouncementDataItem strictSecureDecodeFromData:dataCopy classList:v8 decodingFailurePolicy:1];

    if (v9)
    {
      v3 = v9;
    }
  }

  return v3;
}

+ (id)strictSecureDecodeFromData:(id)data classList:(id)list decodingFailurePolicy:(int64_t)policy
{
  v25 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v8 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v20 = 0;
  v10 = [[v8 alloc] initForReadingFromData:dataCopy error:&v20];

  v11 = v20;
  if (v11)
  {
    v12 = v11;
    v13 = ANLogHandleAnnouncementDataItem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = &stru_2836DAA20;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_2237C8000, v13, OS_LOG_TYPE_ERROR, "%@Failed to init unarchiver for reading AnnouncementDataItems. error = %@", buf, 0x16u);
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  [v10 _enableStrictSecureDecodingMode];
  [v10 setDecodingFailurePolicy:policy];
  v14 = *MEMORY[0x277CCA308];
  v19 = 0;
  v13 = [v10 decodeTopLevelObjectOfClasses:listCopy forKey:v14 error:&v19];
  v12 = v19;
  if (v12)
  {
    v15 = ANLogHandleAnnouncementDataItem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = &stru_2836DAA20;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_2237C8000, v15, OS_LOG_TYPE_ERROR, "%@Failed to unarchive data for AnnouncementDataItems. error = %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = v13;
  v16 = v13;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)copy
{
  v3 = objc_opt_new();
  data = [(ANAnnouncementDataItem *)self data];
  v5 = v3[2];
  v3[2] = data;

  v3[1] = [(ANAnnouncementDataItem *)self type];
  v3[3] = [(ANAnnouncementDataItem *)self flags];
  return v3;
}

- (NSDictionary)info
{
  v3 = objc_opt_new();
  v4 = [(ANAnnouncementDataItem *)self _stringForDataType:[(ANAnnouncementDataItem *)self type]];
  [v3 setValue:v4 forKey:@"DataType"];

  data = [(ANAnnouncementDataItem *)self data];
  [v3 setValue:data forKey:@"Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [v3 setValue:v6 forKey:@"Flags"];

  return v3;
}

- (NSString)description
{
  info = [(ANAnnouncementDataItem *)self info];
  v3 = [info description];

  return v3;
}

- (ANAnnouncementDataItem)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = [(ANAnnouncementDataItem *)self init];
  if (v5)
  {
    unsignedIntegerValue = [messageCopy objectForKey:@"DataType"];
    v7 = unsignedIntegerValue;
    if (unsignedIntegerValue)
    {
      unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    }

    v5->_type = unsignedIntegerValue;
    v8 = [messageCopy objectForKey:@"Data"];
    data = v5->_data;
    v5->_data = v8;

    unsignedIntegerValue2 = [messageCopy objectForKey:@"Flags"];
    v11 = unsignedIntegerValue2;
    if (unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = [unsignedIntegerValue2 unsignedIntegerValue];
    }

    v5->_flags = unsignedIntegerValue2;
  }

  return v5;
}

- (id)message
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem type](self, "type")}];
  [v3 setValue:v4 forKey:@"DataType"];

  data = [(ANAnnouncementDataItem *)self data];
  [v3 setValue:data forKey:@"Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [v3 setValue:v6 forKey:@"Flags"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[ANAnnouncementDataItem type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"DataType"];

  data = [(ANAnnouncementDataItem *)self data];
  [coderCopy encodeObject:data forKey:@"Data"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [coderCopy encodeObject:v8 forKey:@"Flags"];
}

- (ANAnnouncementDataItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ANAnnouncementDataItem;
  v5 = [(ANAnnouncementDataItem *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Data"];
    data = v5->_data;
    v5->_data = v9;

    unsignedIntegerValue = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataType"];
    v12 = unsignedIntegerValue;
    if (unsignedIntegerValue)
    {
      unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    }

    v5->_type = unsignedIntegerValue;
    unsignedIntegerValue2 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Flags"];
    v14 = unsignedIntegerValue2;
    if (unsignedIntegerValue2)
    {
      unsignedIntegerValue2 = [unsignedIntegerValue2 unsignedIntegerValue];
    }

    v5->_flags = unsignedIntegerValue2;
  }

  return v5;
}

- (id)_stringForDataType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E2290[type];
  }
}

@end