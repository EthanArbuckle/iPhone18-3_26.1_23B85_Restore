@interface AVVideoOutputSpecification
- (AVVideoOutputSpecification)init;
- (AVVideoOutputSpecification)initWithTagCollections:(id)a3;
- (NSArray)preferredTagCollections;
- (id)_allowWideColorForTagCollection:(OpaqueCMTagCollection *)a3;
- (id)_outputSettingsForTagCollection:(OpaqueCMTagCollection *)a3;
- (id)_pixelBufferAttributesForTagCollection:(OpaqueCMTagCollection *)a3;
- (id)_videoColorPropertiesForTagCollection:(OpaqueCMTagCollection *)a3;
- (id)_videoOutputSettingsFromDictionaryRepresentation:(id)a3 exceptionReason:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setDefaultOutputSettings:(id)a3;
- (void)setOutputSettings:(id)a3 forTagCollection:(OpaqueCMTagCollection *)a4;
@end

@implementation AVVideoOutputSpecification

- (AVVideoOutputSpecification)initWithTagCollections:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AVVideoOutputSpecification;
  v5 = [(AVVideoOutputSpecification *)&v27 init];
  if (v5)
  {
    if (a3 && [a3 count])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = v6;
      v8 = *v24;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = CFGetTypeID(*(*(&v23 + 1) + 8 * v9));
          if (v10 != CMTagCollectionGetTypeID())
          {
            v12 = v5;
            v18 = MEMORY[0x1E695DF30];
            v19 = *MEMORY[0x1E695D940];
            v20 = @"tagCollections can only contains elements of type CMTagCollectionRef";
            goto LABEL_15;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (!v7)
        {
LABEL_12:
          v5->_tagCollections = [a3 copy];
          v5->_tagCollectionToOutputSettingsMapping = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          return v5;
        }
      }
    }

    v22 = v5;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = @"tagCollections must not be nil or empty";
LABEL_15:
    v21 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(v5 userInfo:{a2, v20, v13, v14, v15, v16, v17, v23), 0}];
    objc_exception_throw(v21);
  }

  return v5;
}

- (AVVideoOutputSpecification)init
{
  v3.receiver = self;
  v3.super_class = AVVideoOutputSpecification;
  return [(AVVideoOutputSpecification *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVVideoOutputSpecification;
  [(AVVideoOutputSpecification *)&v3 dealloc];
}

- (NSArray)preferredTagCollections
{
  v2 = [(NSArray *)self->_tagCollections copy];

  return v2;
}

- (id)_videoOutputSettingsFromDictionaryRepresentation:(id)a3 exceptionReason:(id *)a4
{
  v16 = 0;
  if (!a3)
  {
    return 0;
  }

  v7 = [AVVideoOutputSettings _videoOutputSettingsWithVideoSettingsDictionary:a3 exceptionReason:&v16];
  v8 = v16;
  if (v16)
  {
    goto LABEL_8;
  }

  if ([v7 willYieldCompressedSamples])
  {
    v8 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"AVVideoOutputSpecification does not support compressed output", v9, v10, v11, v12, v13, v15);
    if (!v8)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v8 = v16;
  if (v16)
  {
LABEL_8:
    v7 = 0;
    *a4 = v8;
  }

  return v7;
}

- (void)setOutputSettings:(id)a3 forTagCollection:(OpaqueCMTagCollection *)a4
{
  v18 = 0;
  if (![(NSArray *)[(AVVideoOutputSpecification *)self preferredTagCollections] containsObject:a4])
  {
    v15 = MEMORY[0x1E696AEC0];
    v17 = a4;
    [(AVVideoOutputSpecification *)self preferredTagCollections];
    v14 = [v15 stringWithFormat:@"Invalid mapping, called with tagCollection (%@) that does not match any tagCollection in preferredTagCollections (%@)"];
LABEL_5:
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v14, v9, v10, v11, v12, v13, v17), 0}];
    objc_exception_throw(v16);
  }

  v8 = [(AVVideoOutputSpecification *)self _videoOutputSettingsFromDictionaryRepresentation:a3 exceptionReason:&v18];
  v14 = v18;
  if (v18)
  {
    goto LABEL_5;
  }

  [(NSMutableDictionary *)self->_tagCollectionToOutputSettingsMapping setObject:v8 forKeyedSubscript:a4];
}

- (void)setDefaultOutputSettings:(id)a3
{
  v13 = 0;

  self->_defaultOutputSettings = [(AVVideoOutputSpecification *)self _videoOutputSettingsFromDictionaryRepresentation:a3 exceptionReason:&v13];
  if (v13)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }
}

- (id)_pixelBufferAttributesForTagCollection:(OpaqueCMTagCollection *)a3
{
  v3 = [(AVVideoOutputSpecification *)self _outputSettingsForTagCollection:a3];

  return [v3 pixelBufferAttributes];
}

- (id)_outputSettingsForTagCollection:(OpaqueCMTagCollection *)a3
{
  v4 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_tagCollectionToOutputSettingsMapping objectForKeyedSubscript:{a3), "copy"}];
  if (!v4)
  {
    v4 = [(AVDecodedVideoSettingsForFig *)self->_defaultOutputSettings copy];
  }

  return v4;
}

- (id)_videoColorPropertiesForTagCollection:(OpaqueCMTagCollection *)a3
{
  v3 = [objc_msgSend(objc_msgSend(-[AVVideoOutputSpecification _outputSettingsForTagCollection:](self _outputSettingsForTagCollection:{a3), "videoSettingsDictionary"), "objectForKeyedSubscript:", @"AVVideoColorPropertiesKey", "copy"}];

  return v3;
}

- (id)_allowWideColorForTagCollection:(OpaqueCMTagCollection *)a3
{
  v3 = [-[AVVideoOutputSpecification _outputSettingsForTagCollection:](self _outputSettingsForTagCollection:{a3), "videoSettingsDictionary"}];

  return [v3 objectForKeyedSubscript:@"AVVideoAllowWideColorKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVVideoOutputSpecification);
  v4->_defaultOutputSettings = [(AVDecodedVideoSettingsForFig *)self->_defaultOutputSettings copy];
  v4->_tagCollectionToOutputSettingsMapping = [(NSMutableDictionary *)self->_tagCollectionToOutputSettingsMapping copy];
  v4->_tagCollections = [(NSArray *)[(AVVideoOutputSpecification *)self preferredTagCollections] copy];
  return v4;
}

@end