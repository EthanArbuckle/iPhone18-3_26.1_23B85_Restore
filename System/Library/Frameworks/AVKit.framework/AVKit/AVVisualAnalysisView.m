@interface AVVisualAnalysisView
- (AVVisualAnalysisView)initWithFrame:(CGRect)a3;
- (AVVisualAnalysisViewDelegate)delegate;
- (BOOL)hasSubjectToCopy;
- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5;
- (VKImageAnalysisInteraction)imageAnalysisInteraction;
- (id)_updateInteractionAnalysisTypes;
- (id)_updateInteractionProgressIfNeeded;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3;
- (void)_addInteractionIfNeeded;
- (void)_removeInteractionIfNeeded;
- (void)_updateActionInfoViewHiddenStateIfNeeded;
- (void)copySubject;
- (void)imageAnalysisInteraction:(id)a3 didRequestLiveTextButtonSelectedState:(BOOL)a4;
- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4;
- (void)imageAnalysisInteraction:(id)a3 highlightSelectedItemsValueDidChange:(BOOL)a4;
- (void)imageAnalysisInteraction:(id)a3 imageAnalysisButtonPressed:(id)a4;
- (void)imageAnalysisInteraction:(id)a3 liveTextButtonDidChangeToVisible:(BOOL)a4;
- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3;
- (void)resetSelection;
- (void)setAnalysis:(id)a3;
- (void)setAnalysisButtonBottomInset:(double)a3;
- (void)setAnalysisTypes:(unint64_t)a3;
- (void)setHasVisualLookupResults:(BOOL)a3;
- (void)setHighlightsInteractableAreas:(BOOL)a3;
- (void)setInteractionInProgress:(BOOL)a3;
- (void)setWantsAnalysisButtonVisible:(BOOL)a3;
@end

@implementation AVVisualAnalysisView

- (AVVisualAnalysisViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)copySubject
{
  if ([(AVVisualAnalysisView *)self hasSubjectToCopy])
  {
    imageAnalysisInteraction = self->_imageAnalysisInteraction;
    v4 = [(VKImageAnalysisInteraction *)imageAnalysisInteraction allSubjectIndexes];
    [(VKImageAnalysisInteraction *)imageAnalysisInteraction loadImageSubjectWithIndexes:v4 completion:&__block_literal_global_28917];
  }
}

void __35__AVVisualAnalysisView_copySubject__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1E69DCD50];
    v3 = a2;
    v4 = [v2 generalPasteboard];
    [v4 setImage:v3];
  }
}

- (void)resetSelection
{
  if ([(AVVisualAnalysisView *)self hasActiveTextSelection])
  {
    imageAnalysisInteraction = self->_imageAnalysisInteraction;

    [(VKImageAnalysisInteraction *)imageAnalysisInteraction resetSelection];
  }
}

- (void)setHasVisualLookupResults:(BOOL)a3
{
  if (self->_hasVisualLookupResults != a3)
  {
    self->_hasVisualLookupResults = a3;
    v5 = [(AVVisualAnalysisView *)self delegate];
    [v5 visualAnalysisViewDidUpdateVisualLookupAvailability:self];
  }
}

- (void)setAnalysisTypes:(unint64_t)a3
{
  if (self->_analysisTypes != a3)
  {
    self->_analysisTypes = a3;
    [(AVVisualAnalysisView *)self setHasVisualLookupResults:[(VKCImageAnalysis *)self->_analysis hasResultsForAnalysisTypes:16]];

    [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionAnalysisTypes];
  }
}

- (id)_updateInteractionAnalysisTypes
{
  if (result)
  {
    v1 = result;
    v2 = result[56];
    if ((v1[55] & 0x12) != 0)
    {
      v3 = ((v1[55] >> 1) & 4 | (8 * ((v1[55] >> 2) & 1))) + 1;
    }

    else
    {
      v3 = (v1[55] >> 1) & 4 | (8 * ((v1[55] >> 2) & 1));
    }

    [v2 setActiveInteractionTypes:v3];

    return [(AVVisualAnalysisView *)v1 _updateInteractionProgressIfNeeded];
  }

  return result;
}

- (id)_updateInteractionProgressIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = [result hasActiveTextSelection];
    v3 = [v1 highlightsInteractableAreas];
    v4 = v1[55];
    v5 = [v1[56] subjectInteractionInProgress];
    v6 = (v2 | v3 | (v4 >> 3) | v5 | [v1[56] subjectHighlightActive]) & 1;

    return [v1 setInteractionInProgress:v6];
  }

  return result;
}

- (void)setInteractionInProgress:(BOOL)a3
{
  if (self->_interactionInProgress != a3)
  {
    v4 = a3;
    self->_interactionInProgress = a3;
    v5 = [(AVVisualAnalysisView *)self delegate];
    [v5 visualAnalysisViewDidBeginInteraction:v4];
  }
}

- (BOOL)hasSubjectToCopy
{
  v3 = [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction isSubjectAnalysisComplete];
  if (v3)
  {
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction subjectFrame];
    LOBYTE(v3) = !CGRectEqualToRect(v5, *MEMORY[0x1E695F050]);
  }

  return v3;
}

- (void)setHighlightsInteractableAreas:(BOOL)a3
{
  v4 = [(AVVisualAnalysisView *)self analysisButton];
  [v4 sendActionsForControlEvents:64];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)setWantsAnalysisButtonVisible:(BOOL)a3
{
  if (self->_wantsAnalysisButtonVisible != a3)
  {
    self->_wantsAnalysisButtonVisible = a3;
    [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];
  }
}

- (void)_updateActionInfoViewHiddenStateIfNeeded
{
  if (a1)
  {
    if ([a1 highlightsSelectableItems])
    {
      v2 = 0;
    }

    else
    {
      v2 = a1[409] ^ 1;
    }

    v3 = [a1 imageAnalysisInteraction];
    [v3 setActionInfoViewHidden:v2 & 1];
  }
}

- (void)_removeInteractionIfNeeded
{
  v3 = [(AVVisualAnalysisView *)self interactions];
  v4 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [(AVVisualAnalysisView *)self removeInteraction:v6];
  }
}

- (void)_addInteractionIfNeeded
{
  v3 = [(AVVisualAnalysisView *)self interactions];
  v4 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [(AVVisualAnalysisView *)self addInteraction:v6];
  }
}

- (VKImageAnalysisInteraction)imageAnalysisInteraction
{
  imageAnalysisInteraction = self->_imageAnalysisInteraction;
  if (!imageAnalysisInteraction)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getVKCImageAnalysisInteractionClass_softClass;
    v13 = getVKCImageAnalysisInteractionClass_softClass;
    if (!getVKCImageAnalysisInteractionClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getVKCImageAnalysisInteractionClass_block_invoke;
      v9[3] = &unk_1E7209BC8;
      v9[4] = &v10;
      __getVKCImageAnalysisInteractionClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_imageAnalysisInteraction;
    self->_imageAnalysisInteraction = v6;

    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setActionInfoLiveTextButtonDisabled:0];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setActionInfoQuickActionsDisabled:0];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setActionInfoViewHidden:1];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setAnalysisButtonRequiresVisibleContentGating:0];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setAutomaticallyShowVisualSearchResults:1];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction setDelegate:self];
    [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionAnalysisTypes];
    imageAnalysisInteraction = self->_imageAnalysisInteraction;
  }

  return imageAnalysisInteraction;
}

- (void)setAnalysisButtonBottomInset:(double)a3
{
  if (self->_analysisButtonBottomInset != a3)
  {
    self->_analysisButtonBottomInset = a3;
    v5 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [v5 setActionInfoEdgeInsets:{8.0, 8.0, a3, 8.0}];

    v6 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [v6 updateActionInfoLayout];
  }
}

- (void)setAnalysis:(id)a3
{
  v5 = a3;
  if (self->_analysis != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_analysis, a3);
    [(AVVisualAnalysisView *)self _addInteractionIfNeeded];
    v6 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [v6 setAnalysis:v8];

    [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction updateActionInfoLayout];
    [(AVVisualAnalysisView *)self setHasVisualLookupResults:[(VKCImageAnalysis *)self->_analysis hasResultsForAnalysisTypes:16]];
    if ((self->_analysisTypes & 4) != 0 && self->_analysis)
    {
      [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction beginImageSubjectAnalysisIfNecessary];
    }

    else
    {
      v7 = [(AVVisualAnalysisView *)self delegate];
      [v7 visualAnalysisViewDidUpdateSubjectAvailability:self];
    }

    v5 = v8;
  }
}

- (AVVisualAnalysisView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVVisualAnalysisView;
  v3 = [(AVVisualAnalysisView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[AVKitGlobalSettings shared];
    v3->_subjectLiftGestureEnabled = [v4 subjectLiftGestureEnabled];
  }

  return v3;
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)a3
{
  v4 = [(AVVisualAnalysisView *)self delegate];
  v5 = [v4 presentingViewControllerForVisualAnalysisView:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)a3 didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)a4
{
  v5 = [(AVVisualAnalysisView *)self delegate:a3];
  [v5 visualAnalysisViewDidTapVisualLookupIndicator:self];
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)a3
{
  v4 = [(AVVisualAnalysisView *)self delegate];
  [v4 visualAnalysisViewDidUpdateSubjectAvailability:self];
}

- (void)imageAnalysisInteraction:(id)a3 highlightSelectedItemsValueDidChange:(BOOL)a4
{
  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)imageAnalysisInteraction:(id)a3 didRequestLiveTextButtonSelectedState:(BOOL)a4
{
  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)imageAnalysisInteraction:(id)a3 liveTextButtonDidChangeToVisible:(BOOL)a4
{
  v4 = a4;
  v6 = [(AVVisualAnalysisView *)self delegate];
  [v6 visualAnalysisView:self didToggleAnalysisButtonVisibilityToVisible:v4];
}

- (void)imageAnalysisInteraction:(id)a3 prepareForCalloutAction:(SEL)a4 competion:(id)a5
{
  v7 = a5;
  v8 = [(AVVisualAnalysisView *)self delegate];
  [v8 visualAnalysisView:self prepareForCalloutAction:a4 completion:v7];
}

- (void)imageAnalysisInteraction:(id)a3 imageAnalysisButtonPressed:(id)a4
{
  v5 = [(AVVisualAnalysisView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVVisualAnalysisView *)self delegate];
    [v7 visualAnalysisViewDidPressAnalysisButton:self];
  }

  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (BOOL)imageAnalysisInteraction:(id)a3 shouldBeginAtPoint:(CGPoint)a4 forAnalysisType:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = [(AVVisualAnalysisView *)self hasActiveTextSelection];
  v10 = [v8 interactableItemExistsAtPoint:{x, y}];
  v11 = [v8 imageSubjectExistsAtPoint:{x, y}];

  v12 = [(AVVisualAnalysisView *)self delegate];
  v13 = [v12 shouldBeginTouchInteractionForVisualAnalysisView:self];

  if (v9)
  {
    [(AVVisualAnalysisView *)self resetSelection];
  }

  v14 = v10 | v9;
  if (v11 && (!v13 || !self->_subjectLiftGestureEnabled))
  {
    v14 = 0;
  }

  return v14 & 1;
}

@end