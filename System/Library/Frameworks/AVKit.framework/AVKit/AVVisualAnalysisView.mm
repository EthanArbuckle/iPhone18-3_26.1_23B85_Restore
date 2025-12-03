@interface AVVisualAnalysisView
- (AVVisualAnalysisView)initWithFrame:(CGRect)frame;
- (AVVisualAnalysisViewDelegate)delegate;
- (BOOL)hasSubjectToCopy;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type;
- (VKImageAnalysisInteraction)imageAnalysisInteraction;
- (id)_updateInteractionAnalysisTypes;
- (id)_updateInteractionProgressIfNeeded;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction;
- (void)_addInteractionIfNeeded;
- (void)_removeInteractionIfNeeded;
- (void)_updateActionInfoViewHiddenStateIfNeeded;
- (void)copySubject;
- (void)imageAnalysisInteraction:(id)interaction didRequestLiveTextButtonSelectedState:(BOOL)state;
- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box;
- (void)imageAnalysisInteraction:(id)interaction highlightSelectedItemsValueDidChange:(BOOL)change;
- (void)imageAnalysisInteraction:(id)interaction imageAnalysisButtonPressed:(id)pressed;
- (void)imageAnalysisInteraction:(id)interaction liveTextButtonDidChangeToVisible:(BOOL)visible;
- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion;
- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis;
- (void)resetSelection;
- (void)setAnalysis:(id)analysis;
- (void)setAnalysisButtonBottomInset:(double)inset;
- (void)setAnalysisTypes:(unint64_t)types;
- (void)setHasVisualLookupResults:(BOOL)results;
- (void)setHighlightsInteractableAreas:(BOOL)areas;
- (void)setInteractionInProgress:(BOOL)progress;
- (void)setWantsAnalysisButtonVisible:(BOOL)visible;
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
    allSubjectIndexes = [(VKImageAnalysisInteraction *)imageAnalysisInteraction allSubjectIndexes];
    [(VKImageAnalysisInteraction *)imageAnalysisInteraction loadImageSubjectWithIndexes:allSubjectIndexes completion:&__block_literal_global_28917];
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

- (void)setHasVisualLookupResults:(BOOL)results
{
  if (self->_hasVisualLookupResults != results)
  {
    self->_hasVisualLookupResults = results;
    delegate = [(AVVisualAnalysisView *)self delegate];
    [delegate visualAnalysisViewDidUpdateVisualLookupAvailability:self];
  }
}

- (void)setAnalysisTypes:(unint64_t)types
{
  if (self->_analysisTypes != types)
  {
    self->_analysisTypes = types;
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
    hasActiveTextSelection = [result hasActiveTextSelection];
    highlightsInteractableAreas = [v1 highlightsInteractableAreas];
    v4 = v1[55];
    subjectInteractionInProgress = [v1[56] subjectInteractionInProgress];
    v6 = (hasActiveTextSelection | highlightsInteractableAreas | (v4 >> 3) | subjectInteractionInProgress | [v1[56] subjectHighlightActive]) & 1;

    return [v1 setInteractionInProgress:v6];
  }

  return result;
}

- (void)setInteractionInProgress:(BOOL)progress
{
  if (self->_interactionInProgress != progress)
  {
    progressCopy = progress;
    self->_interactionInProgress = progress;
    delegate = [(AVVisualAnalysisView *)self delegate];
    [delegate visualAnalysisViewDidBeginInteraction:progressCopy];
  }
}

- (BOOL)hasSubjectToCopy
{
  isSubjectAnalysisComplete = [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction isSubjectAnalysisComplete];
  if (isSubjectAnalysisComplete)
  {
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction subjectFrame];
    LOBYTE(isSubjectAnalysisComplete) = !CGRectEqualToRect(v5, *MEMORY[0x1E695F050]);
  }

  return isSubjectAnalysisComplete;
}

- (void)setHighlightsInteractableAreas:(BOOL)areas
{
  analysisButton = [(AVVisualAnalysisView *)self analysisButton];
  [analysisButton sendActionsForControlEvents:64];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)setWantsAnalysisButtonVisible:(BOOL)visible
{
  if (self->_wantsAnalysisButtonVisible != visible)
  {
    self->_wantsAnalysisButtonVisible = visible;
    [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];
  }
}

- (void)_updateActionInfoViewHiddenStateIfNeeded
{
  if (self)
  {
    if ([self highlightsSelectableItems])
    {
      v2 = 0;
    }

    else
    {
      v2 = self[409] ^ 1;
    }

    imageAnalysisInteraction = [self imageAnalysisInteraction];
    [imageAnalysisInteraction setActionInfoViewHidden:v2 & 1];
  }
}

- (void)_removeInteractionIfNeeded
{
  interactions = [(AVVisualAnalysisView *)self interactions];
  imageAnalysisInteraction = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
  v5 = [interactions containsObject:imageAnalysisInteraction];

  if (v5)
  {
    imageAnalysisInteraction2 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [(AVVisualAnalysisView *)self removeInteraction:imageAnalysisInteraction2];
  }
}

- (void)_addInteractionIfNeeded
{
  interactions = [(AVVisualAnalysisView *)self interactions];
  imageAnalysisInteraction = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
  v5 = [interactions containsObject:imageAnalysisInteraction];

  if ((v5 & 1) == 0)
  {
    imageAnalysisInteraction2 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [(AVVisualAnalysisView *)self addInteraction:imageAnalysisInteraction2];
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

- (void)setAnalysisButtonBottomInset:(double)inset
{
  if (self->_analysisButtonBottomInset != inset)
  {
    self->_analysisButtonBottomInset = inset;
    imageAnalysisInteraction = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [imageAnalysisInteraction setActionInfoEdgeInsets:{8.0, 8.0, inset, 8.0}];

    imageAnalysisInteraction2 = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [imageAnalysisInteraction2 updateActionInfoLayout];
  }
}

- (void)setAnalysis:(id)analysis
{
  analysisCopy = analysis;
  if (self->_analysis != analysisCopy)
  {
    v8 = analysisCopy;
    objc_storeStrong(&self->_analysis, analysis);
    [(AVVisualAnalysisView *)self _addInteractionIfNeeded];
    imageAnalysisInteraction = [(AVVisualAnalysisView *)self imageAnalysisInteraction];
    [imageAnalysisInteraction setAnalysis:v8];

    [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];
    [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction updateActionInfoLayout];
    [(AVVisualAnalysisView *)self setHasVisualLookupResults:[(VKCImageAnalysis *)self->_analysis hasResultsForAnalysisTypes:16]];
    if ((self->_analysisTypes & 4) != 0 && self->_analysis)
    {
      [(VKImageAnalysisInteraction *)self->_imageAnalysisInteraction beginImageSubjectAnalysisIfNecessary];
    }

    else
    {
      delegate = [(AVVisualAnalysisView *)self delegate];
      [delegate visualAnalysisViewDidUpdateSubjectAvailability:self];
    }

    analysisCopy = v8;
  }
}

- (AVVisualAnalysisView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVVisualAnalysisView;
  v3 = [(AVVisualAnalysisView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[AVKitGlobalSettings shared];
    v3->_subjectLiftGestureEnabled = [v4 subjectLiftGestureEnabled];
  }

  return v3;
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction
{
  delegate = [(AVVisualAnalysisView *)self delegate];
  v5 = [delegate presentingViewControllerForVisualAnalysisView:self];

  return v5;
}

- (void)imageAnalysisInteraction:(id)interaction didTapVisualSearchIndicatorWithNormalizedBoundingBox:(CGRect)box
{
  v5 = [(AVVisualAnalysisView *)self delegate:interaction];
  [v5 visualAnalysisViewDidTapVisualLookupIndicator:self];
}

- (void)imageAnalysisInteractionDidCompleteSubjectAnalysis:(id)analysis
{
  delegate = [(AVVisualAnalysisView *)self delegate];
  [delegate visualAnalysisViewDidUpdateSubjectAvailability:self];
}

- (void)imageAnalysisInteraction:(id)interaction highlightSelectedItemsValueDidChange:(BOOL)change
{
  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)imageAnalysisInteraction:(id)interaction didRequestLiveTextButtonSelectedState:(BOOL)state
{
  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (void)imageAnalysisInteraction:(id)interaction liveTextButtonDidChangeToVisible:(BOOL)visible
{
  visibleCopy = visible;
  delegate = [(AVVisualAnalysisView *)self delegate];
  [delegate visualAnalysisView:self didToggleAnalysisButtonVisibilityToVisible:visibleCopy];
}

- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion
{
  competionCopy = competion;
  delegate = [(AVVisualAnalysisView *)self delegate];
  [delegate visualAnalysisView:self prepareForCalloutAction:action completion:competionCopy];
}

- (void)imageAnalysisInteraction:(id)interaction imageAnalysisButtonPressed:(id)pressed
{
  v5 = [(AVVisualAnalysisView *)self delegate:interaction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(AVVisualAnalysisView *)self delegate];
    [delegate visualAnalysisViewDidPressAnalysisButton:self];
  }

  [(AVVisualAnalysisView *)self _updateActionInfoViewHiddenStateIfNeeded];

  [(AVVisualAnalysisView *)&self->super.super.super.isa _updateInteractionProgressIfNeeded];
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  hasActiveTextSelection = [(AVVisualAnalysisView *)self hasActiveTextSelection];
  v10 = [interactionCopy interactableItemExistsAtPoint:{x, y}];
  v11 = [interactionCopy imageSubjectExistsAtPoint:{x, y}];

  delegate = [(AVVisualAnalysisView *)self delegate];
  v13 = [delegate shouldBeginTouchInteractionForVisualAnalysisView:self];

  if (hasActiveTextSelection)
  {
    [(AVVisualAnalysisView *)self resetSelection];
  }

  v14 = v10 | hasActiveTextSelection;
  if (v11 && (!v13 || !self->_subjectLiftGestureEnabled))
  {
    v14 = 0;
  }

  return v14 & 1;
}

@end