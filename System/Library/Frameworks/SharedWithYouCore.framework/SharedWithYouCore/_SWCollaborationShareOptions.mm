@interface _SWCollaborationShareOptions
+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)a3;
+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)a3 summary:(id)a4;
- (NSArray)optionsGroups;
- (void)setOptionsGroups:(id)a3;
@end

@implementation _SWCollaborationShareOptions

+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)a3 summary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_SWCollaborationShareOptions alloc] initWithOptionsGroups:v6 summary:v5];

  return v7;
}

+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)a3
{
  v3 = a3;
  v4 = [[_SWCollaborationShareOptions alloc] initWithOptionsGroups:v3];

  return v4;
}

- (NSArray)optionsGroups
{
  v4.receiver = self;
  v4.super_class = _SWCollaborationShareOptions;
  v2 = [(SWCollaborationShareOptions *)&v4 optionsGroups];

  return v2;
}

- (void)setOptionsGroups:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationShareOptions;
  [(SWCollaborationShareOptions *)&v3 setOptionsGroups:a3];
}

@end