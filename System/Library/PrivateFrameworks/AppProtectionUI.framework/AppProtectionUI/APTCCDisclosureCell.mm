@interface APTCCDisclosureCell
- (APTCCDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForRecord:(id)a3;
- (void)prepareForReuse;
- (void)updateConfigurationWithPreparedIconImage:(id)a3;
@end

@implementation APTCCDisclosureCell

- (APTCCDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = APTCCDisclosureCell;
  v4 = [(APTCCDisclosureCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_1];
    [(APTCCDisclosureCell *)v4 setBackgroundColor:v5];
  }

  return v4;
}

id __53__APTCCDisclosureCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (void)updateConfigurationWithPreparedIconImage:(id)a3
{
  v4 = MEMORY[0x1E69DCC28];
  v5 = a3;
  v10 = [v4 cellConfiguration];
  [v10 setText:self->_appName];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v5 CGImage];

  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v9 = [v6 imageWithCGImage:v7 scale:0 orientation:?];
  [v10 setImage:v9];

  [(APTCCDisclosureCell *)self setContentConfiguration:v10];
}

- (void)configureForRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:self->_bundleID];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 bundleIdentifier];
    bundleID = self->_bundleID;
    self->_bundleID = v7;

    v9 = [v4 localizedName];
    appName = self->_appName;
    self->_appName = v9;

    v11 = [MEMORY[0x1E69DCC28] cellConfiguration];
    [v11 setText:self->_appName];
    v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:self->_bundleID];
    v13 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
    v14 = [v12 imageForDescriptor:v13];
    if ([v14 placeholder])
    {
      v15 = self->_bundleID;
      v16 = APUIImageIOQueue();
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __42__APTCCDisclosureCell_configureForRecord___block_invoke;
      v25 = &unk_1E7A41FE8;
      v26 = v12;
      v27 = v13;
      v28 = self;
      v29 = v15;
      v17 = v15;
      dispatch_async(v16, &v22);
    }

    v18 = MEMORY[0x1E69DCAB8];
    v19 = [v14 CGImage];
    v20 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v20 scale];
    v21 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
    [v11 setImage:v21];

    [(APTCCDisclosureCell *)self setContentConfiguration:v11];
  }
}

void __42__APTCCDisclosureCell_configureForRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) prepareImageForDescriptor:*(a1 + 40)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__APTCCDisclosureCell_configureForRecord___block_invoke_2;
  block[3] = &unk_1E7A41FC0;
  v3 = *(a1 + 56);
  block[4] = *(a1 + 48);
  v6 = v3;
  v7 = v2;
  v4 = v2;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

uint64_t __42__APTCCDisclosureCell_configureForRecord___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 1024) isEqual:a1[5]];
  if (result)
  {
    v3 = a1[4];
    v4 = a1[6];

    return [v3 updateConfigurationWithPreparedIconImage:v4];
  }

  return result;
}

- (void)prepareForReuse
{
  bundleID = self->_bundleID;
  self->_bundleID = 0;

  appName = self->_appName;
  self->_appName = 0;

  placeholderImage = self->_placeholderImage;
  self->_placeholderImage = 0;

  v6.receiver = self;
  v6.super_class = APTCCDisclosureCell;
  [(APTCCDisclosureCell *)&v6 prepareForReuse];
}

@end