@interface AFPeerContentTuple
- (AFPeerContentTuple)initWithCoder:(id)coder;
- (AFPeerContentTuple)initWithInfo:(id)info content:(id)content;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFPeerContentTuple

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFPeerContentTuple;
  v4 = [(AFPeerContentTuple *)&v8 description];
  v5 = AFPeerInfoGetCompactDescription(self->_info);
  v6 = [v3 initWithFormat:@"%@ (%@: %@)", v4, v5, self->_content];

  return v6;
}

- (AFPeerContentTuple)initWithCoder:(id)coder
{
  v13[12] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFPeerContentTuple.info"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v13[6] = objc_opt_class();
  v13[7] = objc_opt_class();
  v13[8] = objc_opt_class();
  v13[9] = objc_opt_class();
  v13[10] = objc_opt_class();
  v13[11] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:12];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AFPeerContentTuple.content"];

  v10 = [(AFPeerContentTuple *)self initWithInfo:v5 content:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  info = self->_info;
  coderCopy = coder;
  [coderCopy encodeObject:info forKey:@"AFPeerContentTuple.info"];
  [coderCopy encodeObject:self->_content forKey:@"AFPeerContentTuple.content"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      info = [(AFPeerContentTuple *)self info];
      info2 = [(AFPeerContentTuple *)v5 info];
      if ([info isEqual:info2])
      {
        content = [(AFPeerContentTuple *)self content];
        content2 = [(AFPeerContentTuple *)v5 content];
        v10 = [content isEqual:content2];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AFPeerContentTuple)initWithInfo:(id)info content:(id)content
{
  infoCopy = info;
  contentCopy = content;
  v9 = contentCopy;
  if (infoCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFPeerContentTuple.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"info != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"AFPeerContentTuple.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"content != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = AFPeerContentTuple;
  v10 = [(AFPeerContentTuple *)&v18 init];
  if (v10)
  {
    v11 = [infoCopy copy];
    info = v10->_info;
    v10->_info = v11;

    v13 = [v9 copy];
    content = v10->_content;
    v10->_content = v13;
  }

  return v10;
}

@end