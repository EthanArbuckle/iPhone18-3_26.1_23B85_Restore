@interface SWCollaborationHighlight
- (BOOL)isEqual:(id)equal;
- (NSDate)creationDate;
- (NSDictionary)earliestAttributionIdentifiers;
- (NSDictionary)handleToIdentityMap;
- (NSString)collaborationIdentifier;
- (NSString)fileProviderID;
- (NSString)title;
- (SWCollaborationHighlight)initWithCSSearchableItem:(id)item error:(id *)error;
- (SWCollaborationHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier error:(id *)error;
- (SWCollaborationHighlight)initWithCoder:(id)coder;
- (SWCollaborationHighlight)initWithDictionary:(id)dictionary;
- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)highlight;
- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)highlight andType:(unsigned __int8)type;
- (SWPersonIdentity)localIdentity;
- (SWPersonIdentityProof)localProofOfInclusion;
- (UTType)contentType;
- (id)URL;
- (id)attributions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)timestamp;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCollaborationHighlight

- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)highlight
{
  highlightCopy = highlight;
  if (highlightCopy && (v9.receiver = self, v9.super_class = SWCollaborationHighlight, v6 = [(SWHighlight *)&v9 initWithSLHighlight:highlightCopy], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_slCollaborationHighlight, highlight);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)highlight andType:(unsigned __int8)type
{
  highlightCopy = highlight;
  if (highlightCopy && (v11.receiver = self, v11.super_class = SWCollaborationHighlight, v8 = [(SWHighlight *)&v11 initWithSLHighlight:highlightCopy], (self = v8) != 0))
  {
    objc_storeStrong(&v8->_slCollaborationHighlight, highlight);
    self->_highlightType = type;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SWCollaborationHighlight)initWithCSSearchableItemUniqueIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [identifierCopy containsString:@"at_"];
  v8 = [objc_alloc(MEMORY[0x1E69D37C8]) initWithCSSearchableItemUniqueIdentifier:identifierCopy forContentType:v7 error:error];

  v9 = [(SWCollaborationHighlight *)self initWithSLCollaborationHighlight:v8 andType:v7];
  return v9;
}

- (SWCollaborationHighlight)initWithCSSearchableItem:(id)item error:(id *)error
{
  v6 = MEMORY[0x1E69D37C8];
  itemCopy = item;
  v8 = [[v6 alloc] initWithCSSearchableItem:itemCopy error:error];
  uniqueIdentifier = [itemCopy uniqueIdentifier];

  v10 = [uniqueIdentifier containsString:@"at_"];
  v11 = [(SWCollaborationHighlight *)self initWithSLCollaborationHighlight:v8 andType:v10];

  return v11;
}

- (SWCollaborationHighlight)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E69D37C8];
  dictionaryCopy = dictionary;
  v6 = [[v4 alloc] initWithDictionary:dictionaryCopy];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ct"];

  v8 = -[SWCollaborationHighlight initWithSLCollaborationHighlight:andType:](self, "initWithSLCollaborationHighlight:andType:", v6, [v7 containsString:@"at_"]);
  return v8;
}

- (UTType)contentType
{
  v2 = MEMORY[0x1E6982C40];
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  contentType = [slCollaborationHighlight contentType];
  v5 = [v2 typeWithIdentifier:contentType];

  return v5;
}

- (NSString)title
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  fileName = [slCollaborationHighlight fileName];

  return fileName;
}

- (id)URL
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  resourceURL = [slCollaborationHighlight resourceURL];

  return resourceURL;
}

- (id)attributions
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  attributions = [slCollaborationHighlight attributions];

  return attributions;
}

- (id)timestamp
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  timestamp = [slCollaborationHighlight timestamp];

  return timestamp;
}

- (NSString)collaborationIdentifier
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  collaborationIdentifier = [slCollaborationHighlight collaborationIdentifier];

  return collaborationIdentifier;
}

- (NSDictionary)earliestAttributionIdentifiers
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  earliestAttributionIdentifiers = [slCollaborationHighlight earliestAttributionIdentifiers];

  return earliestAttributionIdentifiers;
}

- (SWPersonIdentity)localIdentity
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  localIdentity = [slCollaborationHighlight localIdentity];

  return localIdentity;
}

- (SWPersonIdentityProof)localProofOfInclusion
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  localProofOfInclusion = [slCollaborationHighlight localProofOfInclusion];

  return localProofOfInclusion;
}

- (NSDictionary)handleToIdentityMap
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  handleToIdentityMap = [slCollaborationHighlight handleToIdentityMap];

  return handleToIdentityMap;
}

- (NSString)fileProviderID
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  fileProviderID = [slCollaborationHighlight fileProviderID];

  return fileProviderID;
}

- (NSDate)creationDate
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  creationDate = [slCollaborationHighlight creationDate];

  return creationDate;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SWCollaborationHighlight;
  coderCopy = coder;
  [(SWHighlight *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SWCollaborationHighlight *)self slCollaborationHighlight:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"slc"];

  collaborationIdentifier = [(SWCollaborationHighlight *)self collaborationIdentifier];
  [coderCopy encodeObject:collaborationIdentifier forKey:@"slcid"];
}

- (SWCollaborationHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SWCollaborationHighlight;
  v5 = [(SWHighlight *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slc"];
    slCollaborationHighlight = v5->_slCollaborationHighlight;
    v5->_slCollaborationHighlight = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slcid"];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v6 = [v4 initWithSLCollaborationHighlight:slCollaborationHighlight];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
    slCollaborationHighlight2 = [v5 slCollaborationHighlight];
    if ([slCollaborationHighlight isEqual:slCollaborationHighlight2])
    {
      collaborationIdentifier = [(SWCollaborationHighlight *)self collaborationIdentifier];
      collaborationIdentifier2 = [v5 collaborationIdentifier];
      v10 = [collaborationIdentifier isEqualToString:collaborationIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  slCollaborationHighlight = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [slCollaborationHighlight hash];

  return v3;
}

@end