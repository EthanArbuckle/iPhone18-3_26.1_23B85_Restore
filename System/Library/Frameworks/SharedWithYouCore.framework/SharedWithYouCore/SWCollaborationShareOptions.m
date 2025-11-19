@interface SWCollaborationShareOptions
+ (SWCollaborationShareOptions)allocWithZone:(_NSZone *)a3;
+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups;
+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShareOptions:(id)a3;
- (SWCollaborationShareOptions)initWithCoder:(NSCoder *)coder;
- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups;
- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWCollaborationShareOptions

+ (SWCollaborationShareOptions)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [_SWCollaborationShareOptions allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SWCollaborationShareOptions;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary
{
  v6 = optionsGroups;
  v7 = summary;
  v12.receiver = self;
  v12.super_class = SWCollaborationShareOptions;
  v8 = [(SWCollaborationShareOptions *)&v12 init];
  if (v8)
  {
    v9 = [(NSArray *)v6 copy];
    v10 = v8->_optionsGroups;
    v8->_optionsGroups = v9;

    objc_storeStrong(&v8->_summary, summary);
  }

  return v8;
}

- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups
{
  v4 = optionsGroups;
  v5 = SWCoreFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"Share Options" value:&stru_1F4E16F00 table:@"SharedWithYouCore"];
  v7 = [(SWCollaborationShareOptions *)self initWithOptionsGroups:v4 summary:v6];

  return v7;
}

+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary
{
  v6 = summary;
  v7 = optionsGroups;
  v8 = [[a1 alloc] initWithOptionsGroups:v7 summary:v6];

  return v8;
}

+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups
{
  v4 = optionsGroups;
  v5 = [[a1 alloc] initWithOptionsGroups:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = self;
  v11.receiver = v4;
  v11.super_class = SWCollaborationShareOptions;
  v5 = [(SWCollaborationShareOptions *)&v11 init];
  if (v5)
  {
    v6 = [(SWCollaborationShareOptions *)v4 summary];
    v7 = [v6 copyWithZone:a3];
    [(SWCollaborationShareOptions *)v5 setSummary:v7];

    v8 = [(SWCollaborationShareOptions *)v4 optionsGroups];
    v9 = [v8 copyWithZone:a3];
    [(SWCollaborationShareOptions *)v5 setOptionsGroups:v9];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationShareOptions *)self isEqualToShareOptions:v4];

  return v5;
}

- (BOOL)isEqualToShareOptions:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    v10 = 1;
    goto LABEL_20;
  }

  v8 = [(SWCollaborationShareOptions *)self summary];
  if (v8 || ([(SWCollaborationShareOptions *)v7 summary], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(SWCollaborationShareOptions *)self summary];
    v4 = [(SWCollaborationShareOptions *)v7 summary];
    if (![v3 isEqual:v4])
    {
      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v9 = 1;
  }

  else
  {
    v15 = 0;
    v9 = 0;
  }

  v11 = [(SWCollaborationShareOptions *)self optionsGroups];
  if (v11 || ([(SWCollaborationShareOptions *)v7 optionsGroups], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(SWCollaborationShareOptions *)self optionsGroups];
    v13 = [(SWCollaborationShareOptions *)v7 optionsGroups];
    v10 = [v12 isEqual:v13];

    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!v8)
  {
  }

LABEL_20:
  return v10;
}

- (SWCollaborationShareOptions)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v17.receiver = self;
  v17.super_class = SWCollaborationShareOptions;
  v5 = [(SWCollaborationShareOptions *)&v17 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    summary = v5->_summary;
    v5->_summary = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [(NSCoder *)v4 decodeObjectOfClasses:v13 forKey:@"optionsGroups"];
    optionsGroups = v5->_optionsGroups;
    v5->_optionsGroups = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWCollaborationShareOptions *)self summary];
  [v4 encodeObject:v5 forKey:@"summary"];

  v6 = [(SWCollaborationShareOptions *)self optionsGroups];
  [v4 encodeObject:v6 forKey:@"optionsGroups"];
}

@end