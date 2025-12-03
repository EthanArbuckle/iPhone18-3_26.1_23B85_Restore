@interface _SWCollaborationShareOptions
+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)groups;
+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)groups summary:(id)summary;
- (NSArray)optionsGroups;
- (void)setOptionsGroups:(id)groups;
@end

@implementation _SWCollaborationShareOptions

+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)groups summary:(id)summary
{
  summaryCopy = summary;
  groupsCopy = groups;
  v7 = [[_SWCollaborationShareOptions alloc] initWithOptionsGroups:groupsCopy summary:summaryCopy];

  return v7;
}

+ (_SWCollaborationShareOptions)shareOptionsWithOptionsGroups:(id)groups
{
  groupsCopy = groups;
  v4 = [[_SWCollaborationShareOptions alloc] initWithOptionsGroups:groupsCopy];

  return v4;
}

- (NSArray)optionsGroups
{
  v4.receiver = self;
  v4.super_class = _SWCollaborationShareOptions;
  optionsGroups = [(SWCollaborationShareOptions *)&v4 optionsGroups];

  return optionsGroups;
}

- (void)setOptionsGroups:(id)groups
{
  v3.receiver = self;
  v3.super_class = _SWCollaborationShareOptions;
  [(SWCollaborationShareOptions *)&v3 setOptionsGroups:groups];
}

@end