@interface SWCollaborationShareOptions
+ (SWCollaborationShareOptions)allocWithZone:(_NSZone *)zone;
+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups;
+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShareOptions:(id)options;
- (SWCollaborationShareOptions)initWithCoder:(NSCoder *)coder;
- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups;
- (SWCollaborationShareOptions)initWithOptionsGroups:(NSArray *)optionsGroups summary:(NSString *)summary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWCollaborationShareOptions

+ (SWCollaborationShareOptions)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [_SWCollaborationShareOptions allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SWCollaborationShareOptions;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
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
  v8 = [[self alloc] initWithOptionsGroups:v7 summary:v6];

  return v8;
}

+ (SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(NSArray *)optionsGroups
{
  v4 = optionsGroups;
  v5 = [[self alloc] initWithOptionsGroups:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11.receiver = selfCopy;
  v11.super_class = SWCollaborationShareOptions;
  v5 = [(SWCollaborationShareOptions *)&v11 init];
  if (v5)
  {
    summary = [(SWCollaborationShareOptions *)selfCopy summary];
    v7 = [summary copyWithZone:zone];
    [(SWCollaborationShareOptions *)v5 setSummary:v7];

    optionsGroups = [(SWCollaborationShareOptions *)selfCopy optionsGroups];
    v9 = [optionsGroups copyWithZone:zone];
    [(SWCollaborationShareOptions *)v5 setOptionsGroups:v9];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SWCollaborationShareOptions *)self isEqualToShareOptions:equalCopy];

  return v5;
}

- (BOOL)isEqualToShareOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy == self)
  {
    v10 = 1;
    goto LABEL_20;
  }

  summary = [(SWCollaborationShareOptions *)self summary];
  if (summary || ([(SWCollaborationShareOptions *)optionsCopy summary], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    summary2 = [(SWCollaborationShareOptions *)self summary];
    summary3 = [(SWCollaborationShareOptions *)optionsCopy summary];
    if (![summary2 isEqual:summary3])
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

  optionsGroups = [(SWCollaborationShareOptions *)self optionsGroups];
  if (optionsGroups || ([(SWCollaborationShareOptions *)optionsCopy optionsGroups], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    optionsGroups2 = [(SWCollaborationShareOptions *)self optionsGroups];
    optionsGroups3 = [(SWCollaborationShareOptions *)optionsCopy optionsGroups];
    v10 = [optionsGroups2 isEqual:optionsGroups3];

    if (optionsGroups)
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
  if (!summary)
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  summary = [(SWCollaborationShareOptions *)self summary];
  [coderCopy encodeObject:summary forKey:@"summary"];

  optionsGroups = [(SWCollaborationShareOptions *)self optionsGroups];
  [coderCopy encodeObject:optionsGroups forKey:@"optionsGroups"];
}

@end