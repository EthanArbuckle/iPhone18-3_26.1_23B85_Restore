@interface TSDAbstractLayout
- (id)firstTarget;
- (id)lastTarget;
- (id)nextTargetFromLayout:(id)layout column:(id)column;
- (id)previousTargetFromLayout:(id)layout column:(id)column;
@end

@implementation TSDAbstractLayout

- (id)nextTargetFromLayout:(id)layout column:(id)column
{
  navigableLayouts = [-[TSDAbstractLayout navigableLayouts](self navigableLayouts];
  if (!navigableLayouts || (result = [navigableLayouts firstTarget]) == 0)
  {
    parent = [(TSDAbstractLayout *)self parent];

    return [parent nextTargetFromLayout:self column:0];
  }

  return result;
}

- (id)firstTarget
{
  v2 = [-[TSDAbstractLayout navigableLayouts](self "navigableLayouts")];

  return [v2 firstTarget];
}

- (id)previousTargetFromLayout:(id)layout column:(id)column
{
  navigableLayouts = [-[TSDAbstractLayout navigableLayouts](self navigableLayouts];
  if (!navigableLayouts || (result = [navigableLayouts lastTarget]) == 0)
  {
    parent = [(TSDAbstractLayout *)self parent];

    return [parent previousTargetFromLayout:self column:0];
  }

  return result;
}

- (id)lastTarget
{
  v2 = [-[TSDAbstractLayout navigableLayouts](self "navigableLayouts")];

  return [v2 lastTarget];
}

@end