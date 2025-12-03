@interface ATXNotificationsInterface
+ (id)createArchivedMetadata:(id)metadata categoryId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message numSuppActions:(id)actions feed:(unint64_t)feed;
+ (id)getBundleIdFromMetadata:(id)metadata;
+ (id)getNumSuppActionsFromMetadata:(id)metadata;
+ (id)getTimezoneFromMetadata:(id)metadata;
+ (id)getTopicFromMetadata:(id)metadata;
+ (unint64_t)getFeedFromMetadata:(id)metadata;
+ (void)stripContentInMetadata:(id)metadata;
- (ATXNotificationsInterface)initWithCoder:(id)coder;
- (id)extractMetadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationsInterface

- (id)extractMetadata
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numSuppActions];
  v4 = [ATXNotificationsInterface createArchivedMetadata:self->_sectionID categoryId:self->_topic title:self->_title subtitle:self->_subtitle message:self->_message numSuppActions:v3 feed:self->_feed];

  return v4;
}

+ (id)createArchivedMetadata:(id)metadata categoryId:(id)id title:(id)title subtitle:(id)subtitle message:(id)message numSuppActions:(id)actions feed:(unint64_t)feed
{
  metadataCopy = metadata;
  idCopy = id;
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  actionsCopy = actions;
  v20 = objc_opt_new();
  v21 = v20;
  if (metadataCopy)
  {
    [v20 setObject:metadataCopy forKeyedSubscript:@"appName"];
  }

  if (idCopy)
  {
    [v21 setObject:idCopy forKeyedSubscript:@"categoryID"];
  }

  if (titleCopy)
  {
    [v21 setObject:titleCopy forKeyedSubscript:@"title"];
  }

  if (subtitleCopy)
  {
    [v21 setObject:subtitleCopy forKeyedSubscript:@"subtitle"];
  }

  if (messageCopy)
  {
    [v21 setObject:messageCopy forKeyedSubscript:@"message"];
  }

  if (actionsCopy)
  {
    [v21 setObject:actionsCopy forKeyedSubscript:@"numSuppActions"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:feed];
  [v21 setObject:v22 forKeyedSubscript:@"feed"];

  v23 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v25 = [v23 numberWithInteger:{objc_msgSend(localTimeZone, "secondsFromGMT")}];
  [v21 setObject:v25 forKeyedSubscript:@"tz"];

  return v21;
}

+ (void)stripContentInMetadata:(id)metadata
{
  metadataCopy = metadata;
  [metadataCopy removeObjectForKey:@"title"];
  [metadataCopy removeObjectForKey:@"subtitle"];
  [metadataCopy removeObjectForKey:@"message"];
}

+ (id)getBundleIdFromMetadata:(id)metadata
{
  v3 = [metadata objectForKeyedSubscript:@"appName"];
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

+ (id)getTopicFromMetadata:(id)metadata
{
  v3 = [metadata objectForKeyedSubscript:@"categoryID"];
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

+ (id)getNumSuppActionsFromMetadata:(id)metadata
{
  v3 = [metadata objectForKeyedSubscript:@"numSuppActions"];
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

+ (id)getTimezoneFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [metadataCopy objectForKeyedSubscript:@"tz"];
  if (v4 && (v5 = v4, [metadataCopy objectForKeyedSubscript:@"tz"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [metadataCopy objectForKeyedSubscript:@"tz"];
  }

  else
  {
    v9 = MEMORY[0x277CCABB0];
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    v8 = [v9 numberWithInteger:{objc_msgSend(localTimeZone, "secondsFromGMT")}];
  }

  return v8;
}

+ (unint64_t)getFeedFromMetadata:(id)metadata
{
  v3 = [metadata objectForKeyedSubscript:@"feed"];
  v4 = v3;
  v5 = &unk_2851FE4E0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)encodeWithCoder:(id)coder
{
  sectionID = self->_sectionID;
  coderCopy = coder;
  [coderCopy encodeObject:sectionID forKey:@"appName"];
  [coderCopy encodeObject:self->_topic forKey:@"categoryID"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_publicationDate forKey:@"pubdate"];
  [coderCopy encodeInteger:self->_numSuppActions forKey:@"numSuppActions"];
  [coderCopy encodeInteger:self->_feed forKey:@"feed"];
}

- (ATXNotificationsInterface)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ATXNotificationsInterface;
  v5 = [(ATXNotificationsInterface *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    sectionID = v5->_sectionID;
    v5->_sectionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryID"];
    topic = v5->_topic;
    v5->_topic = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pubdate"];
    publicationDate = v5->_publicationDate;
    v5->_publicationDate = v16;

    v5->_numSuppActions = [coderCopy decodeIntegerForKey:@"numSuppActions"];
    v5->_feed = [coderCopy decodeIntegerForKey:@"feed"];
  }

  return v5;
}

@end