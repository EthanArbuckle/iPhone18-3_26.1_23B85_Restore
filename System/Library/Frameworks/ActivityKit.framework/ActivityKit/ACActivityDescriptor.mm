@interface ACActivityDescriptor
- (ACActivityDescriptor)initWithIdentifier:(id)identifier sceneTargets:(id)targets alertSceneTargets:(id)sceneTargets presentationOptions:(id)options isEphemeral:(BOOL)ephemeral isMomentary:(BOOL)momentary isImportant:(BOOL)important createdDate:(id)self0 descriptorData:(id)self1 contentTypesByDestination:(id)self2 alertContentTypesByDestination:(id)self3 remoteDeviceIdentifier:(id)self4 localizedAppName:(id)self5 protectionClass:(int64_t)self6;
- (NSString)platterTargetBundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)alertContentTypeForDestination:(id)destination;
- (int64_t)contentTypeForDestination:(id)destination;
@end

@implementation ACActivityDescriptor

- (NSString)platterTargetBundleIdentifier
{
  v3 = [[ACActivityPresentationDestination alloc] initWithDestination:0];
  v4 = [(NSDictionary *)self->_sceneTargetBundleIdentifiers objectForKeyedSubscript:v3];

  return v4;
}

- (ACActivityDescriptor)initWithIdentifier:(id)identifier sceneTargets:(id)targets alertSceneTargets:(id)sceneTargets presentationOptions:(id)options isEphemeral:(BOOL)ephemeral isMomentary:(BOOL)momentary isImportant:(BOOL)important createdDate:(id)self0 descriptorData:(id)self1 contentTypesByDestination:(id)self2 alertContentTypesByDestination:(id)self3 remoteDeviceIdentifier:(id)self4 localizedAppName:(id)self5 protectionClass:(int64_t)self6
{
  identifierCopy = identifier;
  targetsCopy = targets;
  sceneTargetsCopy = sceneTargets;
  optionsCopy = options;
  dateCopy = date;
  dataCopy = data;
  destinationCopy = destination;
  byDestinationCopy = byDestination;
  deviceIdentifierCopy = deviceIdentifier;
  nameCopy = name;
  v59.receiver = self;
  v59.super_class = ACActivityDescriptor;
  v28 = [(ACActivityDescriptor *)&v59 init];
  if (v28)
  {
    v56 = dataCopy;
    v29 = dateCopy;
    v30 = optionsCopy;
    v31 = [[ACActivityPresentationDestination alloc] initWithDestination:0];
    v32 = [identifierCopy copy];
    activityIdentifier = v28->_activityIdentifier;
    v28->_activityIdentifier = v32;

    v34 = [targetsCopy copy];
    sceneTargetBundleIdentifiers = v28->_sceneTargetBundleIdentifiers;
    v28->_sceneTargetBundleIdentifiers = v34;

    v36 = [sceneTargetsCopy copy];
    alertSceneTargetBundleIdentifiers = v28->_alertSceneTargetBundleIdentifiers;
    v28->_alertSceneTargetBundleIdentifiers = v36;

    v38 = [optionsCopy copy];
    presentationOptions = v28->_presentationOptions;
    v28->_presentationOptions = v38;

    v28->_isEphemeral = ephemeral;
    v28->_isMomentary = momentary;
    v28->_isImportant = important;
    v40 = [v29 copy];
    createdDate = v28->_createdDate;
    v28->_createdDate = v40;

    v42 = [v56 copy];
    descriptorData = v28->_descriptorData;
    v28->_descriptorData = v42;

    v44 = [destinationCopy copy];
    contentTypesByDestination = v28->_contentTypesByDestination;
    v28->_contentTypesByDestination = v44;

    v46 = [byDestinationCopy copy];
    alertContentTypesByDestination = v28->_alertContentTypesByDestination;
    v28->_alertContentTypesByDestination = v46;

    v48 = [deviceIdentifierCopy copy];
    remoteDeviceIdentifier = v28->_remoteDeviceIdentifier;
    v28->_remoteDeviceIdentifier = v48;

    v50 = [nameCopy copy];
    localizedAppName = v28->_localizedAppName;
    v28->_localizedAppName = v50;

    v28->_protectionClass = class;
    v52 = [destinationCopy objectForKeyedSubscript:v31];
    v28->_contentType = [v52 integerValue];

    optionsCopy = v30;
    dateCopy = v29;
    dataCopy = v56;
  }

  return v28;
}

- (int64_t)contentTypeForDestination:(id)destination
{
  v3 = [(NSDictionary *)self->_contentTypesByDestination objectForKeyedSubscript:destination];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)alertContentTypeForDestination:(id)destination
{
  v3 = [(NSDictionary *)self->_alertContentTypesByDestination objectForKeyedSubscript:destination];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [ACActivityDescriptor alloc];
  activityIdentifier = [(ACActivityDescriptor *)self activityIdentifier];
  sceneTargetBundleIdentifiers = [(ACActivityDescriptor *)self sceneTargetBundleIdentifiers];
  alertSceneTargetBundleIdentifiers = [(ACActivityDescriptor *)self alertSceneTargetBundleIdentifiers];
  presentationOptions = [(ACActivityDescriptor *)self presentationOptions];
  isEphemeral = [(ACActivityDescriptor *)self isEphemeral];
  isMomentary = [(ACActivityDescriptor *)self isMomentary];
  isImportant = [(ACActivityDescriptor *)self isImportant];
  createdDate = [(ACActivityDescriptor *)self createdDate];
  descriptorData = [(ACActivityDescriptor *)self descriptorData];
  contentTypesByDestination = self->_contentTypesByDestination;
  alertContentTypesByDestination = self->_alertContentTypesByDestination;
  remoteDeviceIdentifier = [(ACActivityDescriptor *)self remoteDeviceIdentifier];
  localizedAppName = [(ACActivityDescriptor *)self localizedAppName];
  LOBYTE(v15) = isImportant;
  v13 = [(ACActivityDescriptor *)v20 initWithIdentifier:activityIdentifier sceneTargets:sceneTargetBundleIdentifiers alertSceneTargets:alertSceneTargetBundleIdentifiers presentationOptions:presentationOptions isEphemeral:isEphemeral isMomentary:isMomentary isImportant:v15 createdDate:createdDate descriptorData:descriptorData contentTypesByDestination:contentTypesByDestination alertContentTypesByDestination:alertContentTypesByDestination remoteDeviceIdentifier:remoteDeviceIdentifier localizedAppName:localizedAppName protectionClass:[(ACActivityDescriptor *)self protectionClass]];

  return v13;
}

@end