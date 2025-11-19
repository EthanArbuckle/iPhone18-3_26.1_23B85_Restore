@interface Bulletin
- (BOOL)isEqual:(id)a3;
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
    v6 = [v5 UUIDString];
    recordID = v2->_recordID;
    v2->_recordID = v6;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    if (self)
    {
      recordID = self->_recordID;
      if (v4)
      {
LABEL_5:
        v8 = v4[7];
LABEL_6:
        v9 = recordID;
        v6 = [(NSString *)v9 isEqualToString:v8];

        goto LABEL_7;
      }
    }

    else
    {
      recordID = 0;
      if (v4)
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