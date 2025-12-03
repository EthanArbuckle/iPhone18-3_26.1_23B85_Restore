@interface ENNoteRef
+ (id)noteRefFromData:(id)data;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (ENNoteRef)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENNoteRef

- (id)wfSerializedRepresentation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"link.contentkit.ennoteref";
  asData = [(ENNoteRef *)self asData];
  v7[0] = asData;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKey:@"link.contentkit.ennoteref"];
  if (v4)
  {
    v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.ennoteref"];
    v6 = [ENNoteRef noteRefFromData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  type = [(ENNoteRef *)self type];
  if (type > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278C19EB0[type];
  }

  v6 = objc_opt_class();
  guid = [(ENNoteRef *)self guid];
  [v3 appendFormat:@"<%@: %p; guid = %@; type = %@", v6, self, guid, v5];

  linkedNotebook = [(ENNoteRef *)self linkedNotebook];

  if (linkedNotebook)
  {
    linkedNotebook2 = [(ENNoteRef *)self linkedNotebook];
    shardId = [linkedNotebook2 shardId];
    [v3 appendFormat:@"; link shard = %@", shardId];
  }

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  type = [(ENNoteRef *)self type];
  guid = [(ENNoteRef *)self guid];
  v5 = [guid hash] - type + 32 * type;

  linkedNotebook = [(ENNoteRef *)self linkedNotebook];
  v7 = [linkedNotebook hash] - v5 + 32 * v5;

  return v7 + 29791;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        type = [(ENNoteRef *)v7 type];
        if (type != [(ENNoteRef *)self type])
        {
          v12 = 0;
LABEL_18:

          goto LABEL_19;
        }

        guid = [(ENNoteRef *)self guid];
        guid2 = [(ENNoteRef *)v7 guid];
        if (guid != guid2)
        {
          guid3 = [(ENNoteRef *)v7 guid];
          guid4 = [(ENNoteRef *)self guid];
          if (![guid3 isEqualToString:guid4])
          {
            v12 = 0;
LABEL_16:

LABEL_17:
            goto LABEL_18;
          }

          v19 = guid3;
        }

        linkedNotebook = [(ENNoteRef *)self linkedNotebook];
        linkedNotebook2 = [(ENNoteRef *)v7 linkedNotebook];
        v15 = linkedNotebook2;
        if (linkedNotebook == linkedNotebook2)
        {

          v12 = 1;
        }

        else
        {
          linkedNotebook3 = [(ENNoteRef *)v7 linkedNotebook];
          linkedNotebook4 = [(ENNoteRef *)self linkedNotebook];
          v12 = [linkedNotebook3 isEqual:linkedNotebook4];
        }

        guid3 = v19;
        if (guid == guid2)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ENNoteRef);
  [(ENNoteRef *)v4 setType:[(ENNoteRef *)self type]];
  guid = [(ENNoteRef *)self guid];
  [(ENNoteRef *)v4 setGuid:guid];

  linkedNotebook = [(ENNoteRef *)self linkedNotebook];
  [(ENNoteRef *)v4 setLinkedNotebook:linkedNotebook];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[ENNoteRef type](self forKey:{"type"), @"type"}];
  guid = [(ENNoteRef *)self guid];
  [coderCopy encodeObject:guid forKey:@"guid"];

  linkedNotebook = [(ENNoteRef *)self linkedNotebook];
  [coderCopy encodeObject:linkedNotebook forKey:@"linkedNotebook"];
}

- (ENNoteRef)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ENNoteRef;
  v5 = [(ENNoteRef *)&v9 init];
  if (v5)
  {
    -[ENNoteRef setType:](v5, "setType:", [coderCopy decodeInt32ForKey:@"type"]);
    v6 = [coderCopy decodeObjectForKey:@"guid"];
    [(ENNoteRef *)v5 setGuid:v6];

    v7 = [coderCopy decodeObjectForKey:@"linkedNotebook"];
    [(ENNoteRef *)v5 setLinkedNotebook:v7];
  }

  return v5;
}

+ (id)noteRefFromData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:dataCopy];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v4;
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end