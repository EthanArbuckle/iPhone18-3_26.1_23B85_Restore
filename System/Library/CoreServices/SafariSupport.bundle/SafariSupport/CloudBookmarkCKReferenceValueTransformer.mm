@interface CloudBookmarkCKReferenceValueTransformer
- (CloudBookmarkCKReferenceValueTransformer)initWithCKRecordZoneID:(id)d action:(unint64_t)action;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
- (id)transformerForRecord:(id)record;
@end

@implementation CloudBookmarkCKReferenceValueTransformer

- (CloudBookmarkCKReferenceValueTransformer)initWithCKRecordZoneID:(id)d action:(unint64_t)action
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = CloudBookmarkCKReferenceValueTransformer;
  v8 = [(CloudBookmarkCKReferenceValueTransformer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordZoneID, d);
    v9->_action = action;
    v10 = v9;
  }

  return v9;
}

- (id)transformerForRecord:(id)record
{
  recordID = [record recordID];
  zoneID = [recordID zoneID];

  if ([zoneID isEqual:self->_recordZoneID])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithCKRecordZoneID:zoneID action:self->_action];
  }

  v7 = selfCopy;

  return v7;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
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

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    recordName = 0;
    goto LABEL_10;
  }

  v5 = valueCopy;
  recordID = [v5 recordID];
  zoneID = [recordID zoneID];
  if ([zoneID isEqual:self->_recordZoneID])
  {
    referenceAction = [v5 referenceAction];
    action = self->_action;

    if (referenceAction != action)
    {
      recordName = 0;
      goto LABEL_9;
    }

    recordID = [v5 recordID];
    recordName = [recordID recordName];
  }

  else
  {

    recordName = 0;
  }

LABEL_9:
LABEL_10:

  return recordName;
}

@end