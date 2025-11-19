@interface EKNotificationCollectionOptions
- (EKNotificationCollectionOptions)initWithExternalID:(id)a3 externalIDTag:(id)a4 inSource:(id)a5;
- (id)description;
@end

@implementation EKNotificationCollectionOptions

- (EKNotificationCollectionOptions)initWithExternalID:(id)a3 externalIDTag:(id)a4 inSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EKNotificationCollectionOptions;
  v12 = [(EKNotificationCollectionOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_externalID, a3);
    objc_storeStrong(&v13->_externalIDTag, a4);
    objc_storeStrong(&v13->_source, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKNotificationCollectionOptions *)self externalID];
  v6 = [(EKNotificationCollectionOptions *)self externalIDTag];
  v7 = [(EKNotificationCollectionOptions *)self source];
  v8 = [v3 stringWithFormat:@"<%@: %p>(externalID = %@, externalIDTag = %@, source = %@)", v4, self, v5, v6, v7];

  return v8;
}

@end