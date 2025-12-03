@interface PHPublicEventInfo
- (BOOL)isEqual:(id)equal;
- (PHPublicEventInfo)initWithCoder:(id)coder;
- (PHPublicEventInfo)initWithEventID:(id)d eventTitle:(id)title eventCategory:(int)category;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHPublicEventInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventID hash];
  v4 = [(NSString *)self->_eventTitle hash];
  return self->_eventCategory - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventID = [(PHPublicEventInfo *)v5 eventID];
      if ([eventID isEqualToString:self->_eventID])
      {
        eventTitle = [(PHPublicEventInfo *)v5 eventTitle];
        if ([eventTitle isEqualToString:self->_eventTitle])
        {
          v8 = [(PHPublicEventInfo *)v5 eventCategory]== self->_eventCategory;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeObject:eventID forKey:@"eventID"];
  [coderCopy encodeObject:self->_eventTitle forKey:@"eventTitle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventCategory];
  [coderCopy encodeObject:v6 forKey:@"category"];
}

- (PHPublicEventInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventTitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];

  v8 = [v7 intValue] - 1;
  if (v8 > 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_19CB29B3C[v8];
  }

  v10 = [(PHPublicEventInfo *)self initWithEventID:v5 eventTitle:v6 eventCategory:v9];

  return v10;
}

- (PHPublicEventInfo)initWithEventID:(id)d eventTitle:(id)title eventCategory:(int)category
{
  dCopy = d;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = PHPublicEventInfo;
  v11 = [(PHPublicEventInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventID, d);
    objc_storeStrong(&v12->_eventTitle, title);
    v12->_eventCategory = category;
  }

  return v12;
}

@end