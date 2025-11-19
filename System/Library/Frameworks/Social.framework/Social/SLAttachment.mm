@interface SLAttachment
- (SLAttachment)initWithCoder:(id)a3;
- (SLAttachment)initWithPayload:(id)a3 type:(int64_t)a4 previewImage:(id)a5;
- (id)_uniqueIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setItemProvider:(id)a3;
- (void)setPayload:(id)a3;
- (void)setPayloadUpdateObserverWithBlock:(id)a3;
- (void)setPreviewImage:(id)a3;
- (void)setPreviewUpdateObserverWithBlock:(id)a3;
@end

@implementation SLAttachment

- (SLAttachment)initWithPayload:(id)a3 type:(int64_t)a4 previewImage:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SLAttachment;
  v11 = [(SLAttachment *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_payload, a3);
    v12->_type = a4;
    objc_storeStrong(&v12->_previewImage, a5);
    v13 = [(SLAttachment *)v12 _uniqueIdentifier];
    identifier = v12->_identifier;
    v12->_identifier = v13;
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

- (SLAttachment)initWithCoder:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SLAttachment;
  v5 = [(SLAttachment *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"payload"];
    [(SLAttachment *)v5 setPayload:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewImage"];
    [(SLAttachment *)v5 setPreviewImage:v12];

    -[SLAttachment setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    -[SLAttachment setPreviewType:](v5, "setPreviewType:", [v4 decodeIntegerForKey:@"previewType"]);
    -[SLAttachment setDownsampleStatus:](v5, "setDownsampleStatus:", [v4 decodeIntegerForKey:@"downsampleStatus"]);
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v4 encodeObject:v10 forKey:v9];
      }

      v6 = [&unk_1F4202B68 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v4 encodeInteger:-[SLAttachment type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:-[SLAttachment previewType](self forKey:{"previewType"), @"previewType"}];
  [v4 encodeInteger:-[SLAttachment downsampleStatus](self forKey:{"downsampleStatus"), @"downsampleStatus"}];
}

- (void)setPreviewImage:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_previewImage, a3);
  previewUpdateObserver = self->_previewUpdateObserver;
  if (previewUpdateObserver)
  {
    previewUpdateObserver[2]();
  }
}

- (void)setPayload:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_payload, a3);
  payloadUpdateObserver = self->_payloadUpdateObserver;
  if (payloadUpdateObserver)
  {
    payloadUpdateObserver[2]();
  }
}

- (void)setPreviewUpdateObserverWithBlock:(id)a3
{
  self->_previewUpdateObserver = MEMORY[0x1C6917BF0](a3, a2);

  MEMORY[0x1EEE66BB8]();
}

- (void)setPayloadUpdateObserverWithBlock:(id)a3
{
  self->_payloadUpdateObserver = MEMORY[0x1C6917BF0](a3, a2);

  MEMORY[0x1EEE66BB8]();
}

- (void)setItemProvider:(id)a3
{
  objc_storeStrong(&self->_itemProvider, a3);
  self->_itemProviderPreviewType = 0;
  if (self->_itemProvider)
  {
    v5 = [(SLAttachment *)self itemProvider];
    v6 = [v5 userInfo];
    v9 = [v6 objectForKeyedSubscript:@"SLItemProviderHasPreview"];

    if (v9)
    {
      _SLLog(v3, 7, @"SLAttachment assigned itemProvider with SLItemProviderHasPreview %@");
      v7 = [v9 BOOLValue];
      v8 = 1;
      if (!v7)
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
  v4 = [(SLAttachment *)self identifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLAttachment type](self, "type")}];
  v6 = [(SLAttachment *)self payload];
  v7 = [(SLAttachment *)self previewImage];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLAttachment downsampleStatus](self, "downsampleStatus")}];
  v9 = [(SLAttachment *)self payloadSourceFileURL];
  v10 = [v3 stringWithFormat:@"attachment %p { \n\t identifier=%@, \n\t type=%@, \n\t payload=%p, \n\t previewImage=%@, \n\t downsampleStatus=%@, \n\t payloadSourceFileURL=%@, \n", self, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end