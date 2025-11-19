@interface PHPublicEventInfo
- (BOOL)isEqual:(id)a3;
- (PHPublicEventInfo)initWithCoder:(id)a3;
- (PHPublicEventInfo)initWithEventID:(id)a3 eventTitle:(id)a4 eventCategory:(int)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHPublicEventInfo

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventID hash];
  v4 = [(NSString *)self->_eventTitle hash];
  return self->_eventCategory - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHPublicEventInfo *)v5 eventID];
      if ([v6 isEqualToString:self->_eventID])
      {
        v7 = [(PHPublicEventInfo *)v5 eventTitle];
        if ([v7 isEqualToString:self->_eventTitle])
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

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeObject:eventID forKey:@"eventID"];
  [v5 encodeObject:self->_eventTitle forKey:@"eventTitle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventCategory];
  [v5 encodeObject:v6 forKey:@"category"];
}

- (PHPublicEventInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventTitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];

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

- (PHPublicEventInfo)initWithEventID:(id)a3 eventTitle:(id)a4 eventCategory:(int)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PHPublicEventInfo;
  v11 = [(PHPublicEventInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventID, a3);
    objc_storeStrong(&v12->_eventTitle, a4);
    v12->_eventCategory = a5;
  }

  return v12;
}

@end