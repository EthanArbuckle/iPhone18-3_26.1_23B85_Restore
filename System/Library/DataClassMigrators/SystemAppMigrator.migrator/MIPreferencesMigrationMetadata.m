@interface MIPreferencesMigrationMetadata
- (MIPreferencesMigrationMetadata)initWithSourceBundleID:(id)a3 destinationBundleID:(id)a4 keyMappings:(id)a5 completion:(id)a6;
@end

@implementation MIPreferencesMigrationMetadata

- (MIPreferencesMigrationMetadata)initWithSourceBundleID:(id)a3 destinationBundleID:(id)a4 keyMappings:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = MIPreferencesMigrationMetadata;
  v15 = [(MIPreferencesMigrationMetadata *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceBundleID, a3);
    objc_storeStrong(&v16->_destinationBundleID, a4);
    objc_storeStrong(&v16->_keyMappings, a5);
    v17 = objc_retainBlock(v14);
    completion = v16->_completion;
    v16->_completion = v17;
  }

  return v16;
}

@end