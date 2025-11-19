@interface UIResponder&
- (unint64_t)_UIGestureRecognizerContainer;
- (void)_UIGestureRecognizerContainer;
@end

@implementation UIResponder&

- (void)_UIGestureRecognizerContainer
{
  if (!lazy cache variable for type metadata for [UIResponder & _UIGestureRecognizerContainer])
  {
    type metadata accessor for UIResponder & _UIGestureRecognizerContainer();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIResponder & _UIGestureRecognizerContainer]);
    }
  }
}

- (unint64_t)_UIGestureRecognizerContainer
{
  result = lazy protocol witness table cache variable for type [UIResponder & _UIGestureRecognizerContainer] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIResponder & _UIGestureRecognizerContainer] and conformance [A])
  {
    type metadata accessor for [UIResponder & _UIGestureRecognizerContainer]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIResponder & _UIGestureRecognizerContainer] and conformance [A]);
  }

  return result;
}

@end