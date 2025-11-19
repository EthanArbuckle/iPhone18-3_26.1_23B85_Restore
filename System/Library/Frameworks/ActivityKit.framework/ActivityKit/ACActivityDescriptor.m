@interface ACActivityDescriptor
- (ACActivityDescriptor)initWithIdentifier:(id)a3 sceneTargets:(id)a4 alertSceneTargets:(id)a5 presentationOptions:(id)a6 isEphemeral:(BOOL)a7 isMomentary:(BOOL)a8 isImportant:(BOOL)a9 createdDate:(id)a10 descriptorData:(id)a11 contentTypesByDestination:(id)a12 alertContentTypesByDestination:(id)a13 remoteDeviceIdentifier:(id)a14 localizedAppName:(id)a15 protectionClass:(int64_t)a16;
- (NSString)platterTargetBundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)alertContentTypeForDestination:(id)a3;
- (int64_t)contentTypeForDestination:(id)a3;
@end

@implementation ACActivityDescriptor

- (NSString)platterTargetBundleIdentifier
{
  v3 = [[ACActivityPresentationDestination alloc] initWithDestination:0];
  v4 = [(NSDictionary *)self->_sceneTargetBundleIdentifiers objectForKeyedSubscript:v3];

  return v4;
}

- (ACActivityDescriptor)initWithIdentifier:(id)a3 sceneTargets:(id)a4 alertSceneTargets:(id)a5 presentationOptions:(id)a6 isEphemeral:(BOOL)a7 isMomentary:(BOOL)a8 isImportant:(BOOL)a9 createdDate:(id)a10 descriptorData:(id)a11 contentTypesByDestination:(id)a12 alertContentTypesByDestination:(id)a13 remoteDeviceIdentifier:(id)a14 localizedAppName:(id)a15 protectionClass:(int64_t)a16
{
  v58 = a3;
  v57 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v59.receiver = self;
  v59.super_class = ACActivityDescriptor;
  v28 = [(ACActivityDescriptor *)&v59 init];
  if (v28)
  {
    v56 = v23;
    v29 = v22;
    v30 = v21;
    v31 = [[ACActivityPresentationDestination alloc] initWithDestination:0];
    v32 = [v58 copy];
    activityIdentifier = v28->_activityIdentifier;
    v28->_activityIdentifier = v32;

    v34 = [v57 copy];
    sceneTargetBundleIdentifiers = v28->_sceneTargetBundleIdentifiers;
    v28->_sceneTargetBundleIdentifiers = v34;

    v36 = [v20 copy];
    alertSceneTargetBundleIdentifiers = v28->_alertSceneTargetBundleIdentifiers;
    v28->_alertSceneTargetBundleIdentifiers = v36;

    v38 = [v21 copy];
    presentationOptions = v28->_presentationOptions;
    v28->_presentationOptions = v38;

    v28->_isEphemeral = a7;
    v28->_isMomentary = a8;
    v28->_isImportant = a9;
    v40 = [v29 copy];
    createdDate = v28->_createdDate;
    v28->_createdDate = v40;

    v42 = [v56 copy];
    descriptorData = v28->_descriptorData;
    v28->_descriptorData = v42;

    v44 = [v24 copy];
    contentTypesByDestination = v28->_contentTypesByDestination;
    v28->_contentTypesByDestination = v44;

    v46 = [v25 copy];
    alertContentTypesByDestination = v28->_alertContentTypesByDestination;
    v28->_alertContentTypesByDestination = v46;

    v48 = [v26 copy];
    remoteDeviceIdentifier = v28->_remoteDeviceIdentifier;
    v28->_remoteDeviceIdentifier = v48;

    v50 = [v27 copy];
    localizedAppName = v28->_localizedAppName;
    v28->_localizedAppName = v50;

    v28->_protectionClass = a16;
    v52 = [v24 objectForKeyedSubscript:v31];
    v28->_contentType = [v52 integerValue];

    v21 = v30;
    v22 = v29;
    v23 = v56;
  }

  return v28;
}

- (int64_t)contentTypeForDestination:(id)a3
{
  v3 = [(NSDictionary *)self->_contentTypesByDestination objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)alertContentTypeForDestination:(id)a3
{
  v3 = [(NSDictionary *)self->_alertContentTypesByDestination objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [ACActivityDescriptor alloc];
  v19 = [(ACActivityDescriptor *)self activityIdentifier];
  v18 = [(ACActivityDescriptor *)self sceneTargetBundleIdentifiers];
  v17 = [(ACActivityDescriptor *)self alertSceneTargetBundleIdentifiers];
  v4 = [(ACActivityDescriptor *)self presentationOptions];
  v16 = [(ACActivityDescriptor *)self isEphemeral];
  v5 = [(ACActivityDescriptor *)self isMomentary];
  v6 = [(ACActivityDescriptor *)self isImportant];
  v7 = [(ACActivityDescriptor *)self createdDate];
  v8 = [(ACActivityDescriptor *)self descriptorData];
  contentTypesByDestination = self->_contentTypesByDestination;
  alertContentTypesByDestination = self->_alertContentTypesByDestination;
  v11 = [(ACActivityDescriptor *)self remoteDeviceIdentifier];
  v12 = [(ACActivityDescriptor *)self localizedAppName];
  LOBYTE(v15) = v6;
  v13 = [(ACActivityDescriptor *)v20 initWithIdentifier:v19 sceneTargets:v18 alertSceneTargets:v17 presentationOptions:v4 isEphemeral:v16 isMomentary:v5 isImportant:v15 createdDate:v7 descriptorData:v8 contentTypesByDestination:contentTypesByDestination alertContentTypesByDestination:alertContentTypesByDestination remoteDeviceIdentifier:v11 localizedAppName:v12 protectionClass:[(ACActivityDescriptor *)self protectionClass]];

  return v13;
}

@end