@interface Bulletin
- (BOOL)isEqual:(id)equal;
- (Bulletin)init;
@end

@implementation Bulletin

- (Bulletin)init
{
  v9.receiver = self;
  v9.super_class = Bulletin;
  v2 = [(Bulletin *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSDate);
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;

    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    recordID = v2->_recordID;
    v2->_recordID = uUIDString;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (self)
    {
      recordID = self->_recordID;
      if (equalCopy)
      {
LABEL_5:
        v8 = equalCopy[7];
LABEL_6:
        v9 = recordID;
        v6 = [(NSString *)v9 isEqualToString:v8];

        goto LABEL_7;
      }
    }

    else
    {
      recordID = 0;
      if (equalCopy)
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end