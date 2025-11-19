@interface TSDAbstractLayout
- (id)firstTarget;
- (id)lastTarget;
- (id)nextTargetFromLayout:(id)a3 column:(id)a4;
- (id)previousTargetFromLayout:(id)a3 column:(id)a4;
@end

@implementation TSDAbstractLayout

- (id)nextTargetFromLayout:(id)a3 column:(id)a4
{
  v5 = [-[TSDAbstractLayout navigableLayouts](self navigableLayouts];
  if (!v5 || (result = [v5 firstTarget]) == 0)
  {
    v7 = [(TSDAbstractLayout *)self parent];

    return [v7 nextTargetFromLayout:self column:0];
  }

  return result;
}

- (id)firstTarget
{
  v2 = [-[TSDAbstractLayout navigableLayouts](self "navigableLayouts")];

  return [v2 firstTarget];
}

- (id)previousTargetFromLayout:(id)a3 column:(id)a4
{
  v5 = [-[TSDAbstractLayout navigableLayouts](self navigableLayouts];
  if (!v5 || (result = [v5 lastTarget]) == 0)
  {
    v7 = [(TSDAbstractLayout *)self parent];

    return [v7 previousTargetFromLayout:self column:0];
  }

  return result;
}

- (id)lastTarget
{
  v2 = [-[TSDAbstractLayout navigableLayouts](self "navigableLayouts")];

  return [v2 lastTarget];
}

@end