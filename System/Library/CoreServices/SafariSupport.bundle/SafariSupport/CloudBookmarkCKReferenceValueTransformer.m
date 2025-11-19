@interface CloudBookmarkCKReferenceValueTransformer
- (CloudBookmarkCKReferenceValueTransformer)initWithCKRecordZoneID:(id)a3 action:(unint64_t)a4;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
- (id)transformerForRecord:(id)a3;
@end

@implementation CloudBookmarkCKReferenceValueTransformer

- (CloudBookmarkCKReferenceValueTransformer)initWithCKRecordZoneID:(id)a3 action:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CloudBookmarkCKReferenceValueTransformer;
  v8 = [(CloudBookmarkCKReferenceValueTransformer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordZoneID, a3);
    v9->_action = a4;
    v10 = v9;
  }

  return v9;
}

- (id)transformerForRecord:(id)a3
{
  v4 = [a3 recordID];
  v5 = [v4 zoneID];

  if ([v5 isEqual:self->_recordZoneID])
  {
    v6 = self;
  }

  else
  {
    v6 = [objc_alloc(objc_opt_class()) initWithCKRecordZoneID:v5 action:self->_action];
  }

  v7 = v6;

  return v7;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 length])
    {
      v6 = [CKReference alloc];
      v7 = [[CKRecordID alloc] initWithRecordName:v5 zoneID:self->_recordZoneID];
      v8 = [v6 initWithRecordID:v7 action:self->_action];
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

  return v8;
}

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v5 recordID];
  v7 = [v6 zoneID];
  if ([v7 isEqual:self->_recordZoneID])
  {
    v8 = [v5 referenceAction];
    action = self->_action;

    if (v8 != action)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v6 = [v5 recordID];
    v10 = [v6 recordName];
  }

  else
  {

    v10 = 0;
  }

LABEL_9:
LABEL_10:

  return v10;
}

@end