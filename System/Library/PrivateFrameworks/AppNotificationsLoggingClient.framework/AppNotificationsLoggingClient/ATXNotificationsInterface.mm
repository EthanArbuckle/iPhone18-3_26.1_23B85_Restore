@interface ATXNotificationsInterface
+ (id)createArchivedMetadata:(id)a3 categoryId:(id)a4 title:(id)a5 subtitle:(id)a6 message:(id)a7 numSuppActions:(id)a8 feed:(unint64_t)a9;
+ (id)getBundleIdFromMetadata:(id)a3;
+ (id)getNumSuppActionsFromMetadata:(id)a3;
+ (id)getTimezoneFromMetadata:(id)a3;
+ (id)getTopicFromMetadata:(id)a3;
+ (unint64_t)getFeedFromMetadata:(id)a3;
+ (void)stripContentInMetadata:(id)a3;
- (ATXNotificationsInterface)initWithCoder:(id)a3;
- (id)extractMetadata;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationsInterface

- (id)extractMetadata
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numSuppActions];
  v4 = [ATXNotificationsInterface createArchivedMetadata:self->_sectionID categoryId:self->_topic title:self->_title subtitle:self->_subtitle message:self->_message numSuppActions:v3 feed:self->_feed];

  return v4;
}

+ (id)createArchivedMetadata:(id)a3 categoryId:(id)a4 title:(id)a5 subtitle:(id)a6 message:(id)a7 numSuppActions:(id)a8 feed:(unint64_t)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_opt_new();
  v21 = v20;
  if (v14)
  {
    [v20 setObject:v14 forKeyedSubscript:@"appName"];
  }

  if (v15)
  {
    [v21 setObject:v15 forKeyedSubscript:@"categoryID"];
  }

  if (v16)
  {
    [v21 setObject:v16 forKeyedSubscript:@"title"];
  }

  if (v17)
  {
    [v21 setObject:v17 forKeyedSubscript:@"subtitle"];
  }

  if (v18)
  {
    [v21 setObject:v18 forKeyedSubscript:@"message"];
  }

  if (v19)
  {
    [v21 setObject:v19 forKeyedSubscript:@"numSuppActions"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a9];
  [v21 setObject:v22 forKeyedSubscript:@"feed"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [MEMORY[0x277CBEBB0] localTimeZone];
  v25 = [v23 numberWithInteger:{objc_msgSend(v24, "secondsFromGMT")}];
  [v21 setObject:v25 forKeyedSubscript:@"tz"];

  return v21;
}

+ (void)stripContentInMetadata:(id)a3
{
  v3 = a3;
  [v3 removeObjectForKey:@"title"];
  [v3 removeObjectForKey:@"subtitle"];
  [v3 removeObjectForKey:@"message"];
}

+ (id)getBundleIdFromMetadata:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"appName"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

+ (id)getTopicFromMetadata:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"categoryID"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

+ (id)getNumSuppActionsFromMetadata:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"numSuppActions"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_2851FE4E0;
  }

  v6 = v5;

  return v5;
}

+ (id)getTimezoneFromMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"tz"];
  if (v4 && (v5 = v4, [v3 objectForKeyedSubscript:@"tz"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [v3 objectForKeyedSubscript:@"tz"];
  }

  else
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [MEMORY[0x277CBEBB0] localTimeZone];
    v8 = [v9 numberWithInteger:{objc_msgSend(v10, "secondsFromGMT")}];
  }

  return v8;
}

+ (unint64_t)getFeedFromMetadata:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"feed"];
  v4 = v3;
  v5 = &unk_2851FE4E0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 unsignedIntegerValue];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  sectionID = self->_sectionID;
  v5 = a3;
  [v5 encodeObject:sectionID forKey:@"appName"];
  [v5 encodeObject:self->_topic forKey:@"categoryID"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_publicationDate forKey:@"pubdate"];
  [v5 encodeInteger:self->_numSuppActions forKey:@"numSuppActions"];
  [v5 encodeInteger:self->_feed forKey:@"feed"];
}

- (ATXNotificationsInterface)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ATXNotificationsInterface;
  v5 = [(ATXNotificationsInterface *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    sectionID = v5->_sectionID;
    v5->_sectionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryID"];
    topic = v5->_topic;
    v5->_topic = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pubdate"];
    publicationDate = v5->_publicationDate;
    v5->_publicationDate = v16;

    v5->_numSuppActions = [v4 decodeIntegerForKey:@"numSuppActions"];
    v5->_feed = [v4 decodeIntegerForKey:@"feed"];
  }

  return v5;
}

@end