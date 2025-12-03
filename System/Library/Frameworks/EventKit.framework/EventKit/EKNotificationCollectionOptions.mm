@interface EKNotificationCollectionOptions
- (EKNotificationCollectionOptions)initWithExternalID:(id)d externalIDTag:(id)tag inSource:(id)source;
- (id)description;
@end

@implementation EKNotificationCollectionOptions

- (EKNotificationCollectionOptions)initWithExternalID:(id)d externalIDTag:(id)tag inSource:(id)source
{
  dCopy = d;
  tagCopy = tag;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = EKNotificationCollectionOptions;
  v12 = [(EKNotificationCollectionOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_externalID, d);
    objc_storeStrong(&v13->_externalIDTag, tag);
    objc_storeStrong(&v13->_source, source);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  externalID = [(EKNotificationCollectionOptions *)self externalID];
  externalIDTag = [(EKNotificationCollectionOptions *)self externalIDTag];
  source = [(EKNotificationCollectionOptions *)self source];
  v8 = [v3 stringWithFormat:@"<%@: %p>(externalID = %@, externalIDTag = %@, source = %@)", v4, self, externalID, externalIDTag, source];

  return v8;
}

@end