@interface THGlossaryWPLayout
- (id)reliedOnLayouts;
@end

@implementation THGlossaryWPLayout

- (id)reliedOnLayouts
{
  if ([(THGlossaryWPLayout *)self layoutRequirementsProvider])
  {
    v3 = [(THGlossaryWPLayout *)self layoutRequirementsProvider];

    return [(THGlossaryLayoutRequirementsProvider *)v3 reliedOnLayoutsForLayout:self];
  }

  else
  {

    return +[NSSet set];
  }
}

@end