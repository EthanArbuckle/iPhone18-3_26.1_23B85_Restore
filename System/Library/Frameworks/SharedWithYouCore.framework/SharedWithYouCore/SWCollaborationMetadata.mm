@interface SWCollaborationMetadata
+ (SWCollaborationMetadata)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollaborationMetadata:(id)metadata;
- (SWCollaborationMetadata)initWithCoder:(id)coder;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)handle initiatorNameComponents:(id)self0;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type containerSetupInfo:(id)info;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)handle initiatorNameComponents:(id)self0;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)self0 sourceProcessData:(id)self1;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info sourceProcessData:(id)data;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 containerSetupInfo:(id)self2 sourceProcessData:(id)self3;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options defaultOptions:(id)defaultOptions creationDate:(id)date contentType:(id)type initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 ckAppBundleIDs:(id)self2 handleToIdentityMap:(id)self3 containerSetupInfo:(id)self4 sourceProcessData:(id)self5;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_commonInitWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options defaultOptions:(id)defaultOptions creationDate:(id)date contentType:(id)type initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 ckAppBundleIDs:(id)self2 handleToIdentityMap:(id)self3 containerSetupInfo:(id)self4 sourceProcessData:(id)self5;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCollaborationMetadata

+ (SWCollaborationMetadata)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWCollaborationMetadata allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWCollaborationMetadata;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (void)_commonInitWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options defaultOptions:(id)defaultOptions creationDate:(id)date contentType:(id)type initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 ckAppBundleIDs:(id)self2 handleToIdentityMap:(id)self3 containerSetupInfo:(id)self4 sourceProcessData:(id)self5
{
  componentsCopy = components;
  if (identifier)
  {
    dataCopy = data;
    infoCopy = info;
    mapCopy = map;
    dsCopy = ds;
    handleCopy = handle;
    typeCopy = type;
    dateCopy = date;
    defaultOptionsCopy = defaultOptions;
    optionsCopy = options;
    titleCopy = title;
    collaborationIdentifierCopy = collaborationIdentifier;
    v33 = [identifier copy];
    localIdentifier = self->_localIdentifier;
    self->_localIdentifier = v33;
  }

  else
  {
    localIdentifier = self->_localIdentifier;
    self->_localIdentifier = &stru_1F4E16F00;
    dataCopy2 = data;
    infoCopy2 = info;
    mapCopy2 = map;
    dsCopy2 = ds;
    handleCopy2 = handle;
    typeCopy2 = type;
    dateCopy2 = date;
    defaultOptionsCopy2 = defaultOptions;
    optionsCopy2 = options;
    titleCopy2 = title;
    collaborationIdentifierCopy2 = collaborationIdentifier;
  }

  v46 = [collaborationIdentifier copy];
  collaborationIdentifier = self->_collaborationIdentifier;
  self->_collaborationIdentifier = v46;

  v48 = [title copy];
  title = self->_title;
  self->_title = v48;

  v50 = [options copy];
  defaultShareOptions = self->_defaultShareOptions;
  self->_defaultShareOptions = v50;

  v52 = [defaultOptions copy];
  defaultOptions = self->_defaultOptions;
  self->_defaultOptions = v52;

  v54 = [date copy];
  creationDate = self->_creationDate;
  self->_creationDate = v54;

  v56 = [type copy];
  contentType = self->_contentType;
  self->_contentType = v56;

  v58 = [handle copy];
  initiatorHandle = self->_initiatorHandle;
  self->_initiatorHandle = v58;

  initiatorNameComponents = self->_initiatorNameComponents;
  self->_initiatorNameComponents = componentsCopy;
  v72 = componentsCopy;

  v61 = [ds copy];
  ckAppBundleIDs = self->_ckAppBundleIDs;
  self->_ckAppBundleIDs = v61;

  v63 = [map copy];
  handleToIdentityMap = self->_handleToIdentityMap;
  self->_handleToIdentityMap = v63;

  v65 = [info copy];
  containerSetupInfo = self->_containerSetupInfo;
  self->_containerSetupInfo = v65;

  v67 = [data copy];
  sourceProcessData = self->_sourceProcessData;
  self->_sourceProcessData = v67;

  v69 = +[_SWCollaborationMetadataType collaboration];
  type = self->_type;
  self->_type = v69;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options defaultOptions:(id)defaultOptions creationDate:(id)date contentType:(id)type initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 ckAppBundleIDs:(id)self2 handleToIdentityMap:(id)self3 containerSetupInfo:(id)self4 sourceProcessData:(id)self5
{
  identifierCopy = identifier;
  collaborationIdentifierCopy = collaborationIdentifier;
  titleCopy = title;
  optionsCopy = options;
  defaultOptionsCopy = defaultOptions;
  dateCopy = date;
  typeCopy = type;
  handleCopy = handle;
  componentsCopy = components;
  dsCopy = ds;
  mapCopy = map;
  infoCopy = info;
  dataCopy = data;
  v37.receiver = self;
  v37.super_class = SWCollaborationMetadata;
  v29 = [(SWCollaborationMetadata *)&v37 init];
  v30 = v29;
  if (v29)
  {
    [(SWCollaborationMetadata *)v29 _commonInitWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:defaultOptionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:mapCopy containerSetupInfo:infoCopy sourceProcessData:dataCopy];
  }

  return v30;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info sourceProcessData:(id)data
{
  identifierCopy = identifier;
  titleCopy = title;
  optionsCopy = options;
  handleCopy = handle;
  componentsCopy = components;
  infoCopy = info;
  dataCopy = data;
  v22 = [(SWCollaborationMetadata *)self init];
  if (v22)
  {
    optionsGroups = [optionsCopy optionsGroups];
    [(SWCollaborationMetadata *)v22 _commonInitWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:dataCopy];
  }

  return v22;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info
{
  identifierCopy = identifier;
  titleCopy = title;
  optionsCopy = options;
  handleCopy = handle;
  componentsCopy = components;
  infoCopy = info;
  v20 = [(SWCollaborationMetadata *)self init];
  if (v20)
  {
    optionsGroups = [optionsCopy optionsGroups];
    [(SWCollaborationMetadata *)v20 _commonInitWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:0];
  }

  return v20;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  identifierCopy = identifier;
  titleCopy = title;
  optionsCopy = options;
  handleCopy = handle;
  componentsCopy = components;
  v17 = [(SWCollaborationMetadata *)self init];
  if (v17)
  {
    optionsGroups = [optionsCopy optionsGroups];
    [(SWCollaborationMetadata *)v17 _commonInitWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];
  }

  return v17;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  identifierCopy = identifier;
  titleCopy = title;
  optionsCopy = options;
  handleCopy = handle;
  componentsCopy = components;
  v17 = [(SWCollaborationMetadata *)self init];
  if (v17)
  {
    v18 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
    [(SWCollaborationMetadata *)v17 _commonInitWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v18 defaultOptions:optionsCopy creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];
  }

  return v17;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)info
{
  identifierCopy = identifier;
  titleCopy = title;
  optionsCopy = options;
  handleCopy = handle;
  componentsCopy = components;
  infoCopy = info;
  v20 = [(SWCollaborationMetadata *)self init];
  if (v20)
  {
    v21 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
    [(SWCollaborationMetadata *)v20 _commonInitWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v21 defaultOptions:optionsCopy creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:0];
  }

  return v20;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  componentsCopy = components;
  handleCopy = handle;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components containerSetupInfo:(id)self0 sourceProcessData:(id)self1
{
  dataCopy = data;
  infoCopy = info;
  componentsCopy = components;
  handleCopy = handle;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:dataCopy];

  return v29;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  componentsCopy = components;
  handleCopy = handle;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v23 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v23 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type
{
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v18 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v18;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type containerSetupInfo:(id)info
{
  infoCopy = info;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v20 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type
{
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v17 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v18 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v17 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v18;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options
{
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v12 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v12;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options
{
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v12 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v11 defaultOptions:optionsCopy creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v12;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds
{
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds
{
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v20 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options
{
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v15 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v15;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options
{
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  v14 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v15 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:v14 defaultOptions:optionsCopy creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v15;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  componentsCopy = components;
  handleCopy = handle;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options initiatorHandle:(id)handle initiatorNameComponents:(id)components
{
  componentsCopy = components;
  handleCopy = handle;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:v20 defaultOptions:optionsCopy creationDate:0 contentType:0 initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds
{
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds
{
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  v23 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:v23 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1 containerSetupInfo:(id)self2 sourceProcessData:(id)self3
{
  dataCopy = data;
  infoCopy = info;
  componentsCopy = components;
  handleCopy = handle;
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v33 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:infoCopy sourceProcessData:dataCopy];

  return v33;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1
{
  componentsCopy = components;
  handleCopy = handle;
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v29;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)identifier collaborationIdentifier:(id)collaborationIdentifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)self0 initiatorNameComponents:(id)self1
{
  componentsCopy = components;
  handleCopy = handle;
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  collaborationIdentifierCopy = collaborationIdentifier;
  identifierCopy = identifier;
  v26 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:identifierCopy collaborationIdentifier:collaborationIdentifierCopy title:titleCopy defaultShareOptions:v26 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v29;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultShareOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)handle initiatorNameComponents:(id)self0
{
  componentsCopy = components;
  handleCopy = handle;
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  optionsGroups = [optionsCopy optionsGroups];
  v26 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:optionsCopy defaultOptions:optionsGroups creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v26;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)identifier title:(id)title defaultOptions:(id)options creationDate:(id)date contentType:(id)type ckAppBundleIDs:(id)ds initiatorHandle:(id)handle initiatorNameComponents:(id)self0
{
  componentsCopy = components;
  handleCopy = handle;
  dsCopy = ds;
  typeCopy = type;
  dateCopy = date;
  optionsCopy = options;
  titleCopy = title;
  identifierCopy = identifier;
  v25 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:optionsCopy];
  v26 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:identifierCopy title:titleCopy defaultShareOptions:v25 defaultOptions:optionsCopy creationDate:dateCopy contentType:typeCopy initiatorHandle:handleCopy initiatorNameComponents:componentsCopy ckAppBundleIDs:dsCopy handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v26;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  [v3 appendFormat:@" collaborationIdentifier=%@", collaborationIdentifier];

  title = [(SWCollaborationMetadata *)self title];
  [v3 appendFormat:@" title=%@", title];

  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  [v3 appendFormat:@" defaultShareOptions=%@", defaultShareOptions];

  userSelectedShareOptions = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  [v3 appendFormat:@" userSelectedShareOptions=%@", userSelectedShareOptions];

  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  [v3 appendFormat:@" initiatorHandle=%@", initiatorHandle];

  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  [v3 appendFormat:@" initiatorNameComponents=%@", initiatorNameComponents];

  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  [v3 appendFormat:@" handleToIdentityMap=%@", handleToIdentityMap];

  type = [(SWCollaborationMetadata *)self type];
  [v3 appendFormat:@" type=%@", type];

  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationMetadata *)self isEqualToCollaborationMetadata:equalCopy];

  return v5;
}

- (BOOL)isEqualToCollaborationMetadata:(id)metadata
{
  metadataCopy = metadata;
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  if (collaborationIdentifier || ([metadataCopy collaborationIdentifier], (v102 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    collaborationIdentifier2 = [(SWCollaborationMetadata *)self collaborationIdentifier];
    [metadataCopy collaborationIdentifier];
    v100 = v101 = collaborationIdentifier2;
    v6 = [collaborationIdentifier2 isEqual:?];
    v7 = 1;
    if (!v6)
    {
      v113 = 1;
      memset(v112, 0, sizeof(v112));
      v107 = 0;
      v105 = 0;
      memset(v103, 0, sizeof(v103));
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v104 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_87;
    }
  }

  else
  {
    v102 = 0;
    v7 = 0;
  }

  localIdentifier = [(SWCollaborationMetadata *)self localIdentifier];
  HIDWORD(v112[7]) = localIdentifier == 0;
  v113 = v7;
  if (localIdentifier || ([metadataCopy localIdentifier], (v95 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    localIdentifier2 = [(SWCollaborationMetadata *)self localIdentifier];
    localIdentifier3 = [metadataCopy localIdentifier];
    v98 = localIdentifier2;
    if (![localIdentifier2 isEqual:?])
    {
      v112[0] = 1;
      v107 = 0;
      *(&v112[6] + 4) = 0;
      v105 = 0;
      memset(&v112[1], 0, 40);
      memset(v103, 0, sizeof(v103));
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v104 = 0;
      v14 = 0;
      v15 = 0;
      LODWORD(v112[6]) = 1;
      goto LABEL_87;
    }

    v17 = 1;
  }

  else
  {
    v95 = 0;
    v17 = 0;
  }

  title = [(SWCollaborationMetadata *)self title];
  LODWORD(v112[7]) = title == 0;
  LODWORD(v112[6]) = v17;
  if (title || ([metadataCopy title], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title2 = [(SWCollaborationMetadata *)self title];
    title3 = [metadataCopy title];
    v94 = title2;
    if (![title2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v105 = 0;
      HIDWORD(v112[6]) = 0;
      memset(v103, 0, sizeof(v103));
      memset(v112 + 4, 0, 40);
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v104 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      HIDWORD(v112[5]) = 1;
      goto LABEL_87;
    }

    v19 = 1;
  }

  else
  {
    v91 = 0;
    v19 = 0;
  }

  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  HIDWORD(v112[6]) = defaultShareOptions == 0;
  HIDWORD(v112[5]) = v19;
  if (defaultShareOptions || ([metadataCopy defaultShareOptions], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    defaultShareOptions2 = [(SWCollaborationMetadata *)self defaultShareOptions];
    defaultShareOptions3 = [metadataCopy defaultShareOptions];
    v90 = defaultShareOptions2;
    if (![defaultShareOptions2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v104 = 0;
      v105 = 0x100000000;
      memset(v112 + 4, 0, 32);
      memset(v103, 0, sizeof(v103));
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      *(&v112[4] + 4) = 1;
      goto LABEL_87;
    }

    HIDWORD(v112[4]) = 1;
  }

  else
  {
    v87 = 0;
    HIDWORD(v112[4]) = 0;
  }

  userSelectedShareOptions = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  LODWORD(v112[5]) = userSelectedShareOptions == 0;
  v88 = userSelectedShareOptions;
  if (userSelectedShareOptions || ([metadataCopy userSelectedShareOptions], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userSelectedShareOptions2 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
    userSelectedShareOptions3 = [metadataCopy userSelectedShareOptions];
    v86 = userSelectedShareOptions2;
    if (![userSelectedShareOptions2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      memset(v103, 0, sizeof(v103));
      memset(v112 + 4, 0, 24);
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *(&v112[3] + 4) = 1;
      goto LABEL_87;
    }

    HIDWORD(v112[3]) = 1;
  }

  else
  {
    v83 = 0;
    HIDWORD(v112[3]) = 0;
  }

  creationDate = [(SWCollaborationMetadata *)self creationDate];
  LODWORD(v112[4]) = creationDate == 0;
  v84 = creationDate;
  if (creationDate || ([metadataCopy creationDate], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    creationDate2 = [(SWCollaborationMetadata *)self creationDate];
    creationDate3 = [metadataCopy creationDate];
    v82 = creationDate2;
    if (![creationDate2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      *v103 = 0;
      *(v112 + 4) = 0uLL;
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *(&v112[2] + 4) = 1;
      goto LABEL_87;
    }

    HIDWORD(v112[2]) = 1;
  }

  else
  {
    v79 = 0;
    HIDWORD(v112[2]) = 0;
  }

  contentType = [(SWCollaborationMetadata *)self contentType];
  LODWORD(v112[3]) = contentType == 0;
  v80 = contentType;
  if (contentType || ([metadataCopy contentType], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    contentType2 = [(SWCollaborationMetadata *)self contentType];
    contentType3 = [metadataCopy contentType];
    v78 = contentType2;
    if (![contentType2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      *v103 = 0x100000000;
      LODWORD(v112[2]) = 0;
      *(v112 + 4) = 0;
      v8 = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      HIDWORD(v112[1]) = 1;
      goto LABEL_87;
    }

    HIDWORD(v112[1]) = 1;
  }

  else
  {
    v75 = 0;
    HIDWORD(v112[1]) = 0;
  }

  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  LODWORD(v112[2]) = ckAppBundleIDs == 0;
  v76 = ckAppBundleIDs;
  if (ckAppBundleIDs || ([metadataCopy ckAppBundleIDs], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ckAppBundleIDs2 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    ckAppBundleIDs3 = [metadataCopy ckAppBundleIDs];
    v74 = ckAppBundleIDs2;
    if (![ckAppBundleIDs2 isEqual:?])
    {
      v112[0] = 0x100000001;
      v8 = 0;
      LODWORD(v112[1]) = 0;
      v111 = 0;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      goto LABEL_87;
    }

    HIDWORD(v112[0]) = 1;
  }

  else
  {
    v71 = 0;
    HIDWORD(v112[0]) = 0;
  }

  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  LODWORD(v112[1]) = initiatorHandle == 0;
  v72 = initiatorHandle;
  if (initiatorHandle || ([metadataCopy initiatorHandle], (v67 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    initiatorHandle2 = [(SWCollaborationMetadata *)self initiatorHandle];
    initiatorHandle3 = [metadataCopy initiatorHandle];
    v70 = initiatorHandle2;
    if (![initiatorHandle2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v9 = 0;
      v110 = 0;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v111 = 1;
      goto LABEL_87;
    }

    LODWORD(v111) = 1;
  }

  else
  {
    v67 = 0;
    LODWORD(v111) = 0;
  }

  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  HIDWORD(v111) = initiatorNameComponents == 0;
  v68 = initiatorNameComponents;
  if (initiatorNameComponents || ([metadataCopy initiatorNameComponents], (v63 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    initiatorNameComponents2 = [(SWCollaborationMetadata *)self initiatorNameComponents];
    initiatorNameComponents3 = [metadataCopy initiatorNameComponents];
    v66 = initiatorNameComponents2;
    if (![initiatorNameComponents2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v10 = 0;
      v109 = 0;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v9 = 1;
      v110 = 1;
      goto LABEL_87;
    }

    LODWORD(v110) = 1;
  }

  else
  {
    v63 = 0;
    LODWORD(v110) = 0;
  }

  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  HIDWORD(v110) = handleToIdentityMap == 0;
  v64 = handleToIdentityMap;
  if (handleToIdentityMap || ([metadataCopy handleToIdentityMap], (v59 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    handleToIdentityMap2 = [(SWCollaborationMetadata *)self handleToIdentityMap];
    handleToIdentityMap3 = [metadataCopy handleToIdentityMap];
    v62 = handleToIdentityMap2;
    if (![handleToIdentityMap2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v11 = 0;
      memset(v108, 0, sizeof(v108));
      v12 = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v109 = 1;
      goto LABEL_87;
    }

    LODWORD(v109) = 1;
  }

  else
  {
    v59 = 0;
    LODWORD(v109) = 0;
  }

  sourceProcessData = [(SWCollaborationMetadata *)self sourceProcessData];
  HIDWORD(v109) = sourceProcessData == 0;
  v60 = sourceProcessData;
  if (sourceProcessData || ([metadataCopy sourceProcessData], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sourceProcessData2 = [(SWCollaborationMetadata *)self sourceProcessData];
    sourceProcessData3 = [metadataCopy sourceProcessData];
    v58 = sourceProcessData2;
    if (![sourceProcessData2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v12 = 0;
      *&v108[4] = 0;
      v106 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v11 = 1;
      *v108 = 1;
      goto LABEL_87;
    }

    *v108 = 1;
  }

  else
  {
    v55 = 0;
    *v108 = 0;
  }

  containerSetupInfo = [(SWCollaborationMetadata *)self containerSetupInfo];
  *&v108[8] = containerSetupInfo == 0;
  v56 = containerSetupInfo;
  if (containerSetupInfo || ([metadataCopy containerSetupInfo], (v51 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    containerSetupInfo2 = [(SWCollaborationMetadata *)self containerSetupInfo];
    containerSetupInfo3 = [metadataCopy containerSetupInfo];
    v54 = containerSetupInfo2;
    if (![containerSetupInfo2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v108[4] = 0;
      v107 = 1;
      v104 = 0;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v106 = 1;
      goto LABEL_87;
    }

    LODWORD(v106) = 1;
  }

  else
  {
    v51 = 0;
    LODWORD(v106) = 0;
  }

  userSelectedOptions = [(SWCollaborationMetadata *)self userSelectedOptions];
  HIDWORD(v106) = userSelectedOptions == 0;
  v52 = userSelectedOptions;
  if (userSelectedOptions || ([metadataCopy userSelectedOptions], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userSelectedOptions2 = [(SWCollaborationMetadata *)self userSelectedOptions];
    userSelectedOptions3 = [metadataCopy userSelectedOptions];
    v50 = userSelectedOptions2;
    if (![userSelectedOptions2 isEqual:?])
    {
      LODWORD(v112[0]) = 1;
      v14 = 0;
      v15 = 0;
      v108[4] = 0;
      v107 = 1;
      v105 = 0x100000001;
      *&v103[8] = 1;
      *v103 = 0x100000001;
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v104 = 1;
      goto LABEL_87;
    }

    v104 = 1;
  }

  else
  {
    v47 = 0;
    v104 = 0;
  }

  type = [(SWCollaborationMetadata *)self type];
  v45 = type == 0;
  v48 = type;
  if (type || ([metadataCopy type], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    type2 = [(SWCollaborationMetadata *)self type];
    type3 = [metadataCopy type];
    v108[4] = [type2 isEqual:type3];
    LODWORD(v112[0]) = 1;
    v107 = 1;
    v105 = 0x100000001;
    *&v103[8] = 1;
    *v103 = 0x100000001;

    v15 = v45;
    v8 = 1;
    v9 = 1;
    v14 = 1;
    v10 = 1;
    v13 = 1;
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v48 = 0;
    v46 = 0;
    LODWORD(v112[0]) = 1;
    v107 = 1;
    v105 = 0x100000001;
    *&v103[8] = 1;
    *v103 = 0x100000001;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v108[4] = 1;
  }

LABEL_87:
  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v104)
  {
  }

  if (HIDWORD(v106))
  {
  }

  if (v13)
  {
  }

  if (v106)
  {
  }

  if (*&v108[8])
  {
  }

  if (v12)
  {
  }

  if (*v108)
  {
  }

  if (HIDWORD(v109))
  {
  }

  if (v11)
  {
  }

  if (v109)
  {
  }

  if (HIDWORD(v110))
  {
  }

  if (v10)
  {
  }

  if (v110)
  {
  }

  if (HIDWORD(v111))
  {
  }

  if (v9)
  {
  }

  if (v111)
  {
  }

  if (LODWORD(v112[1]))
  {
  }

  if (v8)
  {
  }

  if (HIDWORD(v112[0]))
  {
  }

  if (LODWORD(v112[2]))
  {
  }

  if (*v103)
  {
  }

  if (HIDWORD(v112[1]))
  {
  }

  if (LODWORD(v112[3]))
  {
  }

  if (*&v103[4])
  {
  }

  if (HIDWORD(v112[2]))
  {
  }

  if (LODWORD(v112[4]))
  {
  }

  if (*&v103[8])
  {
  }

  if (HIDWORD(v112[3]))
  {
  }

  if (LODWORD(v112[5]))
  {
  }

  if (v105)
  {
  }

  if (HIDWORD(v112[4]))
  {
  }

  if (HIDWORD(v112[6]))
  {
  }

  if (HIDWORD(v105))
  {

    if (!HIDWORD(v112[5]))
    {
LABEL_157:
      if (!LODWORD(v112[7]))
      {
        goto LABEL_159;
      }

      goto LABEL_158;
    }
  }

  else if (!HIDWORD(v112[5]))
  {
    goto LABEL_157;
  }

  if (LODWORD(v112[7]))
  {
LABEL_158:
  }

LABEL_159:
  if (v107)
  {

    if (!LODWORD(v112[6]))
    {
LABEL_161:
      if (!HIDWORD(v112[7]))
      {
        goto LABEL_163;
      }

      goto LABEL_162;
    }
  }

  else if (!LODWORD(v112[6]))
  {
    goto LABEL_161;
  }

  if (HIDWORD(v112[7]))
  {
LABEL_162:
  }

LABEL_163:
  if (LODWORD(v112[0]))
  {
  }

  if (v113)
  {
  }

  if (!collaborationIdentifier)
  {
  }

  return v108[4];
}

- (unint64_t)hash
{
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v3 = [collaborationIdentifier hash];
  localIdentifier = [(SWCollaborationMetadata *)self localIdentifier];
  v4 = [localIdentifier hash] ^ v3;
  title = [(SWCollaborationMetadata *)self title];
  v5 = [title hash];
  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  v6 = v4 ^ v5 ^ [defaultShareOptions hash];
  userSelectedShareOptions = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  v7 = [userSelectedShareOptions hash];
  creationDate = [(SWCollaborationMetadata *)self creationDate];
  v8 = v7 ^ [creationDate hash];
  contentType = [(SWCollaborationMetadata *)self contentType];
  v10 = v6 ^ v8 ^ [contentType hash];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v12 = [ckAppBundleIDs hash];
  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  v14 = v12 ^ [initiatorHandle hash];
  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v16 = v14 ^ [initiatorNameComponents hash];
  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v25 = v10 ^ v16 ^ [handleToIdentityMap hash];
  sourceProcessData = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [sourceProcessData hash];
  containerSetupInfo = [(SWCollaborationMetadata *)self containerSetupInfo];
  v21 = v19 ^ [containerSetupInfo hash];
  type = [(SWCollaborationMetadata *)self type];
  v23 = v21 ^ [type hash];

  return v25 ^ v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = [objc_opt_class() allocWithZone:zone];
  localIdentifier = [(SWCollaborationMetadata *)self localIdentifier];
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  title = [(SWCollaborationMetadata *)self title];
  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  defaultOptions = [(SWCollaborationMetadata *)self defaultOptions];
  creationDate = [(SWCollaborationMetadata *)self creationDate];
  contentType = [(SWCollaborationMetadata *)self contentType];
  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  containerSetupInfo = [(SWCollaborationMetadata *)self containerSetupInfo];
  sourceProcessData = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [v18 initWithLocalIdentifier:localIdentifier collaborationIdentifier:collaborationIdentifier title:title defaultShareOptions:defaultShareOptions defaultOptions:defaultOptions creationDate:creationDate contentType:contentType initiatorHandle:initiatorHandle initiatorNameComponents:initiatorNameComponents ckAppBundleIDs:ckAppBundleIDs handleToIdentityMap:handleToIdentityMap containerSetupInfo:containerSetupInfo sourceProcessData:sourceProcessData];

  type = [(SWCollaborationMetadata *)self type];
  [v19 setType:type];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v18 = [(SWCollaborationMetadata *)_SWMutableCollaborationMetadata allocWithZone:zone];
  localIdentifier = [(SWCollaborationMetadata *)self localIdentifier];
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  title = [(SWCollaborationMetadata *)self title];
  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  defaultOptions = [(SWCollaborationMetadata *)self defaultOptions];
  creationDate = [(SWCollaborationMetadata *)self creationDate];
  contentType = [(SWCollaborationMetadata *)self contentType];
  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  containerSetupInfo = [(SWCollaborationMetadata *)self containerSetupInfo];
  sourceProcessData = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [(SWCollaborationMetadata *)v18 initWithLocalIdentifier:localIdentifier collaborationIdentifier:collaborationIdentifier title:title defaultShareOptions:defaultShareOptions defaultOptions:defaultOptions creationDate:creationDate contentType:contentType initiatorHandle:initiatorHandle initiatorNameComponents:initiatorNameComponents ckAppBundleIDs:ckAppBundleIDs handleToIdentityMap:handleToIdentityMap containerSetupInfo:containerSetupInfo sourceProcessData:sourceProcessData];

  type = [(SWCollaborationMetadata *)self type];
  [(SWCollaborationMetadata *)v19 setType:type];

  return v19;
}

- (SWCollaborationMetadata)initWithCoder:(id)coder
{
  v61[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_collaborationIdentifier);
  v58 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_localIdentifier);
  v56 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_title);
  v54 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v10 = MEMORY[0x1E695DFD8];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = NSStringFromSelector(sel_defaultShareOptions);
  v57 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];

  v14 = MEMORY[0x1E695DFD8];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = NSStringFromSelector(sel_userSelectedShareOptions);
  v53 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_creationDate);
  v52 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_contentType);
  v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = NSStringFromSelector(sel_ckAppBundleIDs);
  v27 = [coderCopy decodeObjectOfClasses:v25 forKey:v26];

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_initiatorHandle);
  v30 = [coderCopy decodeObjectOfClass:v28 forKey:v29];

  v31 = objc_opt_class();
  v32 = NSStringFromSelector(sel_initiatorNameComponents);
  v51 = [coderCopy decodeObjectOfClass:v31 forKey:v32];

  v33 = MEMORY[0x1E695DFA8];
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v59[2] = objc_opt_class();
  v59[3] = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v35 = [v33 setWithArray:v34];
  v36 = NSStringFromSelector(sel_handleToIdentityMap);
  v50 = [coderCopy decodeObjectOfClasses:v35 forKey:v36];

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_containerSetupInfo);
  v49 = [coderCopy decodeObjectOfClass:v37 forKey:v38];

  v39 = objc_opt_class();
  v40 = NSStringFromSelector(sel_sourceProcessData);
  v41 = [coderCopy decodeObjectOfClass:v39 forKey:v40];

  v42 = objc_opt_class();
  v43 = NSStringFromSelector(sel_type);
  v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];

  optionsGroups = [v57 optionsGroups];
  v46 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v56 collaborationIdentifier:v58 title:v54 defaultShareOptions:v57 defaultOptions:optionsGroups creationDate:v52 contentType:v22 initiatorHandle:v30 initiatorNameComponents:v51 ckAppBundleIDs:v27 handleToIdentityMap:v50 containerSetupInfo:v49 sourceProcessData:v41];

  [(SWCollaborationMetadata *)v46 setUserSelectedShareOptions:v53];
  [(SWCollaborationMetadata *)v46 setType:v44];

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  collaborationIdentifier = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v6 = NSStringFromSelector(sel_collaborationIdentifier);
  [coderCopy encodeObject:collaborationIdentifier forKey:v6];

  localIdentifier = [(SWCollaborationMetadata *)self localIdentifier];
  v8 = NSStringFromSelector(sel_localIdentifier);
  [coderCopy encodeObject:localIdentifier forKey:v8];

  title = [(SWCollaborationMetadata *)self title];
  v10 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v10];

  defaultShareOptions = [(SWCollaborationMetadata *)self defaultShareOptions];
  v12 = NSStringFromSelector(sel_defaultShareOptions);
  [coderCopy encodeObject:defaultShareOptions forKey:v12];

  userSelectedShareOptions = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  v14 = NSStringFromSelector(sel_userSelectedShareOptions);
  [coderCopy encodeObject:userSelectedShareOptions forKey:v14];

  creationDate = [(SWCollaborationMetadata *)self creationDate];
  v16 = NSStringFromSelector(sel_creationDate);
  [coderCopy encodeObject:creationDate forKey:v16];

  contentType = [(SWCollaborationMetadata *)self contentType];
  v18 = NSStringFromSelector(sel_contentType);
  [coderCopy encodeObject:contentType forKey:v18];

  ckAppBundleIDs = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v20 = NSStringFromSelector(sel_ckAppBundleIDs);
  [coderCopy encodeObject:ckAppBundleIDs forKey:v20];

  initiatorHandle = [(SWCollaborationMetadata *)self initiatorHandle];
  v22 = NSStringFromSelector(sel_initiatorHandle);
  [coderCopy encodeObject:initiatorHandle forKey:v22];

  initiatorNameComponents = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v24 = NSStringFromSelector(sel_initiatorNameComponents);
  [coderCopy encodeObject:initiatorNameComponents forKey:v24];

  handleToIdentityMap = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v26 = NSStringFromSelector(sel_handleToIdentityMap);
  [coderCopy encodeObject:handleToIdentityMap forKey:v26];

  sourceProcessData = [(SWCollaborationMetadata *)self sourceProcessData];
  v28 = NSStringFromSelector(sel_sourceProcessData);
  [coderCopy encodeObject:sourceProcessData forKey:v28];

  containerSetupInfo = [(SWCollaborationMetadata *)self containerSetupInfo];
  v30 = NSStringFromSelector(sel_containerSetupInfo);
  [coderCopy encodeObject:containerSetupInfo forKey:v30];

  type = [(SWCollaborationMetadata *)self type];
  v31 = NSStringFromSelector(sel_type);
  [coderCopy encodeObject:type forKey:v31];
}

@end