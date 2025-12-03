@interface THGlossaryWPLayout
- (id)reliedOnLayouts;
@end

@implementation THGlossaryWPLayout

- (id)reliedOnLayouts
{
  if ([(THGlossaryWPLayout *)self layoutRequirementsProvider])
  {
    layoutRequirementsProvider = [(THGlossaryWPLayout *)self layoutRequirementsProvider];

    return [(THGlossaryLayoutRequirementsProvider *)layoutRequirementsProvider reliedOnLayoutsForLayout:self];
  }

  else
  {

    return +[NSSet set];
  }
}

@end