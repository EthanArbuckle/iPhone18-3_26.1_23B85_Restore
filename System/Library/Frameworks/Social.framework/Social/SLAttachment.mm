@interface SLAttachment
- (SLAttachment)initWithCoder:(id)coder;
- (SLAttachment)initWithPayload:(id)payload type:(int64_t)type previewImage:(id)image;
- (id)_uniqueIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setItemProvider:(id)provider;
- (void)setPayload:(id)payload;
- (void)setPayloadUpdateObserverWithBlock:(id)block;
- (void)setPreviewImage:(id)image;
- (void)setPreviewUpdateObserverWithBlock:(id)block;
@end

@implementation SLAttachment

- (SLAttachment)initWithPayload:(id)payload type:(int64_t)type previewImage:(id)image
{
  payloadCopy = payload;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = SLAttachment;
  v11 = [(SLAttachment *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_payload, payload);
    v12->_type = type;
    objc_storeStrong(&v12->_previewImage, image);
    _uniqueIdentifier = [(SLAttachment *)v12 _uniqueIdentifier];
    identifier = v12->_identifier;
    v12->_identifier = _uniqueIdentifier;
  }

  return v12;
}

- (id)_uniqueIdentifier
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v4 = CFUUIDCreateString(v2, v3);
  CFRelease(v3);

  return v4;
}

- (SLAttachment)initWithCoder:(id)coder
{
  v16[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SLAttachment;
  v5 = [(SLAttachment *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"payload"];
    [(SLAttachment *)v5 setPayload:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewImage"];
    [(SLAttachment *)v5 setPreviewImage:v12];

    -[SLAttachment setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    -[SLAttachment setPreviewType:](v5, "setPreviewType:", [coderCopy decodeIntegerForKey:@"previewType"]);
    -[SLAttachment setDownsampleStatus:](v5, "setDownsampleStatus:", [coderCopy decodeIntegerForKey:@"downsampleStatus"]);
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&unk_1F4202B68 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_1F4202B68);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(SLAttachment *)self valueForKey:v9];
        [coderCopy encodeObject:v10 forKey:v9];
      }

      v6 = [&unk_1F4202B68 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [coderCopy encodeInteger:-[SLAttachment type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[SLAttachment previewType](self forKey:{"previewType"), @"previewType"}];
  [coderCopy encodeInteger:-[SLAttachment downsampleStatus](self forKey:{"downsampleStatus"), @"downsampleStatus"}];
}

- (void)setPreviewImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_previewImage, image);
  previewUpdateObserver = self->_previewUpdateObserver;
  if (previewUpdateObserver)
  {
    previewUpdateObserver[2]();
  }
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  objc_storeStrong(&self->_payload, payload);
  payloadUpdateObserver = self->_payloadUpdateObserver;
  if (payloadUpdateObserver)
  {
    payloadUpdateObserver[2]();
  }
}

- (void)setPreviewUpdateObserverWithBlock:(id)block
{
  self->_previewUpdateObserver = MEMORY[0x1C6917BF0](block, a2);

  MEMORY[0x1EEE66BB8]();
}

- (void)setPayloadUpdateObserverWithBlock:(id)block
{
  self->_payloadUpdateObserver = MEMORY[0x1C6917BF0](block, a2);

  MEMORY[0x1EEE66BB8]();
}

- (void)setItemProvider:(id)provider
{
  objc_storeStrong(&self->_itemProvider, provider);
  self->_itemProviderPreviewType = 0;
  if (self->_itemProvider)
  {
    itemProvider = [(SLAttachment *)self itemProvider];
    userInfo = [itemProvider userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"SLItemProviderHasPreview"];

    if (v9)
    {
      _SLLog(v3, 7, @"SLAttachment assigned itemProvider with SLItemProviderHasPreview %@");
      bOOLValue = [v9 BOOLValue];
      v8 = 1;
      if (!bOOLValue)
      {
        v8 = 2;
      }

      self->_itemProviderPreviewType = v8;
    }

    else
    {
      _SLLog(v3, 7, @"SLAttachment assigned itemProvider with no SLItemProviderHasPreview.");
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(SLAttachment *)self identifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLAttachment type](self, "type")}];
  payload = [(SLAttachment *)self payload];
  previewImage = [(SLAttachment *)self previewImage];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLAttachment downsampleStatus](self, "downsampleStatus")}];
  payloadSourceFileURL = [(SLAttachment *)self payloadSourceFileURL];
  v10 = [v3 stringWithFormat:@"attachment %p { \n\t identifier=%@, \n\t type=%@, \n\t payload=%p, \n\t previewImage=%@, \n\t downsampleStatus=%@, \n\t payloadSourceFileURL=%@, \n", self, identifier, v5, payload, previewImage, v8, payloadSourceFileURL];

  return v10;
}

@end