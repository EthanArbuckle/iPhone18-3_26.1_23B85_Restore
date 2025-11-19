@interface INUIPortableImageLoaderHelper
- (INUIPortableImageLoaderHelper)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadImageDataFromBundle:(id)a3 withImageName:(id)a4 accessSpecifier:(id)a5 completion:(id)a6;
- (void)loadImageSizeFromData:(id)a3 completion:(id)a4;
@end

@implementation INUIPortableImageLoaderHelper

- (INUIPortableImageLoaderHelper)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INUIPortableImageLoaderHelper;
  v5 = [(INUIPortableImageLoaderHelper *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
    traitCollection = v5->_traitCollection;
    v5->_traitCollection = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INUIPortableImageLoaderHelper *)self traitCollection];
  [v4 encodeObject:v5 forKey:@"traitCollection"];
}

- (void)loadImageDataFromBundle:(id)a3 withImageName:(id)a4 accessSpecifier:(id)a5 completion:(id)a6
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    goto LABEL_37;
  }

  if (!v12)
  {
    v12 = [MEMORY[0x277CD3CC8] accessSpecifierWithNoAccess];
  }

  v14 = [(INUIPortableImageLoaderHelper *)self traitCollection];

  if (!v14)
  {
    v15 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[INUIPortableImageLoaderHelper loadImageDataFromBundle:withImageName:accessSpecifier:completion:]";
      _os_log_error_impl(&dword_22CA36000, v15, OS_LOG_TYPE_ERROR, "%s traitCollection on INUIPortableImageLoaderHelper is nil", buf, 0xCu);
    }
  }

  v16 = [(INUIPortableImageLoaderHelper *)self traitCollection];
  if (v16)
  {
    v17 = [(INUIPortableImageLoaderHelper *)self traitCollection];
  }

  else
  {
    v18 = [MEMORY[0x277D759A0] mainScreen];
    v17 = [v18 traitCollection];
  }

  v68 = v17;
  if ([v10 bundleType] == 2)
  {
    v19 = [MEMORY[0x277D755D0] configurationWithPointSize:44.0];
    v20 = [(INUIPortableImageLoaderHelper *)self traitCollection];
    if ([v20 userInterfaceStyle] == 1)
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v36 = ;

    v34 = v11;
    v37 = [MEMORY[0x277D755B8] systemImageNamed:v11 withConfiguration:v19];
    v67 = v36;
    v38 = [v37 imageWithTintColor:v36];

    [v38 size];
    v40 = v39;
    [v38 size];
    if (v40 < v41)
    {
      v40 = v41;
    }

    v42 = objc_alloc(MEMORY[0x277D75560]);
    v43 = [MEMORY[0x277D75568] formatForTraitCollection:v17];
    v30 = [v42 initWithSize:v43 format:{v40, v40}];

    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __98__INUIPortableImageLoaderHelper_loadImageDataFromBundle_withImageName_accessSpecifier_completion___block_invoke;
    v70[3] = &unk_27872BA40;
    v71 = v38;
    v72 = v40;
    v73 = v40;
    v44 = v38;
    v35 = [v30 imageWithActions:v70];
    v33 = 0;
    v45 = v71;
LABEL_24:

    v32 = v67;
    goto LABEL_33;
  }

  v21 = [v10 bundleIdentifier];

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = MEMORY[0x277CC1E88];
  v23 = [v10 bundleIdentifier];
  v24 = [v22 bundleProxyForIdentifier:v23];

  v25 = [v24 bundleURL];
  v19 = [v25 path];

  if (!v19)
  {
LABEL_15:
    v19 = [v10 bundlePath];
  }

  v26 = objc_alloc(MEMORY[0x277CCA9B8]);
  v27 = *MEMORY[0x277CD3848];
  v65 = *MEMORY[0x277CCA068];
  v76 = *MEMORY[0x277CCA068];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loader client does not have sufficient permissions to load bundle image %@ %@", v11, v19];
  v77 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v66 = v27;
  v67 = [v26 initWithDomain:v27 code:6010 userInfo:v29];

  v30 = [MEMORY[0x277CCA8D8] bundleWithPath:v19];
  v31 = [v12 accessLevel];
  if (v31 != 1)
  {
    v32 = v67;
    if (!v31)
    {
      v33 = v67;
      if (v33)
      {
        goto LABEL_19;
      }
    }

LABEL_31:
    v34 = v11;
    v54 = [MEMORY[0x277D755B8] imageNamed:v11 inBundle:v30 compatibleWithTraitCollection:v68];
    if (v54)
    {
      v35 = v54;
      v33 = 0;
      goto LABEL_33;
    }

    v63 = objc_alloc(MEMORY[0x277CCA9B8]);
    v74 = v65;
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load image from bundle %@", v19];
    v75 = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v33 = [v63 initWithDomain:v66 code:6000 userInfo:v45];
    v35 = 0;
    goto LABEL_24;
  }

  v64 = v11;
  v46 = MEMORY[0x277CC1E88];
  v47 = [v12 associatedAppBundleIdentifier];
  v48 = [v46 bundleProxyForIdentifier:v47];

  v49 = [v30 bundleURL];
  if (!v49)
  {
    v51 = v48;
    v33 = 0;
    v32 = v67;
    goto LABEL_29;
  }

  *buf = 2;
  v50 = [MEMORY[0x277CCAA00] defaultManager];
  v51 = v48;
  v52 = [v48 bundleURL];
  v69 = 0;
  [v50 getRelationship:buf ofDirectoryAtURL:v52 toItemAtURL:v49 error:&v69];
  v33 = v69;

  v32 = v67;
  if (*buf >= 2uLL)
  {
LABEL_29:
    v53 = v32;

    v33 = v53;
  }

  v11 = v64;
  if (!v33)
  {
    goto LABEL_31;
  }

LABEL_19:
  v34 = v11;
  v35 = 0;
LABEL_33:

  [(UIImage *)v35 size];
  v56 = v55;
  v58 = v57;
  v59 = [(UIImage *)v35 renderingMode];
  if (v59 == 2)
  {
    v60 = 2;
  }

  else
  {
    v60 = v59 == 1;
  }

  v61 = UIImagePNGRepresentation(v35);
  v13[2](v13, v61, v60, v33, v56, v58);

  v11 = v34;
LABEL_37:

  v62 = *MEMORY[0x277D85DE8];
}

uint64_t __98__INUIPortableImageLoaderHelper_loadImageDataFromBundle_withImageName_accessSpecifier_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) size];
  v3 = v2 + -14.0;
  [*(a1 + 32) size];
  v8.size.height = v4 + -14.0;
  v5 = *(a1 + 32);
  v8.origin.x = (*(a1 + 40) - v3) * 0.5;
  v8.origin.y = (*(a1 + 48) - (v4 + -14.0)) * 0.5;
  v8.size.width = v3;
  v9 = CGRectIntegral(v8);

  return [v5 drawInRect:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

- (void)loadImageSizeFromData:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v5];
    v8 = v7;
    if (v7)
    {
      [v7 size];
      v6[2](v6, 0);
    }

    else
    {
      v9 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v14 = v9;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 136315650;
        v18 = "[INUIPortableImageLoaderHelper loadImageSizeFromData:completion:]";
        v19 = 2114;
        v20 = v16;
        v21 = 2048;
        v22 = [v5 length];
        _os_log_error_impl(&dword_22CA36000, v14, OS_LOG_TYPE_ERROR, "%s Failed to load image size from data: %{public}@, %lu bytes", &v17, 0x20u);
      }

      v10 = *MEMORY[0x277CBF3A8];
      v11 = *(MEMORY[0x277CBF3A8] + 8);
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:6003 userInfo:0];
      (v6[2])(v6, v12, v10, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end