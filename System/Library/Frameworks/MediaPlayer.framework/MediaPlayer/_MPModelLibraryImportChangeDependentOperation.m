@interface _MPModelLibraryImportChangeDependentOperation
- (MPModelLibraryTransientStateController)transientStateController;
@end

@implementation _MPModelLibraryImportChangeDependentOperation

- (MPModelLibraryTransientStateController)transientStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_transientStateController);

  return WeakRetained;
}

@end