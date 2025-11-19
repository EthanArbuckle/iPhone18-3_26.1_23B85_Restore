@interface SWCollaborationMetadata
+ (SWCollaborationMetadata)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollaborationMetadata:(id)a3;
- (SWCollaborationMetadata)initWithCoder:(id)a3;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8 initiatorHandle:(id)a9 initiatorNameComponents:(id)a10;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 containerSetupInfo:(id)a8;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8 initiatorHandle:(id)a9 initiatorNameComponents:(id)a10;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9 containerSetupInfo:(id)a10 sourceProcessData:(id)a11;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8;
- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8 sourceProcessData:(id)a9;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 initiatorHandle:(id)a7 initiatorNameComponents:(id)a8;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 containerSetupInfo:(id)a12 sourceProcessData:(id)a13;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 defaultOptions:(id)a7 creationDate:(id)a8 contentType:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 ckAppBundleIDs:(id)a12 handleToIdentityMap:(id)a13 containerSetupInfo:(id)a14 sourceProcessData:(id)a15;
- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 initiatorHandle:(id)a7 initiatorNameComponents:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_commonInitWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 defaultOptions:(id)a7 creationDate:(id)a8 contentType:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 ckAppBundleIDs:(id)a12 handleToIdentityMap:(id)a13 containerSetupInfo:(id)a14 sourceProcessData:(id)a15;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCollaborationMetadata

+ (SWCollaborationMetadata)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWCollaborationMetadata allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWCollaborationMetadata;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (void)_commonInitWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 defaultOptions:(id)a7 creationDate:(id)a8 contentType:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 ckAppBundleIDs:(id)a12 handleToIdentityMap:(id)a13 containerSetupInfo:(id)a14 sourceProcessData:(id)a15
{
  v71 = a11;
  if (a3)
  {
    v22 = a15;
    v23 = a14;
    v24 = a13;
    v25 = a12;
    v26 = a10;
    v27 = a9;
    v28 = a8;
    v29 = a7;
    v30 = a6;
    v31 = a5;
    v32 = a4;
    v33 = [a3 copy];
    localIdentifier = self->_localIdentifier;
    self->_localIdentifier = v33;
  }

  else
  {
    localIdentifier = self->_localIdentifier;
    self->_localIdentifier = &stru_1F4E16F00;
    v35 = a15;
    v36 = a14;
    v37 = a13;
    v38 = a12;
    v39 = a10;
    v40 = a9;
    v41 = a8;
    v42 = a7;
    v43 = a6;
    v44 = a5;
    v45 = a4;
  }

  v46 = [a4 copy];
  collaborationIdentifier = self->_collaborationIdentifier;
  self->_collaborationIdentifier = v46;

  v48 = [a5 copy];
  title = self->_title;
  self->_title = v48;

  v50 = [a6 copy];
  defaultShareOptions = self->_defaultShareOptions;
  self->_defaultShareOptions = v50;

  v52 = [a7 copy];
  defaultOptions = self->_defaultOptions;
  self->_defaultOptions = v52;

  v54 = [a8 copy];
  creationDate = self->_creationDate;
  self->_creationDate = v54;

  v56 = [a9 copy];
  contentType = self->_contentType;
  self->_contentType = v56;

  v58 = [a10 copy];
  initiatorHandle = self->_initiatorHandle;
  self->_initiatorHandle = v58;

  initiatorNameComponents = self->_initiatorNameComponents;
  self->_initiatorNameComponents = v71;
  v72 = v71;

  v61 = [a12 copy];
  ckAppBundleIDs = self->_ckAppBundleIDs;
  self->_ckAppBundleIDs = v61;

  v63 = [a13 copy];
  handleToIdentityMap = self->_handleToIdentityMap;
  self->_handleToIdentityMap = v63;

  v65 = [a14 copy];
  containerSetupInfo = self->_containerSetupInfo;
  self->_containerSetupInfo = v65;

  v67 = [a15 copy];
  sourceProcessData = self->_sourceProcessData;
  self->_sourceProcessData = v67;

  v69 = +[_SWCollaborationMetadataType collaboration];
  type = self->_type;
  self->_type = v69;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 defaultOptions:(id)a7 creationDate:(id)a8 contentType:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 ckAppBundleIDs:(id)a12 handleToIdentityMap:(id)a13 containerSetupInfo:(id)a14 sourceProcessData:(id)a15
{
  v20 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v37.receiver = self;
  v37.super_class = SWCollaborationMetadata;
  v29 = [(SWCollaborationMetadata *)&v37 init];
  v30 = v29;
  if (v29)
  {
    [(SWCollaborationMetadata *)v29 _commonInitWithLocalIdentifier:v20 collaborationIdentifier:v36 title:v35 defaultShareOptions:v34 defaultOptions:v33 creationDate:v21 contentType:v22 initiatorHandle:v23 initiatorNameComponents:v24 ckAppBundleIDs:v25 handleToIdentityMap:v26 containerSetupInfo:v27 sourceProcessData:v28];
  }

  return v30;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8 sourceProcessData:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(SWCollaborationMetadata *)self init];
  if (v22)
  {
    v23 = [v17 optionsGroups];
    [(SWCollaborationMetadata *)v22 _commonInitWithLocalIdentifier:0 collaborationIdentifier:v15 title:v16 defaultShareOptions:v17 defaultOptions:v23 creationDate:0 contentType:0 initiatorHandle:v18 initiatorNameComponents:v19 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:v20 sourceProcessData:v21];
  }

  return v22;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(SWCollaborationMetadata *)self init];
  if (v20)
  {
    v21 = [v16 optionsGroups];
    [(SWCollaborationMetadata *)v20 _commonInitWithLocalIdentifier:0 collaborationIdentifier:v14 title:v15 defaultShareOptions:v16 defaultOptions:v21 creationDate:0 contentType:0 initiatorHandle:v17 initiatorNameComponents:v18 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:v19 sourceProcessData:0];
  }

  return v20;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SWCollaborationMetadata *)self init];
  if (v17)
  {
    v18 = [v14 optionsGroups];
    [(SWCollaborationMetadata *)v17 _commonInitWithLocalIdentifier:0 collaborationIdentifier:v12 title:v13 defaultShareOptions:v14 defaultOptions:v18 creationDate:0 contentType:0 initiatorHandle:v15 initiatorNameComponents:v16 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];
  }

  return v17;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(SWCollaborationMetadata *)self init];
  if (v17)
  {
    v18 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v14];
    [(SWCollaborationMetadata *)v17 _commonInitWithLocalIdentifier:0 collaborationIdentifier:v12 title:v13 defaultShareOptions:v18 defaultOptions:v14 creationDate:0 contentType:0 initiatorHandle:v15 initiatorNameComponents:v16 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];
  }

  return v17;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 initiatorHandle:(id)a6 initiatorNameComponents:(id)a7 containerSetupInfo:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(SWCollaborationMetadata *)self init];
  if (v20)
  {
    v21 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v16];
    [(SWCollaborationMetadata *)v20 _commonInitWithLocalIdentifier:0 collaborationIdentifier:v14 title:v15 defaultShareOptions:v21 defaultOptions:v16 creationDate:0 contentType:0 initiatorHandle:v17 initiatorNameComponents:v18 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:v19 sourceProcessData:0];
  }

  return v20;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v20 optionsGroups];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v22 title:v21 defaultShareOptions:v20 defaultOptions:v23 creationDate:v19 contentType:v18 initiatorHandle:v17 initiatorNameComponents:v16 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9 containerSetupInfo:(id)a10 sourceProcessData:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [v23 optionsGroups];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v25 title:v24 defaultShareOptions:v23 defaultOptions:v26 creationDate:v22 contentType:v21 initiatorHandle:v20 initiatorNameComponents:v19 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:v18 sourceProcessData:v17];

  return v29;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 initiatorHandle:(id)a8 initiatorNameComponents:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v20];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v22 title:v21 defaultShareOptions:v23 defaultOptions:v20 creationDate:v19 contentType:v18 initiatorHandle:v17 initiatorNameComponents:v16 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v14 optionsGroups];
  v18 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v16 title:v15 defaultShareOptions:v14 defaultOptions:v17 creationDate:v13 contentType:v12 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v18;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 containerSetupInfo:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v17];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v19 title:v18 defaultShareOptions:v20 defaultOptions:v17 creationDate:v16 contentType:v15 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:v14 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v14];
  v18 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v16 title:v15 defaultShareOptions:v17 defaultOptions:v14 creationDate:v13 contentType:v12 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v18;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 optionsGroups];
  v12 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v10 title:v9 defaultShareOptions:v8 defaultOptions:v11 creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v12;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v8];
  v12 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v10 title:v9 defaultShareOptions:v11 defaultOptions:v8 creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v12;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v17 optionsGroups];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v19 title:v18 defaultShareOptions:v17 defaultOptions:v20 creationDate:v16 contentType:v15 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:v14 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v17];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v19 title:v18 defaultShareOptions:v20 defaultOptions:v17 creationDate:v16 contentType:v15 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:v14 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 optionsGroups];
  v15 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v13 collaborationIdentifier:v12 title:v11 defaultShareOptions:v10 defaultOptions:v14 creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v15;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v10];
  v15 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v13 collaborationIdentifier:v12 title:v11 defaultShareOptions:v14 defaultOptions:v10 creationDate:0 contentType:0 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v15;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 initiatorHandle:(id)a7 initiatorNameComponents:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [v16 optionsGroups];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v19 collaborationIdentifier:v18 title:v17 defaultShareOptions:v16 defaultOptions:v20 creationDate:0 contentType:0 initiatorHandle:v15 initiatorNameComponents:v14 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 initiatorHandle:(id)a7 initiatorNameComponents:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v16];
  v21 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v19 collaborationIdentifier:v18 title:v17 defaultShareOptions:v20 defaultOptions:v16 creationDate:0 contentType:0 initiatorHandle:v15 initiatorNameComponents:v14 ckAppBundleIDs:0 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v21;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v19 optionsGroups];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v22 collaborationIdentifier:v21 title:v20 defaultShareOptions:v19 defaultOptions:v23 creationDate:v18 contentType:v17 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:v16 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v19];
  v24 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v22 collaborationIdentifier:v21 title:v20 defaultShareOptions:v23 defaultOptions:v19 creationDate:v18 contentType:v17 initiatorHandle:0 initiatorNameComponents:0 ckAppBundleIDs:v16 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v24;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11 containerSetupInfo:(id)a12 sourceProcessData:(id)a13
{
  v29 = a13;
  v18 = a12;
  v28 = a11;
  v27 = a10;
  v19 = a9;
  v20 = a8;
  v26 = a7;
  v21 = a6;
  v25 = a5;
  v22 = a4;
  v23 = a3;
  v31 = [v21 optionsGroups];
  v33 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v23 collaborationIdentifier:v22 title:v25 defaultShareOptions:v21 defaultOptions:v31 creationDate:v26 contentType:v20 initiatorHandle:v27 initiatorNameComponents:v28 ckAppBundleIDs:v19 handleToIdentityMap:0 containerSetupInfo:v18 sourceProcessData:v29];

  return v33;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultShareOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [v22 optionsGroups];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v25 collaborationIdentifier:v24 title:v23 defaultShareOptions:v22 defaultOptions:v26 creationDate:v21 contentType:v20 initiatorHandle:v18 initiatorNameComponents:v17 ckAppBundleIDs:v19 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v29;
}

- (SWCollaborationMetadata)initWithLocalIdentifier:(id)a3 collaborationIdentifier:(id)a4 title:(id)a5 defaultOptions:(id)a6 creationDate:(id)a7 contentType:(id)a8 ckAppBundleIDs:(id)a9 initiatorHandle:(id)a10 initiatorNameComponents:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v22];
  v29 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v25 collaborationIdentifier:v24 title:v23 defaultShareOptions:v26 defaultOptions:v22 creationDate:v21 contentType:v20 initiatorHandle:v18 initiatorNameComponents:v17 ckAppBundleIDs:v19 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v29;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultShareOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8 initiatorHandle:(id)a9 initiatorNameComponents:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [v22 optionsGroups];
  v26 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v24 title:v23 defaultShareOptions:v22 defaultOptions:v25 creationDate:v21 contentType:v20 initiatorHandle:v18 initiatorNameComponents:v17 ckAppBundleIDs:v19 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v26;
}

- (SWCollaborationMetadata)initWithCollaborationIdentifier:(id)a3 title:(id)a4 defaultOptions:(id)a5 creationDate:(id)a6 contentType:(id)a7 ckAppBundleIDs:(id)a8 initiatorHandle:(id)a9 initiatorNameComponents:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [SWCollaborationShareOptions shareOptionsWithOptionsGroups:v22];
  v26 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:0 collaborationIdentifier:v24 title:v23 defaultShareOptions:v25 defaultOptions:v22 creationDate:v21 contentType:v20 initiatorHandle:v18 initiatorNameComponents:v17 ckAppBundleIDs:v19 handleToIdentityMap:0 containerSetupInfo:0 sourceProcessData:0];

  return v26;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  [v3 appendFormat:@" collaborationIdentifier=%@", v4];

  v5 = [(SWCollaborationMetadata *)self title];
  [v3 appendFormat:@" title=%@", v5];

  v6 = [(SWCollaborationMetadata *)self defaultShareOptions];
  [v3 appendFormat:@" defaultShareOptions=%@", v6];

  v7 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  [v3 appendFormat:@" userSelectedShareOptions=%@", v7];

  v8 = [(SWCollaborationMetadata *)self initiatorHandle];
  [v3 appendFormat:@" initiatorHandle=%@", v8];

  v9 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  [v3 appendFormat:@" initiatorNameComponents=%@", v9];

  v10 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  [v3 appendFormat:@" handleToIdentityMap=%@", v10];

  v11 = [(SWCollaborationMetadata *)self type];
  [v3 appendFormat:@" type=%@", v11];

  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationMetadata *)self isEqualToCollaborationMetadata:v4];

  return v5;
}

- (BOOL)isEqualToCollaborationMetadata:(id)a3
{
  v4 = a3;
  v114 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  if (v114 || ([v4 collaborationIdentifier], (v102 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(SWCollaborationMetadata *)self collaborationIdentifier];
    [v4 collaborationIdentifier];
    v100 = v101 = v5;
    v6 = [v5 isEqual:?];
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

  v99 = [(SWCollaborationMetadata *)self localIdentifier];
  HIDWORD(v112[7]) = v99 == 0;
  v113 = v7;
  if (v99 || ([v4 localIdentifier], (v95 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = [(SWCollaborationMetadata *)self localIdentifier];
    v97 = [v4 localIdentifier];
    v98 = v16;
    if (![v16 isEqual:?])
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

  v96 = [(SWCollaborationMetadata *)self title];
  LODWORD(v112[7]) = v96 == 0;
  LODWORD(v112[6]) = v17;
  if (v96 || ([v4 title], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(SWCollaborationMetadata *)self title];
    v93 = [v4 title];
    v94 = v18;
    if (![v18 isEqual:?])
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

  v92 = [(SWCollaborationMetadata *)self defaultShareOptions];
  HIDWORD(v112[6]) = v92 == 0;
  HIDWORD(v112[5]) = v19;
  if (v92 || ([v4 defaultShareOptions], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [(SWCollaborationMetadata *)self defaultShareOptions];
    v89 = [v4 defaultShareOptions];
    v90 = v20;
    if (![v20 isEqual:?])
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

  v21 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  LODWORD(v112[5]) = v21 == 0;
  v88 = v21;
  if (v21 || ([v4 userSelectedShareOptions], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
    v85 = [v4 userSelectedShareOptions];
    v86 = v22;
    if (![v22 isEqual:?])
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

  v23 = [(SWCollaborationMetadata *)self creationDate];
  LODWORD(v112[4]) = v23 == 0;
  v84 = v23;
  if (v23 || ([v4 creationDate], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = [(SWCollaborationMetadata *)self creationDate];
    v81 = [v4 creationDate];
    v82 = v24;
    if (![v24 isEqual:?])
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

  v25 = [(SWCollaborationMetadata *)self contentType];
  LODWORD(v112[3]) = v25 == 0;
  v80 = v25;
  if (v25 || ([v4 contentType], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = [(SWCollaborationMetadata *)self contentType];
    v77 = [v4 contentType];
    v78 = v26;
    if (![v26 isEqual:?])
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

  v27 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  LODWORD(v112[2]) = v27 == 0;
  v76 = v27;
  if (v27 || ([v4 ckAppBundleIDs], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v28 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
    v73 = [v4 ckAppBundleIDs];
    v74 = v28;
    if (![v28 isEqual:?])
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

  v29 = [(SWCollaborationMetadata *)self initiatorHandle];
  LODWORD(v112[1]) = v29 == 0;
  v72 = v29;
  if (v29 || ([v4 initiatorHandle], (v67 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = [(SWCollaborationMetadata *)self initiatorHandle];
    v69 = [v4 initiatorHandle];
    v70 = v30;
    if (![v30 isEqual:?])
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

  v31 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  HIDWORD(v111) = v31 == 0;
  v68 = v31;
  if (v31 || ([v4 initiatorNameComponents], (v63 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v32 = [(SWCollaborationMetadata *)self initiatorNameComponents];
    v65 = [v4 initiatorNameComponents];
    v66 = v32;
    if (![v32 isEqual:?])
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

  v33 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  HIDWORD(v110) = v33 == 0;
  v64 = v33;
  if (v33 || ([v4 handleToIdentityMap], (v59 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34 = [(SWCollaborationMetadata *)self handleToIdentityMap];
    v61 = [v4 handleToIdentityMap];
    v62 = v34;
    if (![v34 isEqual:?])
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

  v35 = [(SWCollaborationMetadata *)self sourceProcessData];
  HIDWORD(v109) = v35 == 0;
  v60 = v35;
  if (v35 || ([v4 sourceProcessData], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v36 = [(SWCollaborationMetadata *)self sourceProcessData];
    v57 = [v4 sourceProcessData];
    v58 = v36;
    if (![v36 isEqual:?])
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

  v37 = [(SWCollaborationMetadata *)self containerSetupInfo];
  *&v108[8] = v37 == 0;
  v56 = v37;
  if (v37 || ([v4 containerSetupInfo], (v51 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = [(SWCollaborationMetadata *)self containerSetupInfo];
    v53 = [v4 containerSetupInfo];
    v54 = v38;
    if (![v38 isEqual:?])
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

  v39 = [(SWCollaborationMetadata *)self userSelectedOptions];
  HIDWORD(v106) = v39 == 0;
  v52 = v39;
  if (v39 || ([v4 userSelectedOptions], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = [(SWCollaborationMetadata *)self userSelectedOptions];
    v49 = [v4 userSelectedOptions];
    v50 = v40;
    if (![v40 isEqual:?])
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

  v41 = [(SWCollaborationMetadata *)self type];
  v45 = v41 == 0;
  v48 = v41;
  if (v41 || ([v4 type], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = [(SWCollaborationMetadata *)self type];
    v43 = [v4 type];
    v108[4] = [v42 isEqual:v43];
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

  if (!v114)
  {
  }

  return v108[4];
}

- (unint64_t)hash
{
  v31 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v3 = [v31 hash];
  v30 = [(SWCollaborationMetadata *)self localIdentifier];
  v4 = [v30 hash] ^ v3;
  v29 = [(SWCollaborationMetadata *)self title];
  v5 = [v29 hash];
  v28 = [(SWCollaborationMetadata *)self defaultShareOptions];
  v6 = v4 ^ v5 ^ [v28 hash];
  v27 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  v7 = [v27 hash];
  v26 = [(SWCollaborationMetadata *)self creationDate];
  v8 = v7 ^ [v26 hash];
  v9 = [(SWCollaborationMetadata *)self contentType];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v12 = [v11 hash];
  v13 = [(SWCollaborationMetadata *)self initiatorHandle];
  v14 = v12 ^ [v13 hash];
  v15 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v16 = v14 ^ [v15 hash];
  v17 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v25 = v10 ^ v16 ^ [v17 hash];
  v18 = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [v18 hash];
  v20 = [(SWCollaborationMetadata *)self containerSetupInfo];
  v21 = v19 ^ [v20 hash];
  v22 = [(SWCollaborationMetadata *)self type];
  v23 = v21 ^ [v22 hash];

  return v25 ^ v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = [objc_opt_class() allocWithZone:a3];
  v20 = [(SWCollaborationMetadata *)self localIdentifier];
  v15 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v13 = [(SWCollaborationMetadata *)self title];
  v17 = [(SWCollaborationMetadata *)self defaultShareOptions];
  v16 = [(SWCollaborationMetadata *)self defaultOptions];
  v14 = [(SWCollaborationMetadata *)self creationDate];
  v12 = [(SWCollaborationMetadata *)self contentType];
  v4 = [(SWCollaborationMetadata *)self initiatorHandle];
  v5 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v6 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v7 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v8 = [(SWCollaborationMetadata *)self containerSetupInfo];
  v9 = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [v18 initWithLocalIdentifier:v20 collaborationIdentifier:v15 title:v13 defaultShareOptions:v17 defaultOptions:v16 creationDate:v14 contentType:v12 initiatorHandle:v4 initiatorNameComponents:v5 ckAppBundleIDs:v6 handleToIdentityMap:v7 containerSetupInfo:v8 sourceProcessData:v9];

  v10 = [(SWCollaborationMetadata *)self type];
  [v19 setType:v10];

  return v19;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v18 = [(SWCollaborationMetadata *)_SWMutableCollaborationMetadata allocWithZone:a3];
  v20 = [(SWCollaborationMetadata *)self localIdentifier];
  v15 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v13 = [(SWCollaborationMetadata *)self title];
  v17 = [(SWCollaborationMetadata *)self defaultShareOptions];
  v16 = [(SWCollaborationMetadata *)self defaultOptions];
  v14 = [(SWCollaborationMetadata *)self creationDate];
  v12 = [(SWCollaborationMetadata *)self contentType];
  v4 = [(SWCollaborationMetadata *)self initiatorHandle];
  v5 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v6 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v7 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v8 = [(SWCollaborationMetadata *)self containerSetupInfo];
  v9 = [(SWCollaborationMetadata *)self sourceProcessData];
  v19 = [(SWCollaborationMetadata *)v18 initWithLocalIdentifier:v20 collaborationIdentifier:v15 title:v13 defaultShareOptions:v17 defaultOptions:v16 creationDate:v14 contentType:v12 initiatorHandle:v4 initiatorNameComponents:v5 ckAppBundleIDs:v6 handleToIdentityMap:v7 containerSetupInfo:v8 sourceProcessData:v9];

  v10 = [(SWCollaborationMetadata *)self type];
  [(SWCollaborationMetadata *)v19 setType:v10];

  return v19;
}

- (SWCollaborationMetadata)initWithCoder:(id)a3
{
  v61[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_collaborationIdentifier);
  v58 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_localIdentifier);
  v56 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_title);
  v54 = [v3 decodeObjectOfClass:v8 forKey:v9];

  v10 = MEMORY[0x1E695DFD8];
  v61[0] = objc_opt_class();
  v61[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = NSStringFromSelector(sel_defaultShareOptions);
  v57 = [v3 decodeObjectOfClasses:v12 forKey:v13];

  v14 = MEMORY[0x1E695DFD8];
  v60[0] = objc_opt_class();
  v60[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = NSStringFromSelector(sel_userSelectedShareOptions);
  v53 = [v3 decodeObjectOfClasses:v16 forKey:v17];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_creationDate);
  v52 = [v3 decodeObjectOfClass:v18 forKey:v19];

  v20 = objc_opt_class();
  v21 = NSStringFromSelector(sel_contentType);
  v22 = [v3 decodeObjectOfClass:v20 forKey:v21];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v26 = NSStringFromSelector(sel_ckAppBundleIDs);
  v27 = [v3 decodeObjectOfClasses:v25 forKey:v26];

  v28 = objc_opt_class();
  v29 = NSStringFromSelector(sel_initiatorHandle);
  v30 = [v3 decodeObjectOfClass:v28 forKey:v29];

  v31 = objc_opt_class();
  v32 = NSStringFromSelector(sel_initiatorNameComponents);
  v51 = [v3 decodeObjectOfClass:v31 forKey:v32];

  v33 = MEMORY[0x1E695DFA8];
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v59[2] = objc_opt_class();
  v59[3] = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v35 = [v33 setWithArray:v34];
  v36 = NSStringFromSelector(sel_handleToIdentityMap);
  v50 = [v3 decodeObjectOfClasses:v35 forKey:v36];

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_containerSetupInfo);
  v49 = [v3 decodeObjectOfClass:v37 forKey:v38];

  v39 = objc_opt_class();
  v40 = NSStringFromSelector(sel_sourceProcessData);
  v41 = [v3 decodeObjectOfClass:v39 forKey:v40];

  v42 = objc_opt_class();
  v43 = NSStringFromSelector(sel_type);
  v44 = [v3 decodeObjectOfClass:v42 forKey:v43];

  v45 = [v57 optionsGroups];
  v46 = [(SWCollaborationMetadata *)self initWithLocalIdentifier:v56 collaborationIdentifier:v58 title:v54 defaultShareOptions:v57 defaultOptions:v45 creationDate:v52 contentType:v22 initiatorHandle:v30 initiatorNameComponents:v51 ckAppBundleIDs:v27 handleToIdentityMap:v50 containerSetupInfo:v49 sourceProcessData:v41];

  [(SWCollaborationMetadata *)v46 setUserSelectedShareOptions:v53];
  [(SWCollaborationMetadata *)v46 setType:v44];

  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationMetadata *)self collaborationIdentifier];
  v6 = NSStringFromSelector(sel_collaborationIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SWCollaborationMetadata *)self localIdentifier];
  v8 = NSStringFromSelector(sel_localIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SWCollaborationMetadata *)self title];
  v10 = NSStringFromSelector(sel_title);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SWCollaborationMetadata *)self defaultShareOptions];
  v12 = NSStringFromSelector(sel_defaultShareOptions);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(SWCollaborationMetadata *)self userSelectedShareOptions];
  v14 = NSStringFromSelector(sel_userSelectedShareOptions);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(SWCollaborationMetadata *)self creationDate];
  v16 = NSStringFromSelector(sel_creationDate);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(SWCollaborationMetadata *)self contentType];
  v18 = NSStringFromSelector(sel_contentType);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(SWCollaborationMetadata *)self ckAppBundleIDs];
  v20 = NSStringFromSelector(sel_ckAppBundleIDs);
  [v4 encodeObject:v19 forKey:v20];

  v21 = [(SWCollaborationMetadata *)self initiatorHandle];
  v22 = NSStringFromSelector(sel_initiatorHandle);
  [v4 encodeObject:v21 forKey:v22];

  v23 = [(SWCollaborationMetadata *)self initiatorNameComponents];
  v24 = NSStringFromSelector(sel_initiatorNameComponents);
  [v4 encodeObject:v23 forKey:v24];

  v25 = [(SWCollaborationMetadata *)self handleToIdentityMap];
  v26 = NSStringFromSelector(sel_handleToIdentityMap);
  [v4 encodeObject:v25 forKey:v26];

  v27 = [(SWCollaborationMetadata *)self sourceProcessData];
  v28 = NSStringFromSelector(sel_sourceProcessData);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(SWCollaborationMetadata *)self containerSetupInfo];
  v30 = NSStringFromSelector(sel_containerSetupInfo);
  [v4 encodeObject:v29 forKey:v30];

  v32 = [(SWCollaborationMetadata *)self type];
  v31 = NSStringFromSelector(sel_type);
  [v4 encodeObject:v32 forKey:v31];
}

@end