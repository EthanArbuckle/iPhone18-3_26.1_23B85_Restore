@interface AAMisconfiguredAgePromptViewModel
- (AAMisconfiguredAgePromptViewModel)init;
- (AAMisconfiguredAgePromptViewModel)initWithTitle:(id)title message:(id)message primaryButtonText:(id)text secondaryButtonText:(id)buttonText cancelButtonText:(id)cancelButtonText bundleID:(id)d altDSID:(id)iD;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAMisconfiguredAgePromptViewModel

- (AAMisconfiguredAgePromptViewModel)initWithTitle:(id)title message:(id)message primaryButtonText:(id)text secondaryButtonText:(id)buttonText cancelButtonText:(id)cancelButtonText bundleID:(id)d altDSID:(id)iD
{
  v10 = sub_1B7055830();
  v38 = v11;
  v39 = v10;
  v12 = sub_1B7055830();
  v36 = v13;
  v37 = v12;
  v14 = sub_1B7055830();
  v16 = v15;
  v17 = sub_1B7055830();
  v19 = v18;
  v20 = sub_1B7055830();
  v22 = v21;
  v23 = sub_1B7055830();
  v25 = v24;
  v26 = sub_1B7055830();
  v27 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_title);
  *v27 = v39;
  v27[1] = v38;
  v28 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_message);
  *v28 = v37;
  v28[1] = v36;
  v29 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_primaryButtonText);
  *v29 = v14;
  v29[1] = v16;
  v30 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_secondaryButtonText);
  *v30 = v17;
  v30[1] = v19;
  v31 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_cancelButtonText);
  *v31 = v20;
  v31[1] = v22;
  v32 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_bundleID);
  *v32 = v23;
  v32[1] = v25;
  v33 = (self + OBJC_IVAR___AAMisconfiguredAgePromptViewModel_altDSID);
  *v33 = v26;
  v33[1] = v34;
  v40.receiver = self;
  v40.super_class = AAMisconfiguredAgePromptViewModel;
  return [(AAMisconfiguredAgePromptViewModel *)&v40 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AAMisconfiguredAgePromptViewModel.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  AAMisconfiguredAgePromptViewModel.description.getter();

  v3 = sub_1B7055820();

  return v3;
}

- (AAMisconfiguredAgePromptViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end