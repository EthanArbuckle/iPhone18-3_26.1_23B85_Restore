@interface _INBundleImage
- (BOOL)_isSystem;
- (_INBundleImage)initWithCoder:(id)a3;
- (_INBundleImage)initWithStringRepresentation:(id)a3;
- (id)_URLRepresentation;
- (id)_bundleIdentifier;
- (id)_bundlePath;
- (id)_copyWithSubclass:(Class)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithURLRepresentation:(id)a3;
- (id)stringRepresentation;
- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5;
- (void)_setBundleIdentifier:(id)a3;
- (void)_setBundlePath:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INBundleImage

- (id)stringRepresentation
{
  v3 = [(_INBundleImage *)self imageBundle];
  v4 = [v3 bundlePath];

  if (v4)
  {
    v5 = [(_INBundleImage *)self imageBundle];
    v6 = [v5 bundlePath];
    v7 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];
  }

  else
  {
    v8 = &stru_1F01E0850;
  }

  v9 = [(_INBundleImage *)self imageBundle];
  v10 = [v9 bundleType];

  if (v10 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E7283E30[v10];
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(_INBundleImage *)self imageName];
  v14 = [(_INBundleImage *)self imageBundle];
  v15 = [v14 bundleIdentifier];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1F01E0850;
  }

  v18 = [v12 initWithFormat:@"%@://%@/?%@=%@&%@=%@&%@=%@", @"siri-client-cache", v8, @"bundleType", v11, @"imageName", v13, @"bundleIdentifier", v17];

  return v18;
}

- (BOOL)_isSystem
{
  v2 = [(_INBundleImage *)self imageBundle];
  v3 = [v2 bundleType] == 2;

  return v3;
}

- (void)_loadImageDataAndSizeWithHelper:(id)a3 accessSpecifier:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v20 = "[_INBundleImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting bundle image loading strategy with helper: %@", buf, 0x16u);
      }

      v12 = [(_INBundleImage *)self imageBundle];
      v13 = [(_INBundleImage *)self imageName];
      [v8 loadImageDataFromBundle:v12 withImageName:v13 accessSpecifier:v9 completion:v10];
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No helper to use which can load image %@ from bundle", self];
      v18 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15 = [v14 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:v13];
      (*(v10 + 2))(v10, 0, 0, v15, 0.0, 0.0);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (_INBundleImage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _INBundleImage;
  v5 = [(INImage *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageBundle"];
    imageBundle = v5->_imageBundle;
    v5->_imageBundle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _INBundleImage;
  v4 = a3;
  [(INImage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_imageBundle forKey:@"imageBundle"];
}

- (void)_setBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_INBundleImage *)self imageBundle];
  [v5 setBundleIdentifier:v4];
}

- (id)_bundleIdentifier
{
  v2 = [(_INBundleImage *)self imageBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)_setBundlePath:(id)a3
{
  v4 = a3;
  v5 = [(_INBundleImage *)self imageBundle];
  [v5 setBundlePath:v4];
}

- (id)_bundlePath
{
  v2 = [(_INBundleImage *)self imageBundle];
  v3 = [v2 bundlePath];

  return v3;
}

- (id)_copyWithSubclass:(Class)a3
{
  v11.receiver = self;
  v11.super_class = _INBundleImage;
  v4 = [(INImage *)&v11 _copyWithSubclass:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_INBundleImage *)self imageName];
    [v5 setImageName:v6];

    v7 = [(_INBundleImage *)self imageBundle];
    [v5 setImageBundle:v7];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (id)_dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _INBundleImage;
  v3 = [(INImage *)&v10 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v11 = @"imageName";
  imageName = self->_imageName;
  v6 = imageName;
  if (!imageName)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v4 addEntriesFromDictionary:v7];

  if (!imageName)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (_INBundleImage)initWithStringRepresentation:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v5 = [(_INBundleImage *)self _initWithURLRepresentation:v4];

  return v5;
}

- (id)_URLRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(_INBundleImage *)self stringRepresentation];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (id)_initWithURLRepresentation:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v44.receiver = self;
    v44.super_class = _INBundleImage;
    self = [(INImage *)&v44 _initWithIdentifier:0];
    if (!self)
    {
LABEL_31:
      self = self;
      v32 = self;
      goto LABEL_32;
    }

    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v6 = [v5 scheme];
    v7 = [v6 isEqualToString:@"siri-client-cache"];

    if (v7)
    {
      v8 = [v5 path];
      v9 = objc_alloc_init(INImageBundle);
      if (([v8 isEqualToString:@"/"] & 1) == 0)
      {
        v10 = [v8 stringByRemovingPercentEncoding];
        [(INImageBundle *)v9 setBundlePath:v10];
      }

      v36 = v8;
      v38 = v4;
      v37 = v5;
      v11 = [v5 queryItems];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v39 = 0;
        v15 = *v41;
        v16 = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            v19 = [v18 name];
            v20 = [v19 isEqualToString:@"bundleType"];

            if (v20)
            {
              v21 = [v18 value];
              v22 = [v21 isEqualToString:@"a"];

              if (v22)
              {
                v16 = 0;
              }

              else
              {
                v26 = [v18 value];
                v27 = [v26 isEqualToString:@"s"];

                if (v27)
                {
                  v16 = 2;
                }
              }
            }

            else
            {
              v23 = [v18 name];
              v24 = [v23 isEqualToString:@"imageName"];

              if (v24)
              {
                v25 = [v18 value];

                v14 = v25;
              }

              else
              {
                v28 = [v18 name];
                v29 = [v28 isEqualToString:@"bundleIdentifier"];

                if (v29)
                {
                  v30 = [v18 value];
                  if ([v30 length])
                  {
                    v31 = [v18 value];
                  }

                  else
                  {
                    v31 = 0;
                  }

                  v39 = v31;
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
        v39 = 0;
        v16 = 1;
      }

      [v35 setBundleType:v16];
      [v35 setBundleIdentifier:v39];
      [(_INBundleImage *)self setImageBundle:v35];
      [(_INBundleImage *)self setImageName:v14];

      v4 = v38;
      goto LABEL_31;
    }
  }

  v32 = 0;
LABEL_32:

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

@end