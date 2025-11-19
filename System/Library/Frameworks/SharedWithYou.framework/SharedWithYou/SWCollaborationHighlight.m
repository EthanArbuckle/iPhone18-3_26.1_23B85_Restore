@interface SWCollaborationHighlight
- (BOOL)isEqual:(id)a3;
- (NSDate)creationDate;
- (NSDictionary)earliestAttributionIdentifiers;
- (NSDictionary)handleToIdentityMap;
- (NSString)collaborationIdentifier;
- (NSString)fileProviderID;
- (NSString)title;
- (SWCollaborationHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4;
- (SWCollaborationHighlight)initWithCSSearchableItemUniqueIdentifier:(id)a3 error:(id *)a4;
- (SWCollaborationHighlight)initWithCoder:(id)a3;
- (SWCollaborationHighlight)initWithDictionary:(id)a3;
- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)a3;
- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)a3 andType:(unsigned __int8)a4;
- (SWPersonIdentity)localIdentity;
- (SWPersonIdentityProof)localProofOfInclusion;
- (UTType)contentType;
- (id)URL;
- (id)attributions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)timestamp;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCollaborationHighlight

- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = SWCollaborationHighlight, v6 = [(SWHighlight *)&v9 initWithSLHighlight:v5], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_slCollaborationHighlight, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SWCollaborationHighlight)initWithSLCollaborationHighlight:(id)a3 andType:(unsigned __int8)a4
{
  v7 = a3;
  if (v7 && (v11.receiver = self, v11.super_class = SWCollaborationHighlight, v8 = [(SWHighlight *)&v11 initWithSLHighlight:v7], (self = v8) != 0))
  {
    objc_storeStrong(&v8->_slCollaborationHighlight, a3);
    self->_highlightType = a4;
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SWCollaborationHighlight)initWithCSSearchableItemUniqueIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 containsString:@"at_"];
  v8 = [objc_alloc(MEMORY[0x1E69D37C8]) initWithCSSearchableItemUniqueIdentifier:v6 forContentType:v7 error:a4];

  v9 = [(SWCollaborationHighlight *)self initWithSLCollaborationHighlight:v8 andType:v7];
  return v9;
}

- (SWCollaborationHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69D37C8];
  v7 = a3;
  v8 = [[v6 alloc] initWithCSSearchableItem:v7 error:a4];
  v9 = [v7 uniqueIdentifier];

  v10 = [v9 containsString:@"at_"];
  v11 = [(SWCollaborationHighlight *)self initWithSLCollaborationHighlight:v8 andType:v10];

  return v11;
}

- (SWCollaborationHighlight)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x1E69D37C8];
  v5 = a3;
  v6 = [[v4 alloc] initWithDictionary:v5];
  v7 = [v5 objectForKeyedSubscript:@"ct"];

  v8 = -[SWCollaborationHighlight initWithSLCollaborationHighlight:andType:](self, "initWithSLCollaborationHighlight:andType:", v6, [v7 containsString:@"at_"]);
  return v8;
}

- (UTType)contentType
{
  v2 = MEMORY[0x1E6982C40];
  v3 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v4 = [v3 contentType];
  v5 = [v2 typeWithIdentifier:v4];

  return v5;
}

- (NSString)title
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 fileName];

  return v3;
}

- (id)URL
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 resourceURL];

  return v3;
}

- (id)attributions
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 attributions];

  return v3;
}

- (id)timestamp
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 timestamp];

  return v3;
}

- (NSString)collaborationIdentifier
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 collaborationIdentifier];

  return v3;
}

- (NSDictionary)earliestAttributionIdentifiers
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 earliestAttributionIdentifiers];

  return v3;
}

- (SWPersonIdentity)localIdentity
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 localIdentity];

  return v3;
}

- (SWPersonIdentityProof)localProofOfInclusion
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 localProofOfInclusion];

  return v3;
}

- (NSDictionary)handleToIdentityMap
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 handleToIdentityMap];

  return v3;
}

- (NSString)fileProviderID
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 fileProviderID];

  return v3;
}

- (NSDate)creationDate
{
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 creationDate];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SWCollaborationHighlight;
  v4 = a3;
  [(SWHighlight *)&v7 encodeWithCoder:v4];
  v5 = [(SWCollaborationHighlight *)self slCollaborationHighlight:v7.receiver];
  [v4 encodeObject:v5 forKey:@"slc"];

  v6 = [(SWCollaborationHighlight *)self collaborationIdentifier];
  [v4 encodeObject:v6 forKey:@"slcid"];
}

- (SWCollaborationHighlight)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SWCollaborationHighlight;
  v5 = [(SWHighlight *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slc"];
    slCollaborationHighlight = v5->_slCollaborationHighlight;
    v5->_slCollaborationHighlight = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slcid"];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v6 = [v4 initWithSLCollaborationHighlight:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
    v7 = [v5 slCollaborationHighlight];
    if ([v6 isEqual:v7])
    {
      v8 = [(SWCollaborationHighlight *)self collaborationIdentifier];
      v9 = [v5 collaborationIdentifier];
      v10 = [v8 isEqualToString:v9];
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
  v2 = [(SWCollaborationHighlight *)self slCollaborationHighlight];
  v3 = [v2 hash];

  return v3;
}

@end