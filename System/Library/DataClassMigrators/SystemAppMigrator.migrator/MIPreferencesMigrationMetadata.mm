@interface MIPreferencesMigrationMetadata
- (MIPreferencesMigrationMetadata)initWithSourceBundleID:(id)d destinationBundleID:(id)iD keyMappings:(id)mappings completion:(id)completion;
@end

@implementation MIPreferencesMigrationMetadata

- (MIPreferencesMigrationMetadata)initWithSourceBundleID:(id)d destinationBundleID:(id)iD keyMappings:(id)mappings completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  mappingsCopy = mappings;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = MIPreferencesMigrationMetadata;
  v15 = [(MIPreferencesMigrationMetadata *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sourceBundleID, d);
    objc_storeStrong(&v16->_destinationBundleID, iD);
    objc_storeStrong(&v16->_keyMappings, mappings);
    v17 = objc_retainBlock(completionCopy);
    completion = v16->_completion;
    v16->_completion = v17;
  }

  return v16;
}

@end