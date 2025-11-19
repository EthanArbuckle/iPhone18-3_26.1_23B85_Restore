@interface ANAnnouncementDataItem
+ (id)strictSecureDecodeFromData:(id)a3;
+ (id)strictSecureDecodeFromData:(id)a3 classList:(id)a4 decodingFailurePolicy:(int64_t)a5;
- (ANAnnouncementDataItem)init;
- (ANAnnouncementDataItem)initWithCoder:(id)a3;
- (ANAnnouncementDataItem)initWithData:(id)a3 type:(unint64_t)a4;
- (ANAnnouncementDataItem)initWithMessage:(id)a3;
- (NSDictionary)info;
- (NSString)description;
- (id)_stringForDataType:(unint64_t)a3;
- (id)copy;
- (id)message;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementDataItem

- (ANAnnouncementDataItem)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementDataItem;
  return [(ANAnnouncementDataItem *)&v3 init];
}

- (ANAnnouncementDataItem)initWithData:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v8 = [(ANAnnouncementDataItem *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_data, a3);
    v9->_type = a4;
    v9->_flags = 0;
  }

  return v9;
}

+ (id)strictSecureDecodeFromData:(id)a3
{
  v3 = MEMORY[0x277CBEBF8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = a3;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v9 = [ANAnnouncementDataItem strictSecureDecodeFromData:v5 classList:v8 decodingFailurePolicy:1];

    if (v9)
    {
      v3 = v9;
    }
  }

  return v3;
}

+ (id)strictSecureDecodeFromData:(id)a3 classList:(id)a4 decodingFailurePolicy:(int64_t)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CCAAC8];
  v9 = a3;
  v20 = 0;
  v10 = [[v8 alloc] initForReadingFromData:v9 error:&v20];

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
  [v10 setDecodingFailurePolicy:a5];
  v14 = *MEMORY[0x277CCA308];
  v19 = 0;
  v13 = [v10 decodeTopLevelObjectOfClasses:v7 forKey:v14 error:&v19];
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
  v4 = [(ANAnnouncementDataItem *)self data];
  v5 = v3[2];
  v3[2] = v4;

  v3[1] = [(ANAnnouncementDataItem *)self type];
  v3[3] = [(ANAnnouncementDataItem *)self flags];
  return v3;
}

- (NSDictionary)info
{
  v3 = objc_opt_new();
  v4 = [(ANAnnouncementDataItem *)self _stringForDataType:[(ANAnnouncementDataItem *)self type]];
  [v3 setValue:v4 forKey:@"DataType"];

  v5 = [(ANAnnouncementDataItem *)self data];
  [v3 setValue:v5 forKey:@"Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [v3 setValue:v6 forKey:@"Flags"];

  return v3;
}

- (NSString)description
{
  v2 = [(ANAnnouncementDataItem *)self info];
  v3 = [v2 description];

  return v3;
}

- (ANAnnouncementDataItem)initWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnouncementDataItem *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"DataType"];
    v7 = v6;
    if (v6)
    {
      v6 = [v6 unsignedIntegerValue];
    }

    v5->_type = v6;
    v8 = [v4 objectForKey:@"Data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 objectForKey:@"Flags"];
    v11 = v10;
    if (v10)
    {
      v10 = [v10 unsignedIntegerValue];
    }

    v5->_flags = v10;
  }

  return v5;
}

- (id)message
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem type](self, "type")}];
  [v3 setValue:v4 forKey:@"DataType"];

  v5 = [(ANAnnouncementDataItem *)self data];
  [v3 setValue:v5 forKey:@"Data"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [v3 setValue:v6 forKey:@"Flags"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[ANAnnouncementDataItem type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"DataType"];

  v7 = [(ANAnnouncementDataItem *)self data];
  [v5 encodeObject:v7 forKey:@"Data"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANAnnouncementDataItem flags](self, "flags")}];
  [v5 encodeObject:v8 forKey:@"Flags"];
}

- (ANAnnouncementDataItem)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ANAnnouncementDataItem;
  v5 = [(ANAnnouncementDataItem *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Data"];
    data = v5->_data;
    v5->_data = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataType"];
    v12 = v11;
    if (v11)
    {
      v11 = [v11 unsignedIntegerValue];
    }

    v5->_type = v11;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Flags"];
    v14 = v13;
    if (v13)
    {
      v13 = [v13 unsignedIntegerValue];
    }

    v5->_flags = v13;
  }

  return v5;
}

- (id)_stringForDataType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E2290[a3];
  }
}

@end