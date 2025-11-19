@interface _SWCollaborationOptionsGroup
- (NSArray)options;
- (_SWCollaborationOptionsGroup)initWithTitle:(id)a3 identifier:(id)a4 footer:(id)a5 options:(id)a6;
- (void)setOptions:(id)a3;
@end

@implementation _SWCollaborationOptionsGroup

- (NSArray)options
{
  v4.receiver = self;
  v4.super_class = _SWCollaborationOptionsGroup;
  v2 = [(SWCollaborationOptionsGroup *)&v4 options];

  return v2;
}

- (void)setOptions:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationOptionsGroup;
  [(SWCollaborationOptionsGroup *)&v3 setOptions:a3];
}

- (_SWCollaborationOptionsGroup)initWithTitle:(id)a3 identifier:(id)a4 footer:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(SWCollaborationOptionsGroup *)self initWithIdentifier:a4 options:a6];
  if (v12)
  {
    v13 = [v10 copy];
    [(SWCollaborationOptionsGroup *)v12 setTitle:v13];

    v14 = [v11 copy];
    [(SWCollaborationOptionsGroup *)v12 setFooter:v14];
  }

  return v12;
}

@end