@interface _SWCollaborationOptionsGroup
- (NSArray)options;
- (_SWCollaborationOptionsGroup)initWithTitle:(id)title identifier:(id)identifier footer:(id)footer options:(id)options;
- (void)setOptions:(id)options;
@end

@implementation _SWCollaborationOptionsGroup

- (NSArray)options
{
  v4.receiver = self;
  v4.super_class = _SWCollaborationOptionsGroup;
  options = [(SWCollaborationOptionsGroup *)&v4 options];

  return options;
}

- (void)setOptions:(id)options
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationOptionsGroup;
  [(SWCollaborationOptionsGroup *)&v3 setOptions:options];
}

- (_SWCollaborationOptionsGroup)initWithTitle:(id)title identifier:(id)identifier footer:(id)footer options:(id)options
{
  titleCopy = title;
  footerCopy = footer;
  v12 = [(SWCollaborationOptionsGroup *)self initWithIdentifier:identifier options:options];
  if (v12)
  {
    v13 = [titleCopy copy];
    [(SWCollaborationOptionsGroup *)v12 setTitle:v13];

    v14 = [footerCopy copy];
    [(SWCollaborationOptionsGroup *)v12 setFooter:v14];
  }

  return v12;
}

@end