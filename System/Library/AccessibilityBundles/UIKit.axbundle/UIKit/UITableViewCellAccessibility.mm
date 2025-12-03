@interface UITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAvoidsMockViewContainers;
- (BOOL)_accessibilityHandleDetailButtonPress:(id)press;
- (BOOL)_accessibilityHandleReorderMoveUp:(BOOL)up;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityImplementsDefaultRowRange;
- (BOOL)_accessibilityIsDescendantOfElement:(id)element;
- (BOOL)_accessibilityIsOutsideParentBounds;
- (BOOL)_accessibilityIsSpeakThisElement;
- (BOOL)_accessibilityLabelShouldBeDistinct:(id)distinct;
- (BOOL)_accessibilityRespondsToUserInteractionForElement:(id)element;
- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)retrieval;
- (BOOL)_accessibilitySetNativeFocus;
- (BOOL)_accessibilityShouldSetNativeFocusWhenATVFocused;
- (BOOL)_accessibilitySwipeActionsAllowed;
- (BOOL)_accessibilityUsesOverrideContainerProtocol;
- (BOOL)_accessibilityViewHierarchyHasNativeFocus;
- (BOOL)_axHasLeadingSwipeActions;
- (BOOL)_axHasTrailingSwipeActions;
- (BOOL)_axPerformAction:(id)action;
- (BOOL)_axReorderElementsByMovingIndexPaths:(BOOL)paths tableView:(id)view currentPath:(id)path;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)accessibilityElementIsFocused;
- (BOOL)accessibilityScrollToVisible;
- (BOOL)canBecomeFocused;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)tableTextAccessibleFrame:(id)frame;
- (_NSRange)_accessibilityIndexPathAsRange;
- (_NSRange)accessibilityRowRange;
- (double)_accessibilityAllowedGeometryOverlap;
- (id)_accessibilityCellEditingControl;
- (id)_accessibilityCellReorderControl;
- (id)_accessibilityChildren;
- (id)_accessibilityContainerElements;
- (id)_accessibilityDetailTextLabelIfExists;
- (id)_accessibilityEditableTextFieldIfExists;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityFindRemoveConfirmSubview;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityImageViewIfExists;
- (id)_accessibilityIndexPath;
- (id)_accessibilityInternalData;
- (id)_accessibilityInternalDataRetrieveOnly;
- (id)_accessibilityKeyCommands;
- (id)_accessibilityMockParent;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)_accessibilityNextIndexPath;
- (id)_accessibilityPerformableActions;
- (id)_accessibilityPreviousIndexPath;
- (id)_accessibilityRetrieveTableViewCellText:(void *)text;
- (id)_accessibilityRetrieveTableViewCellTextExcludingDetailText;
- (id)_accessibilityRetrieveTableViewCellTextWithLocalizationOptions:(int64_t)options shouldExcludeDetailText:(BOOL)text forReorderControl:(BOOL)control;
- (id)_accessibilityRetrieveTableViewIvarsText;
- (id)_accessibilityScannerGroupElements;
- (id)_accessibilityStepperAccessory;
- (id)_accessibilitySubviewsForAdding;
- (id)_accessibilitySubviewsForAddingWithSort:(void *)sort;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)_accessibilityTableViewSwitch;
- (id)_accessibilityTextElementText;
- (id)_accessibilityTextLabelIfExists;
- (id)_accessibilityUserTestingChildrenInAccessibilitySortedOrder:(void *)order;
- (id)_accessoryViewForType:(int64_t)type;
- (id)_axCustomActionsForActions:(uint64_t)actions;
- (id)_checkmarkImage:(BOOL)image;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)accessibilityElements;
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)preferredFocusedView;
- (id)tableTextAccessibleLabel:(id)label;
- (id)tableTextAccessibleLocalizationBundleID:(id)d;
- (id)tableTextAccessibleLocalizationBundlePath:(id)path;
- (id)tableTextAccessibleLocalizedTableName:(id)name;
- (id)tableTextAccessibleStringKey:(id)key;
- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement;
- (int64_t)_accessibilityUserTestingChildrenCount;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (uint64_t)_accessibilityHasReorderActions;
- (uint64_t)_accessibilityIsButton;
- (uint64_t)_accessibilityIsRemoveConfirmVisible;
- (uint64_t)_accessibilityIsRemoveControlVisible;
- (uint64_t)_accessibilityTableViewIsOpaque;
- (uint64_t)_axSubviewIgnoredDueToHiddenOrZeroAlphaAncestry:(uint64_t)ancestry;
- (uint64_t)accessibilityIsFetchingChildren;
- (uint64_t)accessibilitySetIsFetchingChildren:(uint64_t)result;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityClearChildren;
- (void)_accessibilityFinishSwipeAction:(id)action controller:(id)controller indexPath:(id)path tableView:(id)view tvDelegate:(id)delegate wasEditing:(BOOL)editing;
- (void)_accessibilityHandleRemoveConfirm;
- (void)_accessibilityHandleRemoveSwitch;
- (void)_accessibilityHandleReorderMoveDownWithFocus;
- (void)_accessibilityHandleReorderMoveUpWithFocus;
- (void)_accessibilityKeyCommandActionMinus;
- (void)_accessibilityKeyCommandActionPlus;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReevaluateChildren;
- (void)_accessibilityRemoveInternalData;
- (void)_accessibilityReuseChildren:(void *)children forMockParent:;
- (void)_accessibilitySwitchMockView:(void *)view toParent:(void *)parent withPossibleSubviews:;
- (void)_accessibilityUpdateContainerElementReferencesIfNeededForNewElements:(id)elements;
- (void)_accessibilityUpdateRemoveControl;
- (void)_axApplyAccessoryType:(id)obj withControl:;
- (void)_axSetFocusedSubview:(id)subview;
- (void)_didRemoveSubview:(id)subview;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_setAccessibilityMockParent:(void *)parent;
- (void)_setPopupMenuButton:(id)button;
- (void)_setShowingDeleteConfirmation:(BOOL)confirmation;
- (void)_setSwipeContainerView:(id)view;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)deleteConfirmationControlWasCancelled:(id)cancelled;
- (void)deleteConfirmationControlWasClicked:(id)clicked;
- (void)didTransitionToState:(unint64_t)state;
- (void)editControlWasClicked:(id)clicked;
- (void)paste:(id)paste;
- (void)prepareForReuse;
- (void)registerMockChild:(id)child;
- (void)selectAll:(id)all;
- (void)setAccessoryView:(id)view;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setShowingDeleteConfirmation:(BOOL)confirmation;
- (void)unregisterMockChild:(id)child;
@end

@implementation UITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v20 = location;
  v19 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v16 = "@";
  v10 = @"UITableView";
  v15 = "B";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  v18 = "v";
  [location[0] validateClass:v10 hasInstanceMethod:@"_draggingReorderingCell:yDelta:touch:" withFullSignature:{v16, "d", v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_endReorderingForCell:wasCancelled:animated:" withFullSignature:{v18, v16, v15, v15, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_dragAndDropUsedForReordering" withFullSignature:{v15, 0}];
  v17 = @"UITableViewCell";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v11 = @"UIView";
  [location[0] validateClass:v16 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v17 hasInstanceMethod:@"_checkmarkImage:" withFullSignature:{v16, v15, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_manuallyManagesSwipeUI" withFullSignature:{v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"prepareForReuse" withFullSignature:{v18, 0}];
  [location[0] validateClass:@"UITableViewRowAction" hasInstanceMethod:@"_handler" withFullSignature:{"@?", 0}];
  v3 = "UIControl";
  [location[0] validateClass:v17 hasInstanceVariable:@"_editingAccessoryView" withType:?];
  [location[0] validateClass:v17 hasInstanceVariable:@"_accessoryView" withType:v3];
  [location[0] validateClass:v17 hasInstanceMethod:@"_defaultAccessoryView" withFullSignature:{v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"setShowingDeleteConfirmation:" withFullSignature:{v18, v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_setShowingDeleteConfirmation:" withFullSignature:{v18, v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_tableView" withFullSignature:{v16, 0}];
  v4 = @"UITable_UITableViewCellDelegate";
  [location[0] validateClass:v10 conformsToProtocol:?];
  v5 = @"UICollectionViewTableCell";
  [location[0] validateClass:? conformsToProtocol:?];
  [location[0] validateClass:v17 hasInstanceMethod:@"_editableTextField:" withFullSignature:{v16, v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_textLabel:" withFullSignature:{v16, v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_detailTextLabel:" withFullSignature:{v16, v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_imageView:" withFullSignature:{v16, v15, 0}];
  [location[0] validateClass:v5];
  [location[0] validateClass:v17 hasInstanceMethod:@"_setSwipeContainerView:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"swipeActionController:leadingSwipeConfigurationForItemAtIndexPath:" withFullSignature:{v16, v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"swipeActionController:trailingSwipeConfigurationForItemAtIndexPath:" withFullSignature:{v16, v16, 0}];
  v6 = @"UISwipeActionController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"_swipedViewForItemAtIndexPath:" withFullSignature:{v16, 0}];
  v7 = @"UISwipeOccurrence";
  v8 = "UIView<UISwipeActionPullViewCommonProtocol>";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:v7 hasInstanceVariable:@"_leadingPullView" withType:v8];
  [location[0] validateClass:@"UISwipeActionPullView" hasInstanceVariable:@"_buttons" withType:"NSMutableArray"];
  [location[0] validateClass:v10 hasInstanceMethod:@"swipeActionController:didEndSwipeForItemAtIndexPath:" withFullSignature:{v18, v16, v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"swipeActionController:willBeginSwipeForItemAtIndexPath:" withFullSignature:{v18, v16, v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_dragController" withFullSignature:{v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_dropController" withFullSignature:{v16, 0}];
  v9 = "{CGPoint=dd}";
  [location[0] validateClass:v10 hasInstanceMethod:@"_canBeginDragAtPoint:indexPath:" withFullSignature:{v15, "{CGPoint=dd}", v16, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_targetIndexPathAtPoint:withLastTargetIndexPath:adjustedForGap:" withFullSignature:{v9, v16, v15, 0}];
  [location[0] validateClass:@"_UITableViewDragController"];
  [location[0] validateClass:v17 hasInstanceMethod:@"canPerformAction:withSender:" withFullSignature:{v15, ":", v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"preferredFocusedView" withFullSignature:{v16, 0}];
  [location[0] validateClass:v17 isKindOfClass:v11];
  [location[0] validateClass:v11 hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{v15, 0}];
  [location[0] validateClass:v11 hasInstanceMethod:@"_isFocusedOrAncestorOfFocusedView" withFullSignature:{v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_didUpdateFocusInContext:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_accessoryViewForType:" withFullSignature:{v16, "q", 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"cut:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"copy:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"paste:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v17 hasInstanceVariable:@"_editingData" withType:v16];
  v12 = @"UITableViewCellEditingData";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:v12 hasInstanceVariable:@"_reorderControl" withType:"UITableViewCellReorderControl"];
  [location[0] validateClass:v17 hasInstanceMethod:@"_accessoryManager" withFullSignature:{v16, 0}];
  v13 = @"UICellAccessoryManager";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v13 hasInstanceMethod:@"currentConfigurationIdentifier" withFullSignature:{v16, 0}];
  [location[0] validateClass:@"UICellAccessoryConfiguration" hasInstanceMethod:@"leadingAccessories" withFullSignature:{v16, 0}];
  v14 = @"_UICellAccessory";
  [location[0] validateClass:@"_UICellViewAccessory" isKindOfClass:?];
  [location[0] validateClass:v14 hasInstanceMethod:@"view" withFullSignature:{v16, 0}];
  [location[0] validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityRespondsToUserInteraction" withFullSignature:{v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_setPopupMenuButton:" withFullSignature:{v18, v16, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"_hasEditingAccessoryView" withFullSignature:{v15, 0}];
  [location[0] validateClass:v17 hasInstanceMethod:@"editControlWasClicked:" withFullSignature:{v18, v16, 0}];
  objc_storeStrong(v20, v19);
}

- (id)_accessoryViewForType:(int64_t)type
{
  selfCopy = self;
  v8 = a2;
  typeCopy = type;
  v5.receiver = self;
  v5.super_class = UITableViewCellAccessibility;
  obj = [(UITableViewCellAccessibility *)&v5 _accessoryViewForType:type];
  [(UITableViewCellAccessibility *)selfCopy _axApplyAccessoryType:typeCopy withControl:obj];
  v4 = MEMORY[0x29EDC9748](obj);
  objc_storeStrong(&obj, 0);

  return v4;
}

- (void)_axApplyAccessoryType:(id)obj withControl:
{
  selfCopy = self;
  v4 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (selfCopy)
  {
    [location accessibilitySetIdentification:0];
    if (v4)
    {
      switch(v4)
      {
        case 1:
          goto LABEL_8;
        case 2:
          [location accessibilitySetIdentification:@"UITableCellViewDisclosure"];
          [location setIsAccessibilityElement:1];
          break;
        case 3:
LABEL_8:
          [location setIsAccessibilityElement:0];
          break;
        case 4:
          [location setIsAccessibilityElement:1];
          [location accessibilitySetIdentification:@"UITableViewCellAccessoryDetailButton"];
          break;
      }
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  [(UITableViewCellAccessibility *)selfCopy _axSetShouldForceRefreshChildren:1];
  v3 = selfCopy;
  accessoryType = [(UITableViewCellAccessibility *)selfCopy accessoryType];
  v4 = [(UITableViewCellAccessibility *)selfCopy safeUIViewForKey:@"_defaultAccessoryView"];
  [(UITableViewCellAccessibility *)v3 _axApplyAccessoryType:accessoryType withControl:v4];
  MEMORY[0x29EDC9740](v4);
}

- (id)_accessibilityTextLabelIfExists
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 838860800;
    v8 = 48;
    v9 = __Block_byref_object_copy__23;
    v10 = __Block_byref_object_dispose__23;
    v11 = 0;
    v4[1] = &v5;
    v4[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v3 = MEMORY[0x29EDC9748](v6[5]);
    objc_storeStrong(v4, 0);
    _Block_object_dispose(&v5, 8);
    objc_storeStrong(&v11, 0);
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v1 = v13;

  return v1;
}

double __63__UITableViewCellAccessibility__accessibilityTextLabelIfExists__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _textLabel:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityDetailTextLabelIfExists
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 838860800;
    v8 = 48;
    v9 = __Block_byref_object_copy__23;
    v10 = __Block_byref_object_dispose__23;
    v11 = 0;
    v4[1] = &v5;
    v4[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v3 = MEMORY[0x29EDC9748](v6[5]);
    objc_storeStrong(v4, 0);
    _Block_object_dispose(&v5, 8);
    objc_storeStrong(&v11, 0);
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v1 = v13;

  return v1;
}

double __69__UITableViewCellAccessibility__accessibilityDetailTextLabelIfExists__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _detailTextLabel:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityImageViewIfExists
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 838860800;
    v8 = 48;
    v9 = __Block_byref_object_copy__23;
    v10 = __Block_byref_object_dispose__23;
    v11 = 0;
    v4[1] = &v5;
    v4[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v3 = MEMORY[0x29EDC9748](v6[5]);
    objc_storeStrong(v4, 0);
    _Block_object_dispose(&v5, 8);
    objc_storeStrong(&v11, 0);
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v1 = v13;

  return v1;
}

double __63__UITableViewCellAccessibility__accessibilityImageViewIfExists__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _imageView:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityEditableTextFieldIfExists
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 838860800;
    v8 = 48;
    v9 = __Block_byref_object_copy__23;
    v10 = __Block_byref_object_dispose__23;
    v11 = 0;
    v4[1] = &v5;
    v4[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v3 = MEMORY[0x29EDC9748](v6[5]);
    objc_storeStrong(v4, 0);
    _Block_object_dispose(&v5, 8);
    objc_storeStrong(&v11, 0);
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v1 = v13;

  return v1;
}

double __71__UITableViewCellAccessibility__accessibilityEditableTextFieldIfExists__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _editableTextField:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityTableViewSwitch
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self safeValueForKey:@"accessoryView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] _accessibilityViewIsVisibleIgnoringAXOverrides:1] & 1) != 0 || (-[UITableViewCellAccessibility safeBoolForKey:](selfCopy, "safeBoolForKey:", @"isEditing") & 1) != 0 && (v2 = -[UITableViewCellAccessibility safeValueForKey:](selfCopy, "safeValueForKey:", @"editingAccessoryView"), v3 = location[0], location[0] = v2, MEMORY[0x29EDC9740](v3), objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(location[0], "_accessibilityViewIsVisibleIgnoringAXOverrides:", 1))
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v8;

  return v4;
}

- (void)copy:(id)copy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, copy);
  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v3 copy:location[0]];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC18]];
  objc_storeStrong(location, 0);
}

- (void)cut:(id)cut
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cut);
  [(UITableViewCellAccessibility *)selfCopy _accessibilityIgnoreNextPostPasteboardTextOperation:*MEMORY[0x29EDBDC18]];
  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v3 cut:location[0]];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC20]];
  objc_storeStrong(location, 0);
}

- (void)paste:(id)paste
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paste);
  [(UITableViewCellAccessibility *)selfCopy _accessibilityPostPasteboardTextForOperation:*MEMORY[0x29EDBDC50]];
  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v3 paste:location[0]];
  objc_storeStrong(location, 0);
}

- (void)selectAll:(id)all
{
  selfCopy = self;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, all);
  v3 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_tableView"];
  [v3 _performAction:v7 forCell:selfCopy sender:location];
  MEMORY[0x29EDC9740](v3);
  notification = *MEMORY[0x29EDC7EA8];
  v5 = accessibilityLocalizedString(*MEMORY[0x29EDBDC78]);
  UIAccessibilityPostNotification(notification, v5);
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(&location, 0);
}

- (void)registerMockChild:(id)child
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  objc_storeStrong(location, 0);
}

- (void)unregisterMockChild:(id)child
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  objc_storeStrong(location, 0);
}

- (void)_setPopupMenuButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v16.receiver = selfCopy;
  v16.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v16 _setPopupMenuButton:location[0]];
  objc_initWeak(&v15, location[0]);
  v4 = objc_loadWeakRetained(&v15);
  accessibilityTraits = [v4 accessibilityTraits];
  MEMORY[0x29EDC9740](v4);
  v14 = accessibilityTraits;
  objc_initWeak(v13, selfCopy);
  v3 = location[0];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__UITableViewCellAccessibility__setPopupMenuButton___block_invoke;
  v10 = &unk_29F30D4E8;
  objc_copyWeak(&v11, v13);
  objc_copyWeak(v12, &v15);
  v12[1] = v14;
  [v3 _setAccessibilityTraitsBlock:&v6];
  objc_destroyWeak(v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v15);
  objc_storeStrong(location, 0);
}

uint64_t __52__UITableViewCellAccessibility__setPopupMenuButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = 0;
  LOBYTE(v4) = 0;
  if ([WeakRetained _accessibilityIsUserInteractionEnabled])
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = 1;
    v4 = [v6 _accessibilityIsUserInteractionEnabled] ^ 1;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v4)
  {
    return *(a1 + 48) & ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    return *(a1 + 48);
  }
}

- (id)_accessibilitySubviewsForAdding
{
  if (self)
  {
    v2 = [(UITableViewCellAccessibility *)self _accessibilitySubviewsForAddingWithSort:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilitySubviewsForAddingWithSort:(void *)sort
{
  v23 = *MEMORY[0x29EDCA608];
  sortCopy = sort;
  v19 = a2;
  if (sort)
  {
    v12 = [sortCopy safeValueForKey:@"subviews"];
    v18 = [v12 mutableCopyWithZone:0];
    location = [sortCopy safeUIViewForKey:{@"contentView", MEMORY[0x29EDC9740](v12).n128_f64[0]}];
    if (([location _accessibilityHasOrderedChildren] & 1) == 0)
    {
      [v18 removeObject:location];
      memset(__b, 0, sizeof(__b));
      v9 = [sortCopy safeUIViewForKey:@"contentView"];
      obj = [v9 subviews];
      v11 = [obj countByEnumeratingWithState:__b objects:v22 count:{16, MEMORY[0x29EDC9740](v9).n128_f64[0]}];
      if (v11)
      {
        v6 = *__b[2];
        v7 = 0;
        v8 = v11;
        while (1)
        {
          v5 = v7;
          if (*__b[2] != v6)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(__b[1] + 8 * v7);
          if ([v18 indexOfObjectIdenticalTo:v16] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v18 addObject:v16];
          }

          ++v7;
          if (v5 + 1 >= v8)
          {
            v7 = 0;
            v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
            if (!v8)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
    }

    v13 = 0;
    v4 = 0;
    if (v19)
    {
      superview = [sortCopy superview];
      v13 = 1;
      v4 = superview != 0;
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](superview);
    }

    if (v4)
    {
      [sortCopy _accessibilitySortElementsUsingGeometry:v18];
    }

    v21 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v21 = 0;
  }

  v2 = v21;

  return v2;
}

- (id)_checkmarkImage:(BOOL)image
{
  selfCopy = self;
  v8 = a2;
  imageCopy = image;
  v5.receiver = self;
  v5.super_class = UITableViewCellAccessibility;
  v6 = [(UITableViewCellAccessibility *)&v5 _checkmarkImage:image];
  [v6 setAccessibilityIdentifier:@"Checkmark"];
  v4 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);

  return v4;
}

- (int64_t)_accessibilityUserTestingChildrenCount
{
  v5 = [(UITableViewCellAccessibility *)self _accessibilityBoolValueForKey:?];
  [(UITableViewCellAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXPerformingChildrenCount"];
  v3 = [(UITableViewCellAccessibility *)self _accessibilityUserTestingChildrenInAccessibilitySortedOrder:?];
  v4 = [v3 count];
  [(UITableViewCellAccessibility *)self _accessibilitySetBoolValue:v5 & 1 forKey:@"AXPerformingChildrenCount", MEMORY[0x29EDC9740](v3).n128_f64[0]];
  return v4;
}

- (id)_accessibilityUserTestingChildrenInAccessibilitySortedOrder:(void *)order
{
  v120 = *MEMORY[0x29EDCA608];
  orderCopy = order;
  v109 = a2;
  if (order)
  {
    _accessibilityInternalData = [(UITableViewCellAccessibility *)orderCopy _accessibilityInternalData];
    _accessibilityChildren = [orderCopy _accessibilityChildren];
    v106 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(_accessibilityChildren, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](_accessibilityChildren);
    v66 = [obj countByEnumeratingWithState:__b objects:v119 count:16];
    if (v66)
    {
      v62 = *__b[2];
      v63 = 0;
      v64 = v66;
      while (1)
      {
        v61 = v63;
        if (*__b[2] != v62)
        {
          objc_enumerationMutation(obj);
        }

        v105 = *(__b[1] + 8 * v63);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v106 addObject:v105];
        }

        ++v63;
        if (v61 + 1 >= v64)
        {
          v63 = 0;
          v64 = [obj countByEnumeratingWithState:__b objects:v119 count:16];
          if (!v64)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if (*(_accessibilityInternalData + 10))
    {
      [v106 addObjectsFromArray:{*(_accessibilityInternalData + 10), v2}];
    }

    v103 = [(UITableViewCellAccessibility *)orderCopy _accessibilitySubviewsForAddingWithSort:?];
    array = [MEMORY[0x29EDB8DE8] array];
    memset(v100, 0, sizeof(v100));
    v59 = MEMORY[0x29EDC9748](v103);
    v60 = [v59 countByEnumeratingWithState:v100 objects:v118 count:16];
    if (v60)
    {
      v56 = *v100[2];
      v57 = 0;
      v58 = v60;
      while (1)
      {
        v55 = v57;
        if (*v100[2] != v56)
        {
          objc_enumerationMutation(v59);
        }

        v101 = *(v100[1] + 8 * v57);
        if (([v101 accessibilityElementsHidden] & 1) == 0)
        {
          location = 0;
          memset(v97, 0, sizeof(v97));
          v53 = MEMORY[0x29EDC9748](v106);
          v54 = [v53 countByEnumeratingWithState:v97 objects:v117 count:16];
          if (v54)
          {
            v50 = *v97[2];
            v51 = 0;
            v52 = v54;
            while (1)
            {
              v49 = v51;
              if (*v97[2] != v50)
              {
                objc_enumerationMutation(v53);
              }

              v98 = *(v97[1] + 8 * v51);
              v95 = 0;
              v48 = 1;
              if (v98 != v101)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (v48 = 1, ([v98 _accessibilityIsViewDescendantOfElement:v101] & 1) == 0))
                {
                  objc_opt_class();
                  v47 = 0;
                  if (objc_opt_isKindOfClass())
                  {
                    view = [(UIAccessibilityElementMockView *)v98 view];
                    v95 = 1;
                    v47 = [view _accessibilityIsViewDescendantOfElement:v101];
                  }

                  v48 = v47;
                }
              }

              if (v95)
              {
                MEMORY[0x29EDC9740](view);
              }

              if (v48)
              {
                break;
              }

              ++v51;
              if (v49 + 1 >= v52)
              {
                v51 = 0;
                v52 = [v53 countByEnumeratingWithState:v97 objects:v117 count:16];
                if (!v52)
                {
                  goto LABEL_34;
                }
              }
            }

            objc_storeStrong(&location, v98);
            v94 = 6;
          }

          else
          {
LABEL_34:
            v94 = 0;
          }

          *&v3 = MEMORY[0x29EDC9740](v53).n128_u64[0];
          if (location)
          {
            [v106 removeObject:{location, v3}];
            objc_opt_class();
            v92 = 0;
            v46 = 0;
            if (objc_opt_isKindOfClass())
            {
              view2 = [(UIAccessibilityElementMockView *)location view];
              v92 = 1;
              v46 = 0;
              if (view2 == v101)
              {
                objc_opt_class();
                isKindOfClass = 1;
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                }

                v46 = isKindOfClass;
              }
            }

            if (v92)
            {
              MEMORY[0x29EDC9740](view2);
            }

            if (v46)
            {
              [array addObject:v101];
            }

            else
            {
              [array addObject:location];
            }
          }

          else
          {
            [array addObject:{v101, v3}];
          }

          objc_storeStrong(&location, 0);
        }

        ++v57;
        if (v55 + 1 >= v58)
        {
          v57 = 0;
          v58 = [v59 countByEnumeratingWithState:v100 objects:v118 count:16];
          if (!v58)
          {
            break;
          }
        }
      }
    }

    *&v4 = MEMORY[0x29EDC9740](v59).n128_u64[0];
    [v106 addObjectsFromArray:{array, v4}];
    _accessibilitySupplementaryHeaderViews = [orderCopy _accessibilitySupplementaryHeaderViews];
    memset(v89, 0, sizeof(v89));
    reverseObjectEnumerator = [_accessibilitySupplementaryHeaderViews reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v44 = [allObjects countByEnumeratingWithState:v89 objects:v116 count:{16, MEMORY[0x29EDC9740](reverseObjectEnumerator).n128_f64[0]}];
    if (v44)
    {
      v39 = *v89[2];
      v40 = 0;
      v41 = v44;
      while (1)
      {
        v38 = v40;
        if (*v89[2] != v39)
        {
          objc_enumerationMutation(allObjects);
        }

        v90 = *(v89[1] + 8 * v40);
        [v106 insertObject:v90 atIndex:0];
        ++v40;
        if (v38 + 1 >= v41)
        {
          v40 = 0;
          v41 = [allObjects countByEnumeratingWithState:v89 objects:v116 count:16];
          if (!v41)
          {
            break;
          }
        }
      }
    }

    *&v5 = MEMORY[0x29EDC9740](allObjects).n128_u64[0];
    _accessibilitySupplementaryFooterViews = [orderCopy _accessibilitySupplementaryFooterViews];
    memset(v86, 0, sizeof(v86));
    v36 = MEMORY[0x29EDC9748](_accessibilitySupplementaryFooterViews);
    v37 = [v36 countByEnumeratingWithState:v86 objects:v115 count:16];
    if (v37)
    {
      v33 = *v86[2];
      v34 = 0;
      v35 = v37;
      while (1)
      {
        v32 = v34;
        if (*v86[2] != v33)
        {
          objc_enumerationMutation(v36);
        }

        v87 = *(v86[1] + 8 * v34);
        [v106 addObject:v87];
        ++v34;
        if (v32 + 1 >= v35)
        {
          v34 = 0;
          v35 = [v36 countByEnumeratingWithState:v86 objects:v115 count:16];
          if (!v35)
          {
            break;
          }
        }
      }
    }

    *&v6 = MEMORY[0x29EDC9740](v36).n128_u64[0];
    _accessibilityParentTableView = [orderCopy _accessibilityParentTableView];
    _swipeActionController = [_accessibilityParentTableView _swipeActionController];
    memset(v83, 0, 0x40uLL);
    v82 = 0;
    objc_opt_class();
    v31 = [_swipeActionController safeValueForKey:@"swipeOccurrences"];
    v81 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v31);
    v80 = MEMORY[0x29EDC9748](v81);
    objc_storeStrong(&v81, 0);
    v29 = v80;
    v30 = [v80 countByEnumeratingWithState:v83 objects:v114 count:16];
    if (v30)
    {
      v26 = *v83[2];
      v27 = 0;
      v28 = v30;
      while (1)
      {
        v25 = v27;
        if (*v83[2] != v26)
        {
          objc_enumerationMutation(v29);
        }

        v83[8] = *(v83[1] + 8 * v27);
        v78 = 0;
        objc_opt_class();
        v77 = __UIAccessibilityCastAsClass();
        if (v78)
        {
          abort();
        }

        v76 = MEMORY[0x29EDC9748](v77);
        objc_storeStrong(&v77, 0);
        v79 = v76;
        indexPath = [v76 indexPath];
        _accessibilityIndexPath = [orderCopy _accessibilityIndexPath];
        v24 = [indexPath isEqual:?];
        MEMORY[0x29EDC9740](_accessibilityIndexPath);
        MEMORY[0x29EDC9740](indexPath);
        if (v24)
        {
          memset(v74, 0, sizeof(v74));
          v20 = MEMORY[0x29EDC9748](&unk_2A238EAB8);
          v21 = [v20 countByEnumeratingWithState:v74 objects:v113 count:16];
          if (v21)
          {
            v17 = *v74[2];
            v18 = 0;
            v19 = v21;
            while (1)
            {
              v16 = v18;
              if (*v74[2] != v17)
              {
                objc_enumerationMutation(v20);
              }

              v75 = *(v74[1] + 8 * v18);
              v72 = 0;
              v15 = [v79 safeValueForKey:v75];
              v71 = __UIAccessibilitySafeClass();
              MEMORY[0x29EDC9740](v15);
              if (v72)
              {
                abort();
              }

              v70 = MEMORY[0x29EDC9748](v71);
              objc_storeStrong(&v71, 0);
              v73 = v70;
              v69 = [v70 safeArrayForKey:@"_buttons"];
              memset(v67, 0, sizeof(v67));
              v13 = MEMORY[0x29EDC9748](v69);
              v14 = [v13 countByEnumeratingWithState:v67 objects:v112 count:16];
              if (v14)
              {
                v10 = *v67[2];
                v11 = 0;
                v12 = v14;
                while (1)
                {
                  v9 = v11;
                  if (*v67[2] != v10)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v68 = *(v67[1] + 8 * v11);
                  [v68 setAccessibilityContainer:orderCopy];
                  [v106 addObject:v68];
                  ++v11;
                  if (v9 + 1 >= v12)
                  {
                    v11 = 0;
                    v12 = [v13 countByEnumeratingWithState:v67 objects:v112 count:16];
                    if (!v12)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x29EDC9740](v13);
              objc_storeStrong(&v69, 0);
              objc_storeStrong(&v73, 0);
              ++v18;
              if (v16 + 1 >= v19)
              {
                v18 = 0;
                v19 = [v20 countByEnumeratingWithState:v74 objects:v113 count:16];
                if (!v19)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v20);
        }

        objc_storeStrong(&v79, 0);
        ++v27;
        if (v25 + 1 >= v28)
        {
          v27 = 0;
          v28 = [v29 countByEnumeratingWithState:v83 objects:v114 count:16];
          if (!v28)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](v29);
    v111 = MEMORY[0x29EDC9748](v106);
    v94 = 1;
    objc_storeStrong(&_swipeActionController, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
    objc_storeStrong(&_accessibilitySupplementaryFooterViews, 0);
    objc_storeStrong(&_accessibilitySupplementaryHeaderViews, 0);
    objc_storeStrong(&array, 0);
    objc_storeStrong(&v103, 0);
    objc_storeStrong(&v106, 0);
    objc_storeStrong(&_accessibilityChildren, 0);
    objc_storeStrong(&_accessibilityInternalData, 0);
  }

  else
  {
    v111 = 0;
  }

  v7 = v111;

  return v7;
}

- (id)_accessibilityInternalData
{
  selfCopy = self;
  if (self)
  {
    v3 = [selfCopy _accessibilityValueForKey:@"AXInternalData"];
    if (!v3)
    {
      v3 = [objc_allocWithZone(_AXTableViewCellInternal) init];
      [selfCopy _accessibilitySetRetainedValue:v3 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }

    v5 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v28 = a2;
  v26.receiver = self;
  v26.super_class = UITableViewCellAccessibility;
  accessibilityTraits = [(UITableViewCellAccessibility *)&v26 accessibilityTraits];
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
  accessoryType = [(UITableViewCellAccessibility *)selfCopy accessoryType];
  indexPathsForSelectedRows = [_accessibilityParentTableView indexPathsForSelectedRows];
  _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
  v22 = 0;
  bOOLValue = 0;
  if ([indexPathsForSelectedRows containsObject:?])
  {
    v23 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"isSelected"];
    v22 = 1;
    bOOLValue = [v23 BOOLValue];
  }

  if (v22)
  {
    MEMORY[0x29EDC9740](v23);
  }

  MEMORY[0x29EDC9740](_accessibilityIndexPath);
  *&v2 = MEMORY[0x29EDC9740](indexPathsForSelectedRows).n128_u64[0];
  if (bOOLValue)
  {
    if (!accessoryType || accessoryType == 3)
    {
      accessibilityTraits |= *MEMORY[0x29EDC7FC0];
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v7 = 1;
    if ([(UITableViewCellAccessibility *)selfCopy accessoryType]!= 3)
    {
      v21 = 0;
      _accessibilityImageViewIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityImageViewIfExists];
      v20 = __UIAccessibilitySafeClass();
      MEMORY[0x29EDC9740](_accessibilityImageViewIfExists);
      v19 = MEMORY[0x29EDC9748](v20);
      objc_storeStrong(&v20, 0);
      v18 = v19;
      v17 = 1;
      image = [v19 image];
      v15 = 1;
      accessibilityIdentifier = [image accessibilityIdentifier];
      v13 = 1;
      v7 = [accessibilityIdentifier hasPrefix:@"UIPreferencesBlueCheck"];
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](accessibilityIdentifier);
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](image);
    }

    if (v17)
    {
      MEMORY[0x29EDC9740](v18);
    }

    if (v7)
    {
      accessibilityTraits |= *MEMORY[0x29EDC7FC0];
    }
  }

  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsButton]& 1) != 0)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
  }

  _accessibilityTextLabelIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityTextLabelIfExists];
  if (_accessibilityTextLabelIfExists && ([_accessibilityTextLabelIfExists safeBoolForKey:@"enabled"] & 1) == 0)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7FA8];
  }

  _accessibilityTableViewSwitch = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewSwitch];
  if (_accessibilityTableViewSwitch)
  {
    accessibilityTraits2 = [_accessibilityTableViewSwitch accessibilityTraits];
    accessibilityTraits |= accessibilityTraits2;
    accessibilityTraits &= ~*MEMORY[0x29EDC7578];
  }

  v5 = accessibilityTraits;
  objc_storeStrong(&_accessibilityTableViewSwitch, 0);
  objc_storeStrong(&_accessibilityTextLabelIfExists, 0);
  objc_storeStrong(&_accessibilityParentTableView, 0);
  return v5;
}

- (uint64_t)_accessibilityIsButton
{
  if (self)
  {
    v3 = 1;
    if (!-[UITableViewCellAccessibility _accessibilityIsButtonAccessoryType:](self, [self accessoryType]))
    {
      isEditing = 0;
      if (-[UITableViewCellAccessibility _accessibilityIsButtonAccessoryType:](self, [self editingAccessoryType]))
      {
        isEditing = [self isEditing];
      }

      v3 = isEditing;
    }

    v5 = v3 & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (_NSRange)_accessibilityIndexPathAsRange
{
  location[2] = self;
  location[1] = a2;
  v8 = 0x7FFFFFFFLL;
  v7 = 0;
  v9 = 0x7FFFFFFFLL;
  v10 = 0;
  v5 = 0x7FFFFFFFLL;
  section = 0;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityIndexPath];
  if (location[0])
  {
    v5 = [location[0] row];
    section = [location[0] section];
  }

  objc_storeStrong(location, 0);
  v2 = v5;
  v3 = section;
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)_accessibilityScrollToVisibleForNextElementRetrieval:(int64_t)retrieval
{
  selfCopy = self;
  v48 = a2;
  retrievalCopy = retrieval;
  v46 = [(UITableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (([v46 isScrollEnabled] & 1) != 0 && (objc_msgSend(v46, "frame"), v41 = v3, v42 = v4, v43 = v5, v44 = v6, v45 = v6, -[UIView frame](selfCopy, "frame"), v37 = v7, v38 = v8, v39 = v9, v40 = v10, v10 >= v45))
  {
    [(UIView *)selfCopy bounds];
    rect.origin.x = v11;
    rect.origin.y = v12;
    rect.size.width = v13;
    rect.size.height = v14;
    if (retrievalCopy == 1)
    {
      rect.origin.y = rect.origin.y + rect.size.height - v45 / 2.0;
    }

    else
    {
      rect.origin.y = rect.origin.y - (rect.size.height - v45 / 2.0);
    }

    v51 = UIAccessibilityConvertFrameToScreenCoordinates(rect, selfCopy);
    v35 = v51;
    [v46 _accessibilityScrollToFrame:selfCopy forView:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];
    [v46 _accessibilityOpaqueElementScrollCleanup];
    v50 = 1;
    v34 = 1;
  }

  else
  {
    _accessibilityScrollToVisible = [(UIView *)selfCopy _accessibilityScrollToVisible];
    if (([v46 isScrollEnabled] & 1) == 0)
    {
      goto LABEL_25;
    }

    v32 = 0;
    _accessibilityIndexPath = [(UIView *)selfCopy _accessibilityIndexPath];
    v30 = 0;
    if (retrievalCopy == 1)
    {
      _accessibilityNextIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityNextIndexPath];
      v17 = v32;
      v32 = _accessibilityNextIndexPath;
      v18 = [v46 footerViewForSection:{objc_msgSend(_accessibilityIndexPath, "section", MEMORY[0x29EDC9740](v17).n128_f64[0])}];
      v19 = v30;
      v30 = v18;
      v15 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    }

    else if (retrievalCopy == 2)
    {
      _accessibilityPreviousIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityPreviousIndexPath];
      v21 = v32;
      v32 = _accessibilityPreviousIndexPath;
      v22 = [v46 headerViewForSection:{objc_msgSend(_accessibilityIndexPath, "section", MEMORY[0x29EDC9740](v21).n128_f64[0])}];
      v23 = v30;
      v30 = v22;
      v15 = MEMORY[0x29EDC9740](v23).n128_u64[0];
    }

    section = [_accessibilityIndexPath section];
    if (section == [v32 section] || !v30)
    {
      location = [v46 indexPathsForVisibleRows];
      if (!v32 || ([location containsObject:v32] & 1) != 0 || (v27 = objc_msgSend(v32, "section"), v27 >= objc_msgSend(v46, "numberOfSections")) || (v26 = objc_msgSend(v32, "row"), v26 >= objc_msgSend(v46, "numberOfRowsInSection:", objc_msgSend(v32, "section"))))
      {
        v34 = 0;
      }

      else
      {
        v24 = 3;
        if (retrievalCopy != 1)
        {
          v24 = 1;
        }

        [v46 scrollToRowAtIndexPath:v32 atScrollPosition:v24 animated:0];
        [v46 _accessibilityOpaqueElementScrollCleanup];
        v50 = 1;
        v34 = 1;
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v50 = _accessibilityScrollToVisible & 1;
      v34 = 1;
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&_accessibilityIndexPath, 0);
    objc_storeStrong(&v32, 0);
    if (!v34)
    {
LABEL_25:
      v50 = _accessibilityScrollToVisible & 1;
      v34 = 1;
    }
  }

  objc_storeStrong(&v46, 0);
  return v50 & 1;
}

- (id)_accessibilityNextIndexPath
{
  selfCopy = self;
  if (self)
  {
    _accessibilityParentTableView = [selfCopy _accessibilityParentTableView];
    location = [selfCopy _accessibilityIndexPath];
    if (_accessibilityParentTableView && location)
    {
      v8 = [_accessibilityParentTableView numberOfRowsInSection:{objc_msgSend(location, "section")}];
      if (v8 <= [location row] + 1)
      {
        numberOfSections = [_accessibilityParentTableView numberOfSections];
        if (numberOfSections > [location section] + 1)
        {
          v9 = [location section] + 1;
          if ([_accessibilityParentTableView numberOfRowsInSection:v9] > 0)
          {
            v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:v9];
            v4 = location;
            location = v3;
            MEMORY[0x29EDC9740](v4);
          }
        }
      }

      else
      {
        v10 = [location row] + 1;
        v1 = [MEMORY[0x29EDB9FE0] indexPathForRow:v10 inSection:{objc_msgSend(location, "section")}];
        v2 = location;
        location = v1;
        MEMORY[0x29EDC9740](v2);
      }

      v14 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
  }

  else
  {
    v14 = 0;
  }

  v5 = v14;

  return v5;
}

- (id)_accessibilityPreviousIndexPath
{
  selfCopy = self;
  if (self)
  {
    _accessibilityParentTableView = [selfCopy _accessibilityParentTableView];
    location = [selfCopy _accessibilityIndexPath];
    if (_accessibilityParentTableView && location)
    {
      if ([location row] <= 0)
      {
        if (![location row] && objc_msgSend(location, "section") > 0)
        {
          v8 = [location section] - 1;
          v7 = [_accessibilityParentTableView numberOfRowsInSection:v8] - 1;
          if ((v7 & 0x8000000000000000) == 0)
          {
            v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:v7 inSection:v8];
            v4 = location;
            location = v3;
            MEMORY[0x29EDC9740](v4);
          }
        }
      }

      else
      {
        v9 = [location row] - 1;
        v1 = [MEMORY[0x29EDB9FE0] indexPathForRow:v9 inSection:{objc_msgSend(location, "section")}];
        v2 = location;
        location = v1;
        MEMORY[0x29EDC9740](v2);
      }

      v13 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
  }

  else
  {
    v13 = 0;
  }

  v5 = v13;

  return v5;
}

- (void)_accessibilityClearChildren
{
  v16 = *MEMORY[0x29EDCA608];
  v14[2] = self;
  v14[1] = a2;
  v14[0] = [(UITableViewCellAccessibility *)self _accessibilityInternalData];
  if (v14[0])
  {
    [*(v14[0] + 6) setAccessibilityContainer:?];
    [*(v14[0] + 3) setAccessibilityContainer:0];
    [*(v14[0] + 5) setAccessibilityContainer:0];
    [*(v14[0] + 4) setAccessibilityContainer:0];
    [(UITableTextAccessibilityElement *)*(v14[0] + 4) setTextDelegate:?];
    [(UITableTextAccessibilityElement *)*(v14[0] + 4) setAttributeDelegate:?];
    WeakRetained = objc_loadWeakRetained(v14[0] + 8);
    v11 = objc_opt_respondsToSelector();
    MEMORY[0x29EDC9740](WeakRetained);
    if (v11)
    {
      v9 = objc_loadWeakRetained(v14[0] + 8);
      [v9 unregisterAllChildren];
      MEMORY[0x29EDC9740](v9);
    }

    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](*(v14[0] + 1));
    v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v5);
        [v13 setAccessibilityContainer:0];
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    [*(v14[0] + 1) removeAllObjects];
    [*(v14[0] + 7) removeAllObjects];
    [*(v14[0] + 10) removeAllObjects];
    objc_storeStrong(v14[0] + 5, 0);
    objc_storeStrong(v14[0] + 3, 0);
    objc_storeStrong(v14[0] + 6, 0);
    objc_storeStrong(v14[0] + 4, 0);
    objc_storeWeak(v14[0] + 8, 0);
    objc_storeStrong(v14, 0);
  }

  objc_storeStrong(v14, 0);
}

- (void)_accessibilityReevaluateChildren
{
  v31 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self && ([selfCopy _accessibilityBoolValueForKey:@"InDealloc"] & 1) == 0)
  {
    v27 = 0;
    v26 = [(UITableViewCellAccessibility *)selfCopy _accessibilitySubviewsForAddingWithSort:?];
    v25 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v26);
    v16 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(__b[1] + 8 * v13);
        if ([v24 isAccessibilityElement])
        {
          v25 = 1;
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    *&v1 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    accessoryType = [selfCopy accessoryType];
    if (accessoryType == 2 || accessoryType == 4)
    {
      v25 = 1;
    }

    if (v25)
    {
      _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
      memset(v18, 0, sizeof(v18));
      v9 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 1));
      v10 = [v9 countByEnumeratingWithState:v18 objects:v29 count:16];
      if (v10)
      {
        v6 = *v18[2];
        v7 = 0;
        v8 = v10;
        while (1)
        {
          v5 = v7;
          if (*v18[2] != v6)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(v18[1] + 8 * v7);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            location = MEMORY[0x29EDC9748](v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              view = [(UIAccessibilityElementMockView *)v19 view];
              v3 = location;
              location = view;
              MEMORY[0x29EDC9740](v3);
            }

            if (location && [v26 indexOfObject:location] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = 0;
            }

            else
            {
              v27 = 1;
              v21 = 4;
            }

            objc_storeStrong(&location, 0);
            if (v21)
            {
              break;
            }
          }

          ++v7;
          if (v5 + 1 >= v8)
          {
            v7 = 0;
            v8 = [v9 countByEnumeratingWithState:v18 objects:v29 count:16];
            if (!v8)
            {
              goto LABEL_30;
            }
          }
        }
      }

      else
      {
LABEL_30:
        v21 = 0;
      }

      *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      if (v27)
      {
        [selfCopy _accessibilityClearChildren];
      }

      objc_storeStrong(&_accessibilityInternalData, 0);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    objc_storeStrong(&v26, 0);
  }
}

- (void)_accessibilitySwitchMockView:(void *)view toParent:(void *)parent withPossibleSubviews:
{
  v47 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  v43 = 0;
  objc_storeStrong(&v43, view);
  v42 = 0;
  objc_storeStrong(&v42, parent);
  if (selfCopy)
  {
    if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
      [location setAccessibilityContainer:v43];
      [v43 registerMockChild:location];
      view = [(UIAccessibilityElementMockView *)location view];
      v39 = objc_opt_class();
      MEMORY[0x29EDC9740](view);
      memset(__b, 0, sizeof(__b));
      v17 = MEMORY[0x29EDC9748](v42);
      v18 = [v17 countByEnumeratingWithState:__b objects:v46 count:16];
      if (v18)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v18;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(v17);
          }

          v38 = *(__b[1] + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) == 0 || ([selfCopy _accessibilityLabelShouldBeDistinct:v38])
          {
            _accessibilityHasOrderedChildren = 1;
            if (([v38 isAccessibilityElement] & 1) == 0)
            {
              _accessibilityHasOrderedChildren = [v38 _accessibilityHasOrderedChildren];
            }

            v36 = _accessibilityHasOrderedChildren & 1;
            v34 = 0;
            v32 = 0;
            v30 = 0;
            v28 = 0;
            v10 = 0;
            if (_accessibilityHasOrderedChildren)
            {
              v10 = 0;
              if (objc_opt_isKindOfClass())
              {
                accessibilityLabel = [location accessibilityLabel];
                v35 = accessibilityLabel;
                v34 = 1;
                _accessibilityAXAttributedLabel = [v38 _accessibilityAXAttributedLabel];
                v32 = 1;
                v9 = 1;
                if (accessibilityLabel != _accessibilityAXAttributedLabel)
                {
                  accessibilityLabel2 = [location accessibilityLabel];
                  v31 = accessibilityLabel2;
                  v30 = 1;
                  _accessibilityAXAttributedLabel2 = [v38 _accessibilityAXAttributedLabel];
                  v28 = 1;
                  v9 = [accessibilityLabel2 isEqualToString:?];
                }

                v10 = v9;
              }
            }

            if (v28)
            {
              MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel2);
            }

            if (v30)
            {
              MEMORY[0x29EDC9740](v31);
            }

            if (v32)
            {
              MEMORY[0x29EDC9740](_accessibilityAXAttributedLabel);
            }

            if (v34)
            {
              MEMORY[0x29EDC9740](v35);
            }

            if (v10)
            {
              v6 = *(_accessibilityInternalData + 7);
              v21 = MEMORY[0x29EDCA5F8];
              v22 = -1073741824;
              v23 = 0;
              v24 = __91__UITableViewCellAccessibility__accessibilitySwitchMockView_toParent_withPossibleSubviews___block_invoke;
              v25 = &unk_29F30DCD8;
              v26 = MEMORY[0x29EDC9748](v38);
              v27 = [v6 indexOfObjectPassingTest:&v21];
              if (v27 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v38 _accessibilityHasOrderedChildren])
                {
                  v4 = v38;
                  view2 = [(UIAccessibilityElementMockView *)location view];
                  [v4 _accessibilitySwitchOrderedChildrenFrom:?];
                  MEMORY[0x29EDC9740](view2);
                }

                [(UIAccessibilityElementMockView *)location setView:v38];
                v41 = 4;
              }

              else
              {
                v41 = 0;
              }

              objc_storeStrong(&v26, 0);
              if (v41)
              {
                break;
              }
            }
          }

          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [v17 countByEnumeratingWithState:__b objects:v46 count:16];
            if (!v15)
            {
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
LABEL_36:
        v41 = 0;
      }

      MEMORY[0x29EDC9740](v17);
      objc_storeStrong(&_accessibilityInternalData, 0);
      v41 = 0;
    }

    else
    {
      _AXAssert();
      v41 = 1;
    }
  }

  else
  {
    v41 = 1;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

BOOL __91__UITableViewCellAccessibility__accessibilitySwitchMockView_toParent_withPossibleSubviews___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [(UIAccessibilityElementMockView *)location[0] view];
  v5 = v2 == a1[4];
  MEMORY[0x29EDC9740](v2);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)prepareForReuse
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v10 prepareForReuse];
  _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
  WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
  objc_opt_class();
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v7 = 1;
    existingTableViewCell = [(UITableViewCellAccessibilityElement *)v8 existingTableViewCell];
    v5 = 1;
    v4 = existingTableViewCell == selfCopy;
  }

  if (v5)
  {
    MEMORY[0x29EDC9740](existingTableViewCell);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    [v2 setTableViewCell:0];
    MEMORY[0x29EDC9740](v2);
  }

  objc_storeWeak(_accessibilityInternalData + 8, 0);
  objc_storeStrong(_accessibilityInternalData + 10, 0);
  [(UITableViewCellAccessibility *)selfCopy _accessibilityRemoveValueForKey:@"AXIsShowingSelectedBackground"];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
  objc_storeStrong(&_accessibilityInternalData, 0);
}

- (void)_didRemoveSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v4.receiver = selfCopy;
  v4.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v4 _didRemoveSubview:location[0]];
  _accessibilityInternalDataRetrieveOnly = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalDataRetrieveOnly];
  MEMORY[0x29EDC9740](_accessibilityInternalDataRetrieveOnly);
  if (_accessibilityInternalDataRetrieveOnly)
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityReevaluateChildren];
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityInternalDataRetrieveOnly
{
  if (self)
  {
    v2 = [self _accessibilityValueForKey:@"AXInternalData"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_accessibilityTableViewIsOpaque
{
  if (self)
  {
    _accessibilityParentTableView = [self _accessibilityParentTableView];
    v3 = [_accessibilityParentTableView isAccessibilityOpaqueElementProvider] & 1;
    MEMORY[0x29EDC9740](_accessibilityParentTableView);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)_accessibilityReuseChildren:(void *)children forMockParent:
{
  v47 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location = 0;
  objc_storeStrong(&location, a2);
  v41 = 0;
  objc_storeStrong(&v41, children);
  if (selfCopy)
  {
    if (([(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewIsOpaque]& 1) != 0)
    {
      v40 = 1;
    }

    else
    {
      _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
      objc_storeWeak(_accessibilityInternalData + 8, v41);
      if (location == selfCopy)
      {
        v40 = 1;
      }

      else
      {
        v38 = [location _accessibilityValueForKey:@"AXInternalData"];
        if (v38)
        {
          v37 = 0;
          [*(_accessibilityInternalData + 1) removeAllObjects];
          objc_storeStrong(_accessibilityInternalData + 5, 0);
          objc_storeStrong(_accessibilityInternalData + 3, 0);
          objc_storeStrong(_accessibilityInternalData + 4, *(v38 + 4));
          [(UITableTextAccessibilityElement *)*(_accessibilityInternalData + 4) setTextDelegate:v41];
          [(UITableTextAccessibilityElement *)*(_accessibilityInternalData + 4) setAttributeDelegate:v41];
          [v41 registerMockChild:*(_accessibilityInternalData + 4)];
          [*(_accessibilityInternalData + 4) setAccessibilityContainer:v41];
          objc_storeStrong(_accessibilityInternalData + 6, *(v38 + 6));
          [v41 registerMockChild:*(_accessibilityInternalData + 6)];
          if (*(v38 + 3))
          {
            objc_storeStrong(_accessibilityInternalData + 3, *(v38 + 3));
            [v41 registerMockChild:*(_accessibilityInternalData + 3)];
          }

          if (*(v38 + 4) || ![*(v38 + 1) count] || objc_msgSend(*(v38 + 7), "count"))
          {
            if ([*(v38 + 7) count])
            {
              _accessibilitySubviewsForAdding = [(UITableViewCellAccessibility *)selfCopy _accessibilitySubviewsForAdding];
              for (i = 0; ; ++i)
              {
                v19 = i;
                if (v19 >= [_accessibilitySubviewsForAdding count])
                {
                  break;
                }

                v32 = [_accessibilitySubviewsForAdding objectAtIndex:i];
                if ([v32 _accessibilityViewIsVisible])
                {
                  if (([v32 isAccessibilityElement] & 1) == 0)
                  {
                    memset(v30, 0, sizeof(v30));
                    v15 = selfCopy;
                    subviews = [v32 subviews];
                    v17 = [v15 _accessibilityGeometrySortedElements:?];
                    v18 = [v17 countByEnumeratingWithState:v30 objects:v45 count:{16, MEMORY[0x29EDC9740](subviews).n128_f64[0]}];
                    if (v18)
                    {
                      v12 = *v30[2];
                      v13 = 0;
                      v14 = v18;
                      while (1)
                      {
                        v11 = v13;
                        if (*v30[2] != v12)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v31 = *(v30[1] + 8 * v13);
                        if ([_accessibilitySubviewsForAdding indexOfObjectIdenticalTo:v31] == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [_accessibilitySubviewsForAdding addObject:v31];
                        }

                        ++v13;
                        if (v11 + 1 >= v14)
                        {
                          v13 = 0;
                          v14 = [v17 countByEnumeratingWithState:v30 objects:v45 count:16];
                          if (!v14)
                          {
                            break;
                          }
                        }
                      }
                    }

                    MEMORY[0x29EDC9740](v17);
                  }

                  v40 = 0;
                }

                else
                {
                  v40 = 6;
                }

                objc_storeStrong(&v32, 0);
              }

              memset(v28, 0, sizeof(v28));
              v9 = MEMORY[0x29EDC9748](*(v38 + 7));
              v10 = [v9 countByEnumeratingWithState:v28 objects:v44 count:16];
              if (v10)
              {
                v6 = *v28[2];
                v7 = 0;
                v8 = v10;
                while (1)
                {
                  v5 = v7;
                  if (*v28[2] != v6)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v29 = *(v28[1] + 8 * v7);
                  if (v29 != *(_accessibilityInternalData + 6) && v29 != *(v38 + 3) && v29 != *(v38 + 5) && ([*(_accessibilityInternalData + 1) containsObject:v29] & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [*(_accessibilityInternalData + 7) addObject:v29];
                      [(UITableViewCellAccessibility *)selfCopy _accessibilitySwitchMockView:v29 toParent:v41 withPossibleSubviews:_accessibilitySubviewsForAdding];
                    }
                  }

                  ++v7;
                  if (v5 + 1 >= v8)
                  {
                    v7 = 0;
                    v8 = [v9 countByEnumeratingWithState:v28 objects:v44 count:16];
                    if (!v8)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x29EDC9740](v9);
              objc_storeStrong(&_accessibilitySubviewsForAdding, 0);
            }
          }

          else
          {
            [*(_accessibilityInternalData + 1) addObjectsFromArray:*(v38 + 1)];
            memset(__b, 0, sizeof(__b));
            v24 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 1));
            v25 = [v24 countByEnumeratingWithState:__b objects:v46 count:16];
            if (v25)
            {
              v21 = *__b[2];
              v22 = 0;
              v23 = v25;
              while (1)
              {
                v20 = v22;
                if (*__b[2] != v21)
                {
                  objc_enumerationMutation(v24);
                }

                v36 = *(__b[1] + 8 * v22);
                [v36 setAccessibilityContainer:v41];
                [v41 registerMockChild:v36];
                ++v22;
                if (v20 + 1 >= v23)
                {
                  v22 = 0;
                  v23 = [v24 countByEnumeratingWithState:__b objects:v46 count:16];
                  if (!v23)
                  {
                    break;
                  }
                }
              }
            }

            *&v3 = MEMORY[0x29EDC9740](v24).n128_u64[0];
          }

          v27 = 1;
          if ([*(v38 + 1) count] == 1 && objc_msgSend(*(_accessibilityInternalData + 1), "count") == 1)
          {
            v27 = *(v38 + 4) != *(_accessibilityInternalData + 4);
          }

          [*(v38 + 1) removeAllObjects];
          _accessibilityChildren = [selfCopy _accessibilityChildren];
          if (v27)
          {
            UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
          }
        }

        objc_storeStrong(&v38, 0);
        v40 = 0;
      }

      objc_storeStrong(&_accessibilityInternalData, 0);
    }
  }

  else
  {
    v40 = 1;
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UITableViewCellAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"InDealloc"];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityRemoveInternalData];
  v2.receiver = selfCopy;
  v2.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v2 dealloc];
}

- (void)_accessibilityRemoveInternalData
{
  if (result)
  {
    return [result _accessibilityRemoveValueForKey:@"AXInternalData"];
  }

  return result;
}

- (id)accessibilityElements
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UITableViewCellAccessibility;
  return [(UITableViewCellAccessibility *)&v3 accessibilityElements];
}

- (BOOL)_accessibilityUsesOverrideContainerProtocol
{
  selfCopy = self;
  v14 = a2;
  if (!_accessibilityUsesOverrideContainerProtocol_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilityUsesOverrideContainerProtocol_BaseNSObjectMethod = class_getInstanceMethod(v2, sel_accessibilityElementCount);
    v3 = objc_opt_class();
    _accessibilityUsesOverrideContainerProtocol_BaseNSObjectAXElementsMethod = class_getInstanceMethod(v3, sel_accessibilityElements);
  }

  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, sel_accessibilityElementCount);
  v5 = objc_opt_class();
  v12 = class_getInstanceMethod(v5, sel_accessibilityElements);
  if (InstanceMethod == _accessibilityUsesOverrideContainerProtocol_BaseNSObjectMethod)
  {
    v8 = 0;
    v7 = 1;
    if (_accessibilityUsesOverrideContainerProtocol_BaseNSObjectAXElementsMethod == v12)
    {
      v10.receiver = selfCopy;
      v10.super_class = UITableViewCellAccessibility;
      accessibilityElements = [(UITableViewCellAccessibility *)&v10 accessibilityElements];
      v8 = 1;
      v7 = [accessibilityElements count] != 0;
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](accessibilityElements);
    }

    return v7;
  }

  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityBoolValueForKey:@"CheckingOverride"]& 1) == 0)
  {
    accessibilityElementCount = [(UITableViewCellAccessibility *)selfCopy accessibilityElementCount];
    return (accessibilityElementCount & 0x8000000000000000) == 0 && accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL;
  }

  return 0;
}

- (void)_accessibilityUpdateContainerElementReferencesIfNeededForNewElements:(id)elements
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
  isAccessibilityOpaqueElementProvider = [_accessibilityParentTableView isAccessibilityOpaqueElementProvider];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityParentTableView).n128_u64[0];
  if (isAccessibilityOpaqueElementProvider)
  {
    v7.receiver = selfCopy;
    v7.super_class = UITableViewCellAccessibility;
    [(UITableViewCellAccessibility *)&v7 _accessibilityUpdateContainerElementReferencesIfNeededForNewElements:location[0], v3];
  }

  else
  {
    _accessibilityMockParent = [(UITableViewCellAccessibility *)selfCopy _accessibilityMockParent];
    if (_accessibilityMockParent == selfCopy)
    {
      _AXLogWithFacility();
    }

    else
    {
      [_accessibilityMockParent _accessibilityUpdateContainerElementReferencesIfNeededForNewElements:location[0]];
    }

    objc_storeStrong(&_accessibilityMockParent, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilityContainerElements
{
  selfCopy = self;
  if (self)
  {
    _accessibilityElements = [selfCopy _accessibilityElements];
    if (_accessibilityElements)
    {
      v10 = MEMORY[0x29EDC9748](_accessibilityElements);
      v7 = 1;
    }

    else
    {
      accessibilityElementCount = [selfCopy accessibilityElementCount];
      if (accessibilityElementCount && accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL)
      {
        array = [MEMORY[0x29EDB8DE8] array];
        for (i = 0; i < accessibilityElementCount; ++i)
        {
          v3 = [selfCopy accessibilityElementAtIndex:i];
          [array axSafelyAddObject:v3];
          objc_storeStrong(&v3, 0);
        }

        v10 = MEMORY[0x29EDC9748](array);
        v7 = 1;
        objc_storeStrong(&array, 0);
      }

      else
      {
        v10 = 0;
        v7 = 1;
      }
    }

    objc_storeStrong(&_accessibilityElements, 0);
  }

  else
  {
    v10 = 0;
  }

  v1 = v10;

  return v1;
}

- (_NSRange)accessibilityRowRange
{
  selfCopy = self;
  v6[1] = a2;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0;
  v6[0] = [(UITableViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v6[0])
  {
    location = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    numberOfSections = [v6[0] numberOfSections];
    if (numberOfSections > [location section])
    {
      v8 = [location row];
      v9 = [v6[0] numberOfRowsInSection:{objc_msgSend(location, "section")}];
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v6, 0);
  v2 = v8;
  v3 = v9;
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)_accessibilityImplementsDefaultRowRange
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = MEMORY[0x29EDC9748](self);
  v3 = (__71__UITableViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke)() ^ 1;
  objc_storeStrong(v4, 0);
  return v3;
}

BOOL __71__UITableViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXIsShowingSelectedBackground_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_41);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityRowRange);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityRowRange);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != AXIsShowingSelectedBackground_block_invoke_BaseImplementation;
}

void __71__UITableViewCellAccessibility__accessibilityImplementsDefaultRowRange__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityRowRange);
  if (InstanceMethod)
  {
    AXIsShowingSelectedBackground_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityRowRange);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityMockParent
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UITableViewCellAccessibility *)self _accessibilityInternalData];
  WeakRetained = objc_loadWeakRetained(v4[0] + 8);
  objc_storeStrong(v4, 0);

  return WeakRetained;
}

- (void)_setAccessibilityMockParent:(void *)parent
{
  parentCopy = parent;
  location = 0;
  objc_storeStrong(&location, a2);
  if (parentCopy)
  {
    _accessibilityInternalData = [(UITableViewCellAccessibility *)parentCopy _accessibilityInternalData];
    objc_storeWeak(_accessibilityInternalData + 8, location);
    objc_storeStrong(&_accessibilityInternalData, 0);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityIndexPath
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = [(UITableViewCellAccessibility *)self _accessibilityInternalData];
  WeakRetained = objc_loadWeakRetained(v16[0] + 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    indexPath = [(UITableViewCellAccessibilityElement *)WeakRetained indexPath];
    v14 = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 838860800;
    v9 = 48;
    v10 = __Block_byref_object_copy__23;
    v11 = __Block_byref_object_dispose__23;
    v12 = 0;
    v5[1] = &v6;
    v5[0] = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    v4 = MEMORY[0x29EDC9748](v7[5]);
    objc_storeStrong(v5, 0);
    _Block_object_dispose(&v6, 8);
    objc_storeStrong(&v12, 0);
    v13 = v4;
    indexPath = MEMORY[0x29EDC9748](v4);
    v14 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v16, 0);
  v2 = indexPath;

  return v2;
}

double __55__UITableViewCellAccessibility__accessibilityIndexPath__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _accessibilityParentTableView];
  v1 = [v6 indexPathForCell:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

- (BOOL)_accessibilityHasTextOperations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityParentTableView];
  v6 = 0;
  LOBYTE(v3) = 0;
  if (location[0])
  {
    visibleCells = [location[0] visibleCells];
    v6 = 1;
    v3 = [visibleCells containsObject:selfCopy] ^ 1;
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](visibleCells);
  }

  if (v3)
  {
    _accessibilityHasTextOperations = 0;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableViewCellAccessibility;
    _accessibilityHasTextOperations = [(UITableViewCellAccessibility *)&v4 _accessibilityHasTextOperations];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  return _accessibilityHasTextOperations & 1;
}

- (uint64_t)_accessibilityIsRemoveControlVisible
{
  selfCopy = self;
  if (self)
  {
    v9 = [selfCopy safeValueForKey:@"_editingData"];
    location = [v9 safeValueForKey:@"_editControl"];
    v4 = [selfCopy safeValueForKey:@"editingStyle"];
    intValue = [v4 intValue];
    *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    if (location && intValue == 2 && ([selfCopy _accessibilityTableViewCellHidesInsertControl] & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v6 = 0;
      LOBYTE(v3) = 0;
      if (intValue)
      {
        superview = [location superview];
        v6 = 1;
        LOBYTE(v3) = 0;
        if (superview)
        {
          v3 = [location isHiddenOrHasHiddenAncestor] ^ 1;
        }
      }

      v11 = v3 & 1;
      if (v6)
      {
        MEMORY[0x29EDC9740](superview);
      }
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (uint64_t)_accessibilityIsRemoveConfirmVisible
{
  if (self)
  {
    v2 = [self showingDeleteConfirmation] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_accessibilityCellEditingControl
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(UITableViewCellAccessibility *)self safeValueForKey:@"_editingData"];
  v4 = [v5[0] safeValueForKey:@"_editControl"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)_accessibilityCellReorderControl
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(UITableViewCellAccessibility *)self safeValueForKey:@"_editingData"];
  v4 = [v5[0] safeValueForKey:@"_reorderControl"];
  v3 = MEMORY[0x29EDC9748](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)_accessibilityHandleRemoveSwitch
{
  selfCopy = self;
  if (self)
  {
    _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
    if (![*(_accessibilityInternalData + 1) count])
    {
      v45 = 1;
LABEL_33:
      objc_storeStrong(&_accessibilityInternalData, 0);
      return;
    }

    v43 = 0;
    v28 = 0;
    if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsRemoveControlVisible]& 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v43 = 1;
      v28 = WeakRetained != 0;
    }

    if (v43)
    {
      MEMORY[0x29EDC9740](WeakRetained);
    }

    if (!v28)
    {
      if (*(_accessibilityInternalData + 4))
      {
        [*(_accessibilityInternalData + 4) accessibilityFrame];
        v29 = v10;
        v30 = v11;
        v31 = v12;
        v33 = v13;
        window = [selfCopy window];
        windowScene = [window windowScene];
        interfaceOrientation = [windowScene interfaceOrientation];
        MEMORY[0x29EDC9740](windowScene);
        MEMORY[0x29EDC9740](window);
        if (UIInterfaceOrientationIsLandscape_0(interfaceOrientation))
        {
          [*(_accessibilityInternalData + 3) accessibilityFrame];
          v34 = v33 + v14;
          [*(_accessibilityInternalData + 3) accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v29, v30 - v15, v31, v34}];
        }

        else
        {
          [*(_accessibilityInternalData + 3) accessibilityFrame];
          v32 = v31 + v16;
          [*(_accessibilityInternalData + 3) accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v29 - v17, v30, v32, v33}];
        }
      }

      v18 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      [v18 unregisterMockChild:*(_accessibilityInternalData + 3)];
      [*(_accessibilityInternalData + 1) removeObjectIdenticalTo:{*(_accessibilityInternalData + 3), MEMORY[0x29EDC9740](v18).n128_f64[0]}];
      objc_storeStrong(_accessibilityInternalData + 3, 0);
      goto LABEL_32;
    }

    _accessibilityCellEditingControl = [selfCopy _accessibilityCellEditingControl];
    location = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 3));
    if (location)
    {
      [(UIAccessibilityElementMockView *)location setView:_accessibilityCellEditingControl];
      if ([*(_accessibilityInternalData + 1) indexOfObjectIdenticalTo:location] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([*(_accessibilityInternalData + 1) count])
        {
          [*(_accessibilityInternalData + 1) insertObject:location atIndex:0];
        }

        else
        {
          [*(_accessibilityInternalData + 1) addObject:location];
        }
      }
    }

    else
    {
      v26 = objc_allocWithZone(UIAccessibilityElementMockView);
      v27 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      location = [v26 initWithAccessibilityContainer:?];
      MEMORY[0x29EDC9740](0);
      *&v1 = MEMORY[0x29EDC9740](v27).n128_u64[0];
      if (!location)
      {
        v45 = 1;
        goto LABEL_25;
      }

      if ([*(_accessibilityInternalData + 1) count])
      {
        [*(_accessibilityInternalData + 1) insertObject:location atIndex:0];
      }

      else
      {
        [*(_accessibilityInternalData + 1) addObject:location];
      }

      objc_storeStrong(_accessibilityInternalData + 3, location);
      [(UIAccessibilityElementMockView *)location setView:_accessibilityCellEditingControl];
      v25 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      [v25 registerMockChild:location];
      MEMORY[0x29EDC9740](v25);
      if (*(_accessibilityInternalData + 4))
      {
        [*(_accessibilityInternalData + 4) accessibilityFrame];
        v35 = v2;
        v36 = v3;
        v37 = v4;
        v39 = v5;
        window2 = [selfCopy window];
        windowScene2 = [window2 windowScene];
        interfaceOrientation2 = [windowScene2 interfaceOrientation];
        MEMORY[0x29EDC9740](windowScene2);
        MEMORY[0x29EDC9740](window2);
        if (UIInterfaceOrientationIsLandscape_0(interfaceOrientation2))
        {
          [location accessibilityFrame];
          v40 = v39 - v6;
          [location accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v35, v36 + v7, v37, v40}];
        }

        else
        {
          [location accessibilityFrame];
          v38 = v37 - v8;
          [location accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v35 + v9, v36, v38, v39}];
        }
      }
    }

    v45 = 0;
LABEL_25:
    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityCellEditingControl, 0);
    if (v45)
    {
      goto LABEL_33;
    }

LABEL_32:
    v45 = 0;
    goto LABEL_33;
  }
}

- (id)_accessibilityFindRemoveConfirmSubview
{
  selfCopy = self;
  if (self)
  {
    if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsRemoveConfirmVisible]& 1) != 0)
    {
      v3 = [selfCopy _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_681];
      firstObject = [v3 firstObject];
      objc_storeStrong(&v3, 0);
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  v1 = firstObject;

  return v1;
}

uint64_t __70__UITableViewCellAccessibility__accessibilityFindRemoveConfirmSubview__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uitableviewcel_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (void)_accessibilityHandleRemoveConfirm
{
  selfCopy = self;
  if (self)
  {
    _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
    if (![*(_accessibilityInternalData + 1) count])
    {
      v37 = 1;
LABEL_28:
      objc_storeStrong(&_accessibilityInternalData, 0);
      return;
    }

    v35 = 0;
    v24 = 0;
    if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsRemoveConfirmVisible]& 1) != 0)
    {
      WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v35 = 1;
      v24 = WeakRetained != 0;
    }

    if (v35)
    {
      MEMORY[0x29EDC9740](WeakRetained);
    }

    if (!v24)
    {
      if (*(_accessibilityInternalData + 5))
      {
        if (*(_accessibilityInternalData + 4))
        {
          [*(_accessibilityInternalData + 4) accessibilityFrame];
          v25 = v8;
          v26 = v9;
          v27 = v10;
          v28 = v11;
          window = [selfCopy window];
          windowScene = [window windowScene];
          interfaceOrientation = [windowScene interfaceOrientation];
          MEMORY[0x29EDC9740](windowScene);
          MEMORY[0x29EDC9740](window);
          if (UIInterfaceOrientationIsLandscape_0(interfaceOrientation))
          {
            [*(_accessibilityInternalData + 5) accessibilityFrame];
            [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v25, v26, v27, v28 + v12}];
          }

          else
          {
            [*(_accessibilityInternalData + 5) accessibilityFrame];
            [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v25, v26, v27 + v13, v28}];
          }
        }

        v14 = objc_loadWeakRetained(_accessibilityInternalData + 8);
        [v14 unregisterMockChild:*(_accessibilityInternalData + 5)];
        [*(_accessibilityInternalData + 1) removeObjectIdenticalTo:{*(_accessibilityInternalData + 5), MEMORY[0x29EDC9740](v14).n128_f64[0]}];
        objc_storeStrong(_accessibilityInternalData + 5, 0);
      }

      goto LABEL_27;
    }

    _accessibilityFindRemoveConfirmSubview = [(UITableViewCellAccessibility *)selfCopy _accessibilityFindRemoveConfirmSubview];
    location = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 5));
    if (location)
    {
      [(UIAccessibilityElementMockView *)location setView:_accessibilityFindRemoveConfirmSubview];
    }

    else
    {
      v22 = objc_allocWithZone(UIAccessibilityElementMockView);
      v23 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      location = [v22 initWithAccessibilityContainer:?];
      MEMORY[0x29EDC9740](0);
      *&v1 = MEMORY[0x29EDC9740](v23).n128_u64[0];
      if (!location)
      {
        v37 = 1;
        goto LABEL_19;
      }

      [*(_accessibilityInternalData + 1) addObject:{location, v1}];
      objc_storeStrong(_accessibilityInternalData + 5, location);
      [(UIAccessibilityElementMockView *)location setView:_accessibilityFindRemoveConfirmSubview];
      v21 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      [v21 registerMockChild:location];
      MEMORY[0x29EDC9740](v21);
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], location);
      if (*(_accessibilityInternalData + 4))
      {
        [*(_accessibilityInternalData + 4) accessibilityFrame];
        v29 = v2;
        v30 = v3;
        v31 = v4;
        v32 = v5;
        window2 = [selfCopy window];
        windowScene2 = [window2 windowScene];
        interfaceOrientation2 = [windowScene2 interfaceOrientation];
        MEMORY[0x29EDC9740](windowScene2);
        MEMORY[0x29EDC9740](window2);
        if (UIInterfaceOrientationIsLandscape_0(interfaceOrientation2))
        {
          [location accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v29, v30, v31, v32 - v6}];
        }

        else
        {
          [location accessibilityFrame];
          [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v29, v30, v31 - v7, v32}];
        }
      }
    }

    v37 = 0;
LABEL_19:
    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityFindRemoveConfirmSubview, 0);
    if (v37)
    {
      goto LABEL_28;
    }

LABEL_27:
    v37 = 0;
    goto LABEL_28;
  }
}

- (void)_accessibilityUpdateRemoveControl
{
  if (self)
  {
    [(UITableViewCellAccessibility *)self _accessibilityHandleRemoveSwitch];
    [(UITableViewCellAccessibility *)self _accessibilityHandleRemoveConfirm];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (BOOL)_accessibilityIsDescendantOfElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
  v6 = location[0];
  WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
  *&v3 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  if (v6 == WeakRetained)
  {
    v12 = 1;
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = UITableViewCellAccessibility;
    v12 = [(UITableViewCellAccessibility *)&v7 _accessibilityIsDescendantOfElement:location[0], v3];
  }

  v8 = 1;
  objc_storeStrong(&_accessibilityInternalData, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (BOOL)accessibilityElementIsFocused
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  _accessibilityInternalData = [(UITableViewCellAccessibility *)self _accessibilityInternalData];
  if ([(UITableViewCellAccessibility *)selfCopy isAccessibilityElement])
  {
    WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
    MEMORY[0x29EDC9740](WeakRetained);
    if (WeakRetained)
    {
      v2 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v3 = location[0];
      location[0] = v2;
      MEMORY[0x29EDC9740](v3);
    }
  }

  if (!location[0] && *(_accessibilityInternalData + 4))
  {
    objc_storeStrong(location, *(_accessibilityInternalData + 4));
  }

  if (location[0] && location[0] != selfCopy)
  {
    accessibilityElementIsFocused = [location[0] accessibilityElementIsFocused] & 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UITableViewCellAccessibility;
    accessibilityElementIsFocused = [(UITableViewCellAccessibility *)&v6 accessibilityElementIsFocused];
  }

  objc_storeStrong(&_accessibilityInternalData, 0);
  objc_storeStrong(location, 0);
  return accessibilityElementIsFocused & 1;
}

- (BOOL)_accessibilityAvoidsMockViewContainers
{
  selfCopy = self;
  v4 = a2;
  if (([(UITableViewCellAccessibility *)self _accessibilityTableViewIsOpaque]& 1) != 0)
  {
    return 1;
  }

  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellAccessibility;
  return [(UITableViewCellAccessibility *)&v3 _accessibilityAvoidsMockViewContainers];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v149 = *MEMORY[0x29EDCA608];
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v139 = [(UITableViewCellAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v131 = 0;
  v57 = 0;
  if ((v139 & 1) == 0)
  {
    v133 = MEMORY[0x29EDCA5F8];
    v134 = -1073741824;
    v135 = 0;
    v136 = __64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v137 = &unk_29F30CEB0;
    v138 = MEMORY[0x29EDC9748](selfCopy);
    v132 = &v138;
    v131 = 1;
    v57 = (__64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v57)
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:@"AXInHitTestOverride"];
    v130 = [(UITableViewCellAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v143 = MEMORY[0x29EDC9748](v130);
    v129 = 1;
    objc_storeStrong(&v130, 0);
  }

  else
  {
    v129 = 0;
  }

  if (v131)
  {
    objc_storeStrong(v132, 0);
  }

  if (!v129)
  {
    if (([location[0] _accessibilityAutomationHitTest] & 1) == 0)
    {
      if ([location[0] _accessibilityHitTestType] == 3)
      {
        v143 = [(UITableViewCellAccessibility *)selfCopy __accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
        v129 = 1;
        goto LABEL_88;
      }

      goto LABEL_43;
    }

    v128 = 0;
    v56 = [(UITableViewCellAccessibility *)selfCopy _accessibilityUserTestingChildrenInAccessibilitySortedOrder:?];
    reverseObjectEnumerator = [v56 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator);
    MEMORY[0x29EDC9740](v56);
    oslog = AXLogUIA();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v54 = selfCopy;
      subviews = [(UITableViewCellAccessibility *)selfCopy subviews];
      v124 = MEMORY[0x29EDC9748](subviews);
      __os_log_helper_16_2_3_8_64_8_64_8_64(v148, allObjects, v54, v124);
      _os_log_debug_impl(&dword_29C4D6000, oslog, type, "Cell children: %@ for %@ -> {subviews: %@}", v148, 0x20u);
      MEMORY[0x29EDC9740](subviews);
      objc_storeStrong(&v124, 0);
    }

    objc_storeStrong(&oslog, 0);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](allObjects);
    v52 = [obj countByEnumeratingWithState:__b objects:v147 count:16];
    if (v52)
    {
      v48 = *__b[2];
      v49 = 0;
      v50 = v52;
      while (1)
      {
        v47 = v49;
        if (*__b[2] != v48)
        {
          objc_enumerationMutation(obj);
        }

        v123 = *(__b[1] + 8 * v49);
        v121 = 0;
        aPoint = testCopy;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UITableViewCellAccessibility *)selfCopy convertPoint:v123 toView:testCopy];
          v46.x = v4;
          v46.y = v5;
          v119 = v46;
          aPoint = v46;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = selfCopy;
            view = [(UIAccessibilityElementMockView *)v123 view];
            [(UITableViewCellAccessibility *)v45 convertPoint:testCopy toView:?];
            v44.x = v6;
            v44.y = v7;
            v118 = v44;
            aPoint = v44;
            MEMORY[0x29EDC9740](view);
          }
        }

        v117 = AXLogUIA();
        v116 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
        {
          v39 = v117;
          v40 = v116;
          v41 = v123;
          v42 = selfCopy;
          v38 = NSStringFromPoint(aPoint);
          v115 = MEMORY[0x29EDC9748](v38);
          __os_log_helper_16_2_3_8_64_8_64_8_64(v146, v41, v42, v115);
          _os_log_debug_impl(&dword_29C4D6000, v39, v40, "hit test: check child %@ [in cell %@] with pt: %@", v146, 0x20u);
          MEMORY[0x29EDC9740](v38);
          objc_storeStrong(&v115, 0);
        }

        objc_storeStrong(&v117, 0);
        v8 = [v123 _accessibilityHitTest:location[0] withEvent:aPoint];
        v9 = v121;
        v121 = v8;
        MEMORY[0x29EDC9740](v9);
        if (v121)
        {
          v114 = AXLogUIA();
          v113 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
          {
            v36 = v114;
            v37 = v113;
            __os_log_helper_16_2_1_8_64(v145, v121);
            _os_log_impl(&dword_29C4D6000, v36, v37, "Found tableViewCell result: %@", v145, 0xCu);
          }

          objc_storeStrong(&v114, 0);
          if ([v121 _accessibilityElementIsBeingHitTested])
          {
            v112 = AXLogUIA();
            v111 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
            {
              v35 = v112;
              __os_log_helper_16_2_1_8_64(v144, v121);
              _os_log_impl(&dword_29C4D6000, v35, v111, "This was the element being hit tested for so returnign that: %@", v144, 0xCu);
            }

            objc_storeStrong(&v112, 0);
            v143 = MEMORY[0x29EDC9748](v121);
            v129 = 1;
            goto LABEL_31;
          }

          objc_storeStrong(&v128, v121);
        }

        v129 = 0;
LABEL_31:
        objc_storeStrong(&v121, 0);
        if (v129)
        {
          goto LABEL_35;
        }

        ++v49;
        if (v47 + 1 >= v50)
        {
          v49 = 0;
          v50 = [obj countByEnumeratingWithState:__b objects:v147 count:16];
          if (!v50)
          {
            break;
          }
        }
      }
    }

    v129 = 0;
LABEL_35:
    MEMORY[0x29EDC9740](obj);
    if (!v129)
    {
      if (v128)
      {
        v143 = MEMORY[0x29EDC9748](v128);
        v129 = 1;
      }

      else
      {
        v129 = 0;
      }
    }

    objc_storeStrong(&allObjects, 0);
    objc_storeStrong(&v128, 0);
    if (!v129)
    {
LABEL_43:
      if (([(UITableViewCellAccessibility *)selfCopy pointInside:location[0] withEvent:testCopy.x, testCopy.y]& 1) != 0)
      {
        if ([(UITableViewCellAccessibility *)selfCopy isAccessibilityElement])
        {
          v34 = selfCopy;
          _accessibilitySupplementaryHeaderViews = [(UITableViewCellAccessibility *)selfCopy _accessibilitySupplementaryHeaderViews];
          v110 = [(UITableViewCellAccessibility *)v34 _accessibilityHitTestSupplementaryViews:testCopy.x point:testCopy.y withEvent:?];
          MEMORY[0x29EDC9740](0);
          *&v10 = MEMORY[0x29EDC9740](_accessibilitySupplementaryHeaderViews).n128_u64[0];
          if (v110)
          {
            v143 = MEMORY[0x29EDC9748](v110);
            v129 = 1;
          }

          else
          {
            v32 = selfCopy;
            _accessibilitySupplementaryFooterViews = [(UITableViewCellAccessibility *)selfCopy _accessibilitySupplementaryFooterViews];
            v110 = [(UITableViewCellAccessibility *)v32 _accessibilityHitTestSupplementaryViews:testCopy.x point:testCopy.y withEvent:?];
            MEMORY[0x29EDC9740](0);
            MEMORY[0x29EDC9740](_accessibilitySupplementaryFooterViews);
            if (v110)
            {
              v143 = MEMORY[0x29EDC9748](v110);
            }

            else
            {
              v143 = MEMORY[0x29EDC9748](selfCopy);
            }

            v129 = 1;
          }

          objc_storeStrong(&v110, 0);
        }

        else
        {
          UIAccessibilityPointForPoint();
          *&v30 = v11;
          *(&v30 + 1) = v12;
          v109 = v30;
          v102 = 0;
          v103 = &v102;
          v104 = 838860800;
          v105 = 48;
          v106 = __Block_byref_object_copy__23;
          v107 = __Block_byref_object_dispose__23;
          v108 = 0;
          v95 = 0;
          v96 = &v95;
          v97 = 838860800;
          v98 = 48;
          v99 = __Block_byref_object_copy__23;
          v100 = __Block_byref_object_dispose__23;
          v101 = 0;
          v89[0] = 0;
          v89[1] = v89;
          v90 = 0x10000000;
          v91 = 48;
          v92 = &unk_29C6A1FE6;
          v93 = 0;
          v94 = 0;
          CGSizeMake_3();
          v93 = v13;
          v94 = v14;
          v84[0] = 0;
          v84[1] = v84;
          v85 = 0x10000000;
          v86 = 48;
          v87 = &unk_29C6A1FE6;
          v88 = 0uLL;
          v88 = *MEMORY[0x29EDB90E8];
          _accessibilityHitTestShouldFallbackToNearestChild = [(UITableViewCellAccessibility *)selfCopy _accessibilityHitTestShouldFallbackToNearestChild];
          v79[0] = 0;
          v79[1] = v79;
          v80 = 0x20000000;
          v81 = 32;
          v82 = 0x7FEFFFFFFFFFFFFFLL;
          v72 = 0;
          v73 = &v72;
          v74 = 838860800;
          v75 = 48;
          v76 = __Block_byref_object_copy__23;
          v77 = __Block_byref_object_dispose__23;
          v78 = 0;
          v28 = selfCopy;
          _accessibilityHitTestReverseOrder = [(UITableViewCellAccessibility *)selfCopy _accessibilityHitTestReverseOrder];
          v15 = 2;
          if ((_accessibilityHitTestReverseOrder & 1) == 0)
          {
            v15 = 0;
          }

          v27 = v15;
          v62 = MEMORY[0x29EDCA5F8];
          v63 = -1073741824;
          v64 = 0;
          v65 = __64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke_701;
          v66 = &unk_29F30DD00;
          v67 = MEMORY[0x29EDC9748](location[0]);
          v69 = v109;
          v68[1] = v89;
          v68[2] = &v102;
          v68[0] = MEMORY[0x29EDC9748](selfCopy);
          v70 = testCopy;
          v71 = _accessibilityHitTestShouldFallbackToNearestChild & 1;
          v68[3] = v79;
          v68[4] = &v72;
          v68[5] = v84;
          v68[6] = &v95;
          [(UITableViewCellAccessibility *)v28 accessibilityEnumerateContainerElementsWithOptions:v27 usingBlock:&v62];
          v16 = [(UITableViewCellAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
          v26 = v16 != 0;
          *&v17 = MEMORY[0x29EDC9740](v16).n128_u64[0];
          v61 = v26;
          if (!v103[5] && v61 && [(UITableViewCellAccessibility *)selfCopy _accessibilityAlwaysReturnsChild])
          {
            if (_accessibilityHitTestShouldFallbackToNearestChild)
            {
              objc_storeStrong(v103 + 5, v73[5]);
            }

            else
            {
              objc_storeStrong(v103 + 5, v96[5]);
            }
          }

          if (v103[5])
          {
            v60 = 0;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v60, v103[5]);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                view2 = [(UIAccessibilityElementMockView *)v103[5] view];
              }

              else
              {
                view2 = [v103[5] _accessibilityParentView];
              }

              v19 = v60;
              v60 = view2;
              MEMORY[0x29EDC9740](v19);
            }

            [v60 convertPoint:selfCopy fromView:testCopy];
            v59[1] = v20;
            v59[2] = v21;
            v59[0] = [v103[5] _accessibilityHitTest:location[0] withEvent:{*&v20, *&v21}];
            if (v59[0])
            {
              if ([v59[0] isAccessibilityElement] & 1) != 0 || (objc_msgSend(v59[0], "_accessibilityHasOrderedChildren") & 1) != 0 || (objc_msgSend(v59[0], "isAccessibilityOpaqueElementProvider") & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                objc_storeStrong(v103 + 5, v59[0]);
              }

              else if (_accessibilityHitTestShouldFallbackToNearestChild & 1) != 0 && ([v73[5] isAccessibilityElement])
              {
                objc_storeStrong(v103 + 5, v73[5]);
              }

              else if ([v96[5] isAccessibilityElement])
              {
                objc_storeStrong(v103 + 5, v96[5]);
              }
            }

            else if (-[UITableViewCellAccessibility _accessibilityAlwaysReturnsChild](selfCopy, "_accessibilityAlwaysReturnsChild") && [v103[5] accessibilityElementCount] > 0)
            {
              accessibilityElementCount = [v103[5] accessibilityElementCount];
              if (accessibilityElementCount && accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL)
              {
                v22 = [v103[5] accessibilityElementAtIndex:0];
                v23 = v103[5];
                v103[5] = v22;
                MEMORY[0x29EDC9740](v23);
              }

              else
              {
                objc_storeStrong(v103 + 5, 0);
              }
            }

            objc_storeStrong(v59, 0);
            objc_storeStrong(&v60, 0);
          }

          v143 = MEMORY[0x29EDC9748](v103[5]);
          v129 = 1;
          objc_storeStrong(v68, 0);
          objc_storeStrong(&v67, 0);
          _Block_object_dispose(&v72, 8);
          objc_storeStrong(&v78, 0);
          _Block_object_dispose(v79, 8);
          _Block_object_dispose(v84, 8);
          _Block_object_dispose(v89, 8);
          _Block_object_dispose(&v95, 8);
          objc_storeStrong(&v101, 0);
          _Block_object_dispose(&v102, 8);
          objc_storeStrong(&v108, 0);
        }
      }

      else
      {
        v143 = 0;
        v129 = 1;
      }
    }
  }

LABEL_88:
  objc_storeStrong(location, 0);
  v24 = v143;

  return v24;
}

BOOL __64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &AXIsShowingSelectedBackground_block_invoke_2_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_695);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != AXIsShowingSelectedBackground_block_invoke_2_BaseImplementation;
}

void __64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    AXIsShowingSelectedBackground_block_invoke_2_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

void __64__UITableViewCellAccessibility__accessibilityHitTest_withEvent___block_invoke_701(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] accessibilityFrame];
  v17.origin.x = v2;
  v17.origin.y = v3;
  v17.size.width = v4;
  v17.size.height = v5;
  v16 = 1;
  if (([location[0] isAccessibilityElement] & 1) == 0)
  {
    v16 = [location[0] _accessibilityHasOrderedChildren];
  }

  v6 = [location[0] accessibilityTraits];
  if (v6 & *MEMORY[0x29EDC7578]) == 0 || ([*(a1 + 32) _accessibilityAutomationHitTest])
  {
    if (CGRectContainsPoint(v17, *(a1 + 96)) && v17.size.width <= *(*(*(a1 + 48) + 8) + 32) && v17.size.height <= *(*(*(a1 + 48) + 8) + 40))
    {
      if (v16)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), location[0]);
      }

      else
      {
        v14 = location[0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) convertPoint:location[0] toView:{*(a1 + 112), *(a1 + 120)}];
          v9 = [v14 _accessibilityHitTest:*(a1 + 32) withEvent:{v7, v8, v14}];
        }

        else
        {
          v9 = [v14 _accessibilityHitTest:*(a1 + 32) withEvent:{*(a1 + 112), *(a1 + 120), v14}];
        }

        v10 = v9;
        v11 = *(*(a1 + 56) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
        MEMORY[0x29EDC9740](v12);
      }

      *(*(*(a1 + 48) + 8) + 32) = v17.size;
    }

    if (*(a1 + 128))
    {
      [location[0] accessibilityActivationPoint];
      AX_CGPointGetDistanceToPoint();
      if (v13 < *(*(*(a1 + 64) + 8) + 24))
      {
        *(*(*(a1 + 64) + 8) + 24) = v13;
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), location[0]);
      }
    }

    if (v17.size.width >= *(*(*(a1 + 80) + 8) + 32) && v17.size.height >= *(*(*(a1 + 80) + 8) + 40) && (v16 & 1) != 0)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), location[0]);
      *(*(*(a1 + 80) + 8) + 32) = v17.size;
    }
  }

  objc_storeStrong(location, 0);
}

- (id)_accessibilitySupplementaryHeaderViews
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UITableViewCellAccessibility;
  return [(UITableViewCellAccessibility *)&v3 _accessibilitySupplementaryHeaderViews];
}

- (void)setAccessoryView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v4 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"accessoryView"];
  if (v4 != location[0])
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityReevaluateChildren];
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v3 setAccessoryView:location[0]];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityTextElementText
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(UITableViewCellAccessibility *)self _accessibilityInternalData];
  if (*(v8[0] + 4))
  {
    accessibilityLabel = [*(v8[0] + 4) accessibilityLabel];
  }

  else
  {
    _accessibilityEditableTextFieldIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityEditableTextFieldIfExists];
    accessibilityValue = [_accessibilityEditableTextFieldIfExists accessibilityValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [accessibilityValue string];
      v3 = accessibilityValue;
      accessibilityValue = string;
      MEMORY[0x29EDC9740](v3);
    }

    accessibilityLabel = MEMORY[0x29EDC9748](accessibilityValue);
    objc_storeStrong(&accessibilityValue, 0);
    objc_storeStrong(&_accessibilityEditableTextFieldIfExists, 0);
  }

  objc_storeStrong(v8, 0);
  v4 = accessibilityLabel;

  return v4;
}

- (CGRect)tableTextAccessibleFrame:(id)frame
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, frame);
  _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
  WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
  v59 = 0;
  v57 = 0;
  v45 = 0;
  if (WeakRetained != selfCopy)
  {
    v60 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v59 = 1;
    realTableViewCell = [v60 realTableViewCell];
    v57 = 1;
    v45 = realTableViewCell == 0;
  }

  if (v57)
  {
    MEMORY[0x29EDC9740](realTableViewCell);
  }

  if (v59)
  {
    MEMORY[0x29EDC9740](v60);
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v45)
  {
    v43 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    [v43 accessibilityFrame];
    v64 = v3;
    v65 = v4;
    v66 = v5;
    v67 = v6;
    MEMORY[0x29EDC9740](v43);
  }

  else
  {
    v56 = 0;
    v55 = AXRequestingClient();
    if (v55 == 3 || v55 == 4)
    {
      v56 = 1;
    }

    [(UITableViewCellAccessibility *)selfCopy bounds];
    *v54 = v7;
    *&v54[8] = v8;
    *&v54[16] = v9;
    *&v54[24] = v10;
    if (*(_accessibilityInternalData + 3) && (v56 & 1) == 0)
    {
      v40 = selfCopy;
      view = [(UIAccessibilityElementMockView *)*(_accessibilityInternalData + 3) view];
      [view bounds];
      v49 = v11;
      v50 = v12;
      v51 = v13;
      v52 = v14;
      view2 = [(UIAccessibilityElementMockView *)*(_accessibilityInternalData + 3) view];
      [(UITableViewCellAccessibility *)v40 convertRect:v49 fromView:v50, v51, v52];
      v53.origin.x = v15;
      v53.origin.y = v16;
      v53.size.width = v17;
      v53.size.height = v18;
      MEMORY[0x29EDC9740](view2);
      MEMORY[0x29EDC9740](view);
      *v54 = CGRectGetMaxX(v53) + 20.0;
      *&v54[16] = *&v54[16] - CGRectGetMaxX(v53);
    }

    if (*(_accessibilityInternalData + 5))
    {
      view3 = [(UIAccessibilityElementMockView *)*(_accessibilityInternalData + 5) view];
      [view3 bounds];
      *&v54[16] = *&v54[16] - v19;
      MEMORY[0x29EDC9740](view3);
    }

    if (*(_accessibilityInternalData + 6))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view4 = [(UIAccessibilityElementMockView *)*(_accessibilityInternalData + 6) view];
        [view4 frame];
        rect.origin.x = v20;
        rect.origin.y = v21;
        rect.size.width = v22;
        rect.size.height = v23;
        MEMORY[0x29EDC9740](view4);
        CGRectGetMaxX(*v54);
        CGRectGetMinX(rect);
      }
    }

    v46 = 0;
    v37 = 0;
    if (([UITableViewCellAccessibility _accessibilityClientIgnoresReorderControl]& 1) == 0)
    {
      v47 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"showsReorderControl"];
      v46 = 1;
      v37 = 0;
      if ([v47 BOOLValue])
      {
        v37 = objc_opt_respondsToSelector();
      }
    }

    if (v46)
    {
      MEMORY[0x29EDC9740](v47);
    }

    if (v37)
    {
      v36 = selfCopy;
      [(UITableViewCellAccessibility *)selfCopy bounds];
      [(UITableViewCellAccessibility *)v36 reorderRectForBounds:v24, v25, v26, v27];
    }

    UIAccessibilityFrameForBounds();
    v64 = v28;
    v65 = v29;
    v66 = v30;
    v67 = v31;
  }

  objc_storeStrong(&_accessibilityInternalData, 0);
  objc_storeStrong(location, 0);
  v32 = v64;
  v33 = v65;
  v34 = v66;
  v35 = v67;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)_accessibilityRetrieveTableViewIvarsText
{
  selfCopy = self;
  location[1] = a2;
  v9 = [(UITableViewCellAccessibility *)self safeUIViewForKey:@"contentView"];
  location[0] = [(UIViewAccessibility *)v9 _accessibilityRetrieveIvarText];
  if (![location[0] length])
  {
    _accessibilityRetrieveIvarText = [(UIViewAccessibility *)selfCopy _accessibilityRetrieveIvarText];
    v3 = location[0];
    location[0] = _accessibilityRetrieveIvarText;
    MEMORY[0x29EDC9740](v3);
  }

  punctuationCharacterSet = [MEMORY[0x29EDBA040] punctuationCharacterSet];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  [punctuationCharacterSet formUnionWithCharacterSet:?];
  v7 = [location[0] stringByTrimmingCharactersInSet:{punctuationCharacterSet, MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet).n128_f64[0]}];
  v8 = [v7 length];
  MEMORY[0x29EDC9740](v7);
  if (!v8)
  {
    objc_storeStrong(location, 0);
  }

  v5 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(&punctuationCharacterSet, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)tableTextAccessibleLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  _accessibilityRetrieveTableViewCellText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText];
  objc_storeStrong(location, 0);

  return _accessibilityRetrieveTableViewCellText;
}

- (id)tableTextAccessibleStringKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText:?];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_accessibilityRetrieveTableViewCellText:(void *)text
{
  if (text)
  {
    v3 = [text _accessibilityRetrieveTableViewCellTextWithLocalizationOptions:a2 shouldExcludeDetailText:0 forReorderControl:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)tableTextAccessibleLocalizationBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText:?];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)tableTextAccessibleLocalizationBundlePath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v4 = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText:?];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)tableTextAccessibleLocalizedTableName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v4 = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText:?];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_accessibilityLabelShouldBeDistinct:(id)distinct
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, distinct);
  isAccessibilityUserDefinedElement = [location[0] isAccessibilityUserDefinedElement];
  v7 = 0;
  v6 = 1;
  if (([isAccessibilityUserDefinedElement BOOLValue] & 1) == 0)
  {
    accessibilityTraits = [location[0] accessibilityTraits];
    v6 = 1;
    if ((accessibilityTraits & *MEMORY[0x29EDC7F70]) == 0)
    {
      accessibilityIdentification = [location[0] accessibilityIdentification];
      v7 = 1;
      v6 = [accessibilityIdentification isEqualToString:*MEMORY[0x29EDC7618]];
    }
  }

  v10 = v6 & 1;
  if (v7)
  {
    MEMORY[0x29EDC9740](accessibilityIdentification);
  }

  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (id)_accessibilityRetrieveTableViewCellTextExcludingDetailText
{
  if (self)
  {
    v2 = [self _accessibilityRetrieveTableViewCellTextWithLocalizationOptions:0 shouldExcludeDetailText:1 forReorderControl:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityRetrieveTableViewCellTextWithLocalizationOptions:(int64_t)options shouldExcludeDetailText:(BOOL)text forReorderControl:(BOOL)control
{
  v119 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v115 = a2;
  optionsCopy = options;
  textCopy = text;
  controlCopy = control;
  if (([(UITableViewCellAccessibility *)self _accessibilityBoolValueForKey:_accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl__InSortingSentinel]& 1) != 0)
  {
    v117 = MEMORY[0x29EDC9748](@"IN_PROGRESS");
  }

  else
  {
    accessibilityUserDefinedLabel = [(UITableViewCellAccessibility *)selfCopy accessibilityUserDefinedLabel];
    if (accessibilityUserDefinedLabel)
    {
      v117 = MEMORY[0x29EDC9748](accessibilityUserDefinedLabel);
      v110 = 1;
    }

    else
    {
      v109 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"accessibilityTableViewCellText"];
      if (![v109 length] && !-[UITableViewCellAccessibility isAccessibilityElement](selfCopy, "isAccessibilityElement"))
      {
        _accessibilityAXAttributedLabel = [(UITableViewCellAccessibility *)selfCopy _accessibilityAXAttributedLabel];
        v6 = v109;
        v109 = _accessibilityAXAttributedLabel;
        MEMORY[0x29EDC9740](v6);
      }

      isHidden = [(UITableViewCellAccessibility *)selfCopy isHidden];
      if (([(UITableViewCellAccessibility *)selfCopy _accessibilityLanguageOverriddesUser]& 1) != 0)
      {
        v80 = *MEMORY[0x29EDBD950];
      }

      else
      {
        v80 = *MEMORY[0x29EDBD918];
      }

      v107 = MEMORY[0x29EDC9748](v80);
      if (![v109 length])
      {
        _accessibilityTextLabelIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityTextLabelIfExists];
        _accessibilityDetailTextLabelIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityDetailTextLabelIfExists];
        v102 = 0;
        if (([_accessibilityTextLabelIfExists _accessibilityViewIsVisible] & 1) != 0 || (isHidden) && !-[UITableViewCellAccessibility _accessibilityLabelShouldBeDistinct:](selfCopy, "_accessibilityLabelShouldBeDistinct:", _accessibilityTextLabelIfExists))
        {
          accessibilityLabel = [_accessibilityTextLabelIfExists accessibilityLabel];
          v102 = 1;
          v79 = accessibilityLabel;
        }

        else
        {
          v79 = 0;
        }

        v104 = MEMORY[0x29EDC9748](v79);
        if (v102)
        {
          MEMORY[0x29EDC9740](accessibilityLabel);
        }

        whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
        v7 = [v104 stringByTrimmingCharactersInSet:?];
        v8 = v104;
        v104 = v7;
        MEMORY[0x29EDC9740](v8);
        accessibilityLanguage = [_accessibilityTextLabelIfExists accessibilityLanguage];
        if (accessibilityLanguage && v104)
        {
          v9 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v104];
          v10 = v104;
          v104 = v9;
          [v9 setAttribute:accessibilityLanguage forKey:{v107, MEMORY[0x29EDC9740](v10).n128_f64[0]}];
        }

        v98 = 0;
        if (([_accessibilityDetailTextLabelIfExists _accessibilityViewIsVisible] & 1) != 0 || (isHidden) && !-[UITableViewCellAccessibility _accessibilityLabelShouldBeDistinct:](selfCopy, "_accessibilityLabelShouldBeDistinct:", _accessibilityTextLabelIfExists))
        {
          accessibilityLabel2 = [_accessibilityDetailTextLabelIfExists accessibilityLabel];
          v98 = 1;
          v77 = accessibilityLabel2;
        }

        else
        {
          v77 = 0;
        }

        location = MEMORY[0x29EDC9748](v77);
        if (v98)
        {
          MEMORY[0x29EDC9740](accessibilityLabel2);
        }

        whitespaceAndNewlineCharacterSet2 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
        v11 = [location stringByTrimmingCharactersInSet:?];
        v12 = location;
        location = v11;
        MEMORY[0x29EDC9740](v12);
        accessibilityLanguage2 = [_accessibilityDetailTextLabelIfExists accessibilityLanguage];
        v14 = accessibilityLanguage;
        accessibilityLanguage = accessibilityLanguage2;
        *&v15 = MEMORY[0x29EDC9740](v14).n128_u64[0];
        if (accessibilityLanguage && location)
        {
          v16 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{location, v15}];
          v17 = location;
          location = v16;
          [v16 setAttribute:accessibilityLanguage forKey:{v107, MEMORY[0x29EDC9740](v17).n128_f64[0]}];
        }

        if (([(UITableViewCellAccessibility *)selfCopy _accessibilityTableCellUsesDetailTextAsValue]& 1) != 0 || textCopy)
        {
          objc_storeStrong(&location, 0);
        }

        v55 = location;
        v18 = __UIAXStringForVariables();
        v19 = v109;
        v109 = v18;
        options = [MEMORY[0x29EDC7328] options];
        _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
        WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
        objc_opt_class();
        v94 = 0;
        LOBYTE(v75) = 0;
        if (objc_opt_isKindOfClass())
        {
          v95 = objc_loadWeakRetained(_accessibilityInternalData + 8);
          v94 = 1;
          v75 = [(UITableViewCellAccessibilityElement *)v95 usingRealTableViewCell]^ 1;
        }

        if (v94)
        {
          MEMORY[0x29EDC9740](v95);
        }

        *&v20 = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
        if (v75)
        {
          [options setIncludeHiddenViews:{1, v20}];
        }

        _badgeText = [(UITableViewCellAccessibility *)selfCopy _badgeText];
        [options setShouldUseAllSubviews:1];
        [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:_accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl__InSortingSentinel];
        v92 = [(UITableViewCellAccessibility *)selfCopy _accessibilityViewChildrenWithOptions:options];
        [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:_accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl__InSortingSentinel];
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](v92);
        v73 = [obj countByEnumeratingWithState:__b objects:v118 count:16];
        if (v73)
        {
          v69 = *__b[2];
          v70 = 0;
          v71 = v73;
          while (1)
          {
            v68 = v70;
            if (*__b[2] != v69)
            {
              objc_enumerationMutation(obj);
            }

            v91 = *(__b[1] + 8 * v70);
            if (v91 != _accessibilityTextLabelIfExists && v91 != _accessibilityDetailTextLabelIfExists)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v91 isAccessibilityElement] & 1) != 0 && !-[UITableViewCellAccessibility _accessibilityLabelShouldBeDistinct:](selfCopy, "_accessibilityLabelShouldBeDistinct:", v91))
              {
                v89 = 0;
                if (optionsCopy)
                {
                  switch(optionsCopy)
                  {
                    case 1:
                      accessibilityLocalizedStringKey = [v91 accessibilityLocalizedStringKey];
                      v28 = v89;
                      v89 = accessibilityLocalizedStringKey;
                      v21 = MEMORY[0x29EDC9740](v28).n128_u64[0];
                      break;
                    case 2:
                      accessibilityLocalizationBundleID = [v91 accessibilityLocalizationBundleID];
                      v30 = v89;
                      v89 = accessibilityLocalizationBundleID;
                      v21 = MEMORY[0x29EDC9740](v30).n128_u64[0];
                      break;
                    case 3:
                      accessibilityLocalizationBundlePath = [v91 accessibilityLocalizationBundlePath];
                      v32 = v89;
                      v89 = accessibilityLocalizationBundlePath;
                      v21 = MEMORY[0x29EDC9740](v32).n128_u64[0];
                      break;
                    case 4:
                      accessibilityLocalizedStringTableName = [v91 accessibilityLocalizedStringTableName];
                      v34 = v89;
                      v89 = accessibilityLocalizedStringTableName;
                      v21 = MEMORY[0x29EDC9740](v34).n128_u64[0];
                      break;
                  }
                }

                else
                {
                  _accessibilityAXAttributedLabel2 = [v91 _accessibilityAXAttributedLabel];
                  v23 = v89;
                  v89 = _accessibilityAXAttributedLabel2;
                  *&v24 = MEMORY[0x29EDC9740](v23).n128_u64[0];
                  v66 = v89;
                  whitespaceAndNewlineCharacterSet3 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
                  v25 = [v66 stringByTrimmingCharactersInSet:?];
                  v26 = v89;
                  v89 = v25;
                  MEMORY[0x29EDC9740](v26);
                  v21 = MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet3).n128_u64[0];
                }

                accessibilityLanguage3 = [v91 accessibilityLanguage];
                v36 = accessibilityLanguage;
                accessibilityLanguage = accessibilityLanguage3;
                *&v37 = MEMORY[0x29EDC9740](v36).n128_u64[0];
                if (accessibilityLanguage)
                {
                  v38 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v89, v37}];
                  v39 = v89;
                  v89 = v38;
                  *&v40 = MEMORY[0x29EDC9740](v39).n128_u64[0];
                  [v89 setAttribute:accessibilityLanguage forKey:{v107, v40}];
                }

                v65 = 0;
                if ([v89 isEqualToString:{_badgeText, v37}])
                {
                  v65 = [_badgeText length] != 0;
                }

                v88 = v65;
                if (!v65)
                {
                  v54 = v89;
                  v57 = @"__AXStringForVariablesSentinel";
                  v41 = __UIAXStringForVariables();
                  v42 = v109;
                  v109 = v41;
                  MEMORY[0x29EDC9740](v42);
                }

                objc_storeStrong(&v89, 0);
              }
            }

            ++v70;
            if (v68 + 1 >= v71)
            {
              v70 = 0;
              v71 = [obj countByEnumeratingWithState:__b objects:v118 count:16];
              if (!v71)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
        objc_storeStrong(&v92, 0);
        objc_storeStrong(&_badgeText, 0);
        objc_storeStrong(&_accessibilityInternalData, 0);
        objc_storeStrong(&options, 0);
        objc_storeStrong(&location, 0);
        objc_storeStrong(&accessibilityLanguage, 0);
        objc_storeStrong(&v104, 0);
        objc_storeStrong(&_accessibilityDetailTextLabelIfExists, 0);
        objc_storeStrong(&_accessibilityTextLabelIfExists, 0);
      }

      if (([v109 isAXAttributedString] & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v63 = v109;
          whitespaceAndNewlineCharacterSet4 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
          v43 = [v63 stringByTrimmingCharactersInSet:?];
          v44 = v109;
          v109 = v43;
          MEMORY[0x29EDC9740](v44);
          MEMORY[0x29EDC9740](whitespaceAndNewlineCharacterSet4);
        }
      }

      if (![v109 length])
      {
        _accessibilityRetrieveTableViewIvarsText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewIvarsText];
        v46 = v109;
        v109 = _accessibilityRetrieveTableViewIvarsText;
        MEMORY[0x29EDC9740](v46);
      }

      v87 = AXRequestingClient();
      if (v87 == 3 || v87 == 4)
      {
        v86 = 0;
        if (([(UITableViewCellAccessibility *)selfCopy safeBoolForKey:@"_hasEditingAccessoryView"]& 1) == 0 && !controlCopy)
        {
          v61 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"editingStyle"];
          intValue = [v61 intValue];
          MEMORY[0x29EDC9740](v61);
          v85[1] = intValue;
          if (intValue == 1)
          {
            v59 = accessibilityUIKitLocalizedString();
            v56 = v109;
            v49 = AXCFormattedString();
            v50 = v86;
            v86 = v49;
            MEMORY[0x29EDC9740](v50);
            MEMORY[0x29EDC9740](v59);
          }

          else if (intValue == 2)
          {
            v60 = accessibilityUIKitLocalizedString();
            v56 = v109;
            v47 = AXCFormattedString();
            v48 = v86;
            v86 = v47;
            MEMORY[0x29EDC9740](v48);
            MEMORY[0x29EDC9740](v60);
          }
        }

        if ([v109 length] && (objc_msgSend(v109, "isAXAttributedString") & 1) != 0 && v86)
        {
          v85[0] = MEMORY[0x29EDC9748](v109);
          v84 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:v86];
          *&v83 = [v84 rangeOfString:v109];
          *(&v83 + 1) = v51;
          if (v51 == [v109 length])
          {
            v58 = v85[0];
            v81 = MEMORY[0x29EDC9748](v84);
            v82 = v83;
            [v58 enumerateAttributesUsingBlock:?];
            objc_storeStrong(&v81, 0);
          }

          objc_storeStrong(&v109, v84);
          objc_storeStrong(&v84, 0);
          objc_storeStrong(v85, 0);
        }

        else if (v86)
        {
          objc_storeStrong(&v109, v86);
        }

        objc_storeStrong(&v86, 0);
      }

      v117 = MEMORY[0x29EDC9748](v109);
      v110 = 1;
      objc_storeStrong(&v107, 0);
      objc_storeStrong(&v109, 0);
    }

    objc_storeStrong(&accessibilityUserDefinedLabel, 0);
  }

  v52 = v117;

  return v52;
}

void __137__UITableViewCellAccessibility__accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v19 = a3;
  *(&v19 + 1) = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a5;
  v16 = a1;
  v7 = location[0];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __137__UITableViewCellAccessibility__accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl___block_invoke_2;
  v12 = &unk_29F30DD28;
  v13 = MEMORY[0x29EDC9748](*(a1 + 32));
  v14 = *(a1 + 40);
  v15 = v19;
  [v7 enumerateKeysAndObjectsUsingBlock:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __137__UITableViewCellAccessibility__accessibilityRetrieveTableViewCellTextWithLocalizationOptions_shouldExcludeDetailText_forReorderControl___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v3 = a1[4];
  v4 = a1[8];
  v9 = a1[5] + a1[7];
  location[2] = v4;
  v10 = v9;
  v11 = v4;
  [v3 setAttribute:v7 forKey:location[0] withRange:{v9, v4}];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)didTransitionToState:(unint64_t)state
{
  selfCopy = self;
  v5 = a2;
  stateCopy = state;
  v3.receiver = self;
  v3.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v3 didTransitionToState:state];
  if (stateCopy & 2) != 0 || (stateCopy)
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  v9 = a2;
  editingCopy = editing;
  animatedCopy = animated;
  showingDeleteConfirmation = [(UITableViewCellAccessibility *)self showingDeleteConfirmation];
  v5.receiver = selfCopy;
  v5.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v5 setEditing:editingCopy animated:animatedCopy];
  showingDeleteConfirmation2 = [(UITableViewCellAccessibility *)selfCopy showingDeleteConfirmation];
  if ((showingDeleteConfirmation & 1) != (showingDeleteConfirmation2 & 1))
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_setSwipeContainerView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v4.receiver = selfCopy;
  v4.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v4 _setSwipeContainerView:location[0]];
  if (location[0])
  {
    v3 = MEMORY[0x29EDC9748](location[0]);
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

void __55__UITableViewCellAccessibility__setSwipeContainerView___block_invoke(id *a1)
{
  argument[2] = a1;
  argument[1] = a1;
  argument[0] = 0;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v1 = [a1[4] _accessibilityFindSubviewDescendant:&__block_literal_global_748];
    v2 = argument[0];
    argument[0] = v1;
    MEMORY[0x29EDC9740](v2);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument[0]);
  objc_storeStrong(argument, 0);
}

uint64_t __55__UITableViewCellAccessibility__setSwipeContainerView___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] _accessibilityViewIsVisible];
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)_setShowingDeleteConfirmation:(BOOL)confirmation
{
  selfCopy = self;
  v9 = a2;
  confirmationCopy = confirmation;
  showingDeleteConfirmation = [(UITableViewCellAccessibility *)self showingDeleteConfirmation];
  v6.receiver = selfCopy;
  v6.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v6 _setShowingDeleteConfirmation:confirmationCopy];
  if ((showingDeleteConfirmation & 1) != confirmationCopy)
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
    argument = 0;
    if (UIAccessibilityIsVoiceOverRunning())
    {
      _accessibilityFindRemoveConfirmSubview = [(UITableViewCellAccessibility *)selfCopy _accessibilityFindRemoveConfirmSubview];
      v4 = argument;
      argument = _accessibilityFindRemoveConfirmSubview;
      MEMORY[0x29EDC9740](v4);
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
  }
}

- (void)setShowingDeleteConfirmation:(BOOL)confirmation
{
  selfCopy = self;
  v9 = a2;
  confirmationCopy = confirmation;
  showingDeleteConfirmation = [(UITableViewCellAccessibility *)self showingDeleteConfirmation];
  v6.receiver = selfCopy;
  v6.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v6 setShowingDeleteConfirmation:confirmationCopy];
  if ((showingDeleteConfirmation & 1) != confirmationCopy)
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
    argument = 0;
    if (UIAccessibilityIsVoiceOverRunning())
    {
      _accessibilityFindRemoveConfirmSubview = [(UITableViewCellAccessibility *)selfCopy _accessibilityFindRemoveConfirmSubview];
      v4 = argument;
      argument = _accessibilityFindRemoveConfirmSubview;
      MEMORY[0x29EDC9740](v4);
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
    objc_storeStrong(&argument, 0);
  }
}

- (uint64_t)_axSubviewIgnoredDueToHiddenOrZeroAlphaAncestry:(uint64_t)ancestry
{
  ancestryCopy = ancestry;
  location = 0;
  objc_storeStrong(&location, a2);
  if (ancestryCopy)
  {
    v5 = UIAccessibilityViewHasHiddenOrZeroAlphaAncestor() & 1;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&location, 0);
  return v5 & 1;
}

- (id)_accessibilityChildren
{
  v222 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v217 = a2;
  IsFetching = [(UITableViewCellAccessibility *)self accessibilityIsFetchingChildren];
  [(UITableViewCellAccessibility *)selfCopy accessibilitySetIsFetchingChildren:?];
  if (!_accessibilityChildren_DeleteSwitchClass)
  {
    _accessibilityChildren_DeleteSwitchClass = NSClassFromString(&cfstr_Uitableviewcel_0.isa);
  }

  _accessibilityInternalData = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
  accessibilityContainer = [(UITableViewCellAccessibility *)selfCopy accessibilityContainer];
  WeakRetained = objc_loadWeakRetained(_accessibilityInternalData + 8);
  LOBYTE(v110) = 0;
  if (!WeakRetained)
  {
    objc_opt_class();
    LOBYTE(v110) = 0;
    if (objc_opt_isKindOfClass())
    {
      v110 = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewIsOpaque]^ 1;
    }
  }

  MEMORY[0x29EDC9740](WeakRetained);
  if (v110)
  {
    [(UITableViewAccessibility *)accessibilityContainer accessibilityFindMockParentForTableViewCell:selfCopy];
    v2 = [(UITableViewCellAccessibility *)selfCopy _accessibilityValueForKey:@"AXInternalData"];
    v3 = _accessibilityInternalData;
    _accessibilityInternalData = v2;
    v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    v212 = 0;
    v108 = 1;
    if (_accessibilityInternalData)
    {
      v213 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v212 = 1;
      v108 = v213 == 0;
    }

    if (v212)
    {
      v4 = MEMORY[0x29EDC9740](v213).n128_u64[0];
    }

    if (v108)
    {
      location = AXLogAppAccessibility();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        log = location;
        v107 = type;
        __os_log_helper_16_0_0(v209);
        _os_log_error_impl(&dword_29C4D6000, log, v107, "Could not find my mock parent, most likely I am stale.", v209, 2u);
      }

      objc_storeStrong(&location, 0);
      [(UITableViewCellAccessibility *)selfCopy accessibilitySetIsFetchingChildren:?];
      [(UITableViewCellAccessibility *)selfCopy _axSetShouldForceRefreshChildren:0];
      _accessibilityContainerElements = 0;
      v208 = 1;
      goto LABEL_236;
    }
  }

  else
  {
    v105 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v4 = MEMORY[0x29EDC9740](v105).n128_u64[0];
    if (!v105)
    {
      objc_storeWeak(_accessibilityInternalData + 8, selfCopy);
    }
  }

  isHiddenOrHasHiddenAncestor = [(UITableViewCellAccessibility *)selfCopy isHiddenOrHasHiddenAncestor];
  if ([(UITableViewCellAccessibility *)selfCopy _accessibilityUsesOverrideContainerProtocol])
  {
    [(UITableViewCellAccessibility *)selfCopy accessibilitySetIsFetchingChildren:?];
    [(UITableViewCellAccessibility *)selfCopy _axSetShouldForceRefreshChildren:0];
    _accessibilityContainerElements = [(UITableViewCellAccessibility *)selfCopy _accessibilityContainerElements];
    v208 = 1;
    goto LABEL_236;
  }

  v206 = 0;
  if ([0 count] && *(_accessibilityInternalData + 1) != v206)
  {
    v6 = [v206 mutableCopyWithZone:0];
    v7 = *(_accessibilityInternalData + 1);
    *(_accessibilityInternalData + 1) = v6;
    *&v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    *(_accessibilityInternalData + 16) = isHiddenOrHasHiddenAncestor & 1;
  }

  if ([*(_accessibilityInternalData + 1) count])
  {
    v205 = 0;
    if ([(UITableViewCellAccessibility *)selfCopy _axShouldForceRefreshChildren])
    {
      v205 = 1;
    }

    else
    {
      _accessibilityIsRemoveControlVisible = [(UITableViewCellAccessibility *)selfCopy _accessibilityIsRemoveControlVisible];
      if (((_accessibilityIsRemoveControlVisible & 1) == 0 || *(_accessibilityInternalData + 3)) && ((_accessibilityIsRemoveControlVisible & 1) != 0 || !*(_accessibilityInternalData + 3)))
      {
        if ((isHiddenOrHasHiddenAncestor & 1) != (*(_accessibilityInternalData + 16) & 1))
        {
          v205 = 1;
        }
      }

      else
      {
        v205 = 1;
      }
    }

    if ((v205 & 1) == 0)
    {
      [(UITableViewCellAccessibility *)selfCopy accessibilitySetIsFetchingChildren:?];
      [(UITableViewCellAccessibility *)selfCopy _axSetShouldForceRefreshChildren:0];
      _accessibilityContainerElements = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 1));
      v208 = 1;
      goto LABEL_235;
    }

    v203 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v202 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 4));
    [(UITableViewCellAccessibility *)selfCopy _accessibilityClearChildren];
    _accessibilityInternalData2 = [(UITableViewCellAccessibility *)selfCopy _accessibilityInternalData];
    v9 = _accessibilityInternalData;
    _accessibilityInternalData = _accessibilityInternalData2;
    [_accessibilityInternalData2[1] axSafelyAddObject:{v202, MEMORY[0x29EDC9740](v9).n128_f64[0]}];
    objc_storeStrong(_accessibilityInternalData + 4, v202);
    [(UITableTextAccessibilityElement *)*(_accessibilityInternalData + 4) setTextDelegate:v203];
    [(UITableTextAccessibilityElement *)*(_accessibilityInternalData + 4) setAttributeDelegate:v203];
    [v203 registerMockChild:*(_accessibilityInternalData + 4)];
    [*(_accessibilityInternalData + 4) setAccessibilityContainer:v203];
    objc_storeWeak(_accessibilityInternalData + 8, v203);
    objc_storeStrong(&v202, 0);
    objc_storeStrong(&v203, 0);
  }

  *(_accessibilityInternalData + 16) = isHiddenOrHasHiddenAncestor & 1;
  v201 = objc_loadWeakRetained(_accessibilityInternalData + 8);
  [v201 accessibilityFrame];
  *&v199 = v10;
  *(&v199 + 1) = v11;
  *&v200 = v12;
  *(&v200 + 1) = v13;
  _accessibilityAXAttributedHint = [(UITableViewCellAccessibility *)selfCopy _accessibilityAXAttributedHint];
  _accessibilityRetrieveTableViewCellText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText];
  _accessibilityIgnoreInternalLabels = [(UITableViewCellAccessibility *)selfCopy _accessibilityIgnoreInternalLabels];
  v195 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 4));
  if (v195 || !v201)
  {
    [v195 setAccessibilityLabel:0];
  }

  else
  {
    v14 = [objc_allocWithZone(UITableTextAccessibilityElement) initWithAccessibilityContainer:v201];
    v15 = v195;
    v195 = v14;
    *&v16 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  }

  [v201 registerMockChild:{v195, v16}];
  v194 = 0;
  v104 = objc_loadWeakRetained(_accessibilityInternalData + 8);
  v191 = 0;
  if (v104)
  {
    v192 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v191 = 1;
    v17 = MEMORY[0x29EDC9748](v192);
  }

  else
  {
    v17 = MEMORY[0x29EDC9748](selfCopy);
  }

  v193 = v17;
  if (v191)
  {
    MEMORY[0x29EDC9740](v192);
  }

  if ([_accessibilityRetrieveTableViewCellText length])
  {
    [v195 setAccessibilityLabel:_accessibilityRetrieveTableViewCellText];
    [(UITableTextAccessibilityElement *)v195 setTextDelegate:v193];
    accessibilityValue = [(UITableViewCellAccessibility *)selfCopy accessibilityValue];
    [v195 setAccessibilityValue:?];
    [v195 setAccessibilityTraits:{-[UITableViewCellAccessibility accessibilityTraits](selfCopy, "accessibilityTraits", MEMORY[0x29EDC9740](accessibilityValue).n128_f64[0])}];
    [(UITableTextAccessibilityElement *)v195 setAttributeDelegate:v193];
    v194 = 1;
  }

  else
  {
    [(UITableTextAccessibilityElement *)v195 setTextDelegate:v193];
    [(UITableTextAccessibilityElement *)v195 setAttributeDelegate:v193];
  }

  v190 = [*(_accessibilityInternalData + 7) copyWithZone:0];
  [*(_accessibilityInternalData + 7) removeAllObjects];
  _accessibilitySubviewsForAdding = [(UITableViewCellAccessibility *)selfCopy _accessibilitySubviewsForAdding];
  v188 = [*(_accessibilityInternalData + 1) count];
  v187 = 0;
  v186 = 0;
  v185 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_accessoryView"];
  if (v185)
  {
    [_accessibilitySubviewsForAdding addObject:v185];
  }

  v184 = 0;
  v183 = _UIAccessibilityClientServedInternalControls();
  v182 = 0;
  v181 = 0;
  while (1)
  {
    v102 = v182;
    if (v102 >= [_accessibilitySubviewsForAdding count])
    {
      break;
    }

    v180 = [_accessibilitySubviewsForAdding objectAtIndex:v182];
    if ([v180 accessibilityElementsHidden])
    {
      v208 = 4;
      goto LABEL_163;
    }

    if ((objc_opt_isKindOfClass() & 1) != 0 && !v183)
    {
      v208 = 4;
      goto LABEL_163;
    }

    v178 = 0;
    v176 = 0;
    v101 = 0;
    if (!v183)
    {
      v100 = 1;
      if (v180 != v185)
      {
        accessibilityIdentification = [v180 accessibilityIdentification];
        v178 = 1;
        v100 = 1;
        if (([accessibilityIdentification isEqualToString:@"UITableViewCellAccessoryDetailButton"] & 1) == 0)
        {
          accessibilityIdentification2 = [v180 accessibilityIdentification];
          v176 = 1;
          v100 = [accessibilityIdentification2 isEqualToString:@"UITableCellViewDisclosure"];
        }
      }

      v101 = v100;
    }

    if (v176)
    {
      MEMORY[0x29EDC9740](accessibilityIdentification2);
    }

    if (v178)
    {
      MEMORY[0x29EDC9740](accessibilityIdentification);
    }

    if (v101)
    {
      v208 = 4;
      goto LABEL_163;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [(UITableViewCellAccessibility *)selfCopy _accessibilityLabelShouldBeDistinct:v180])
    {
      v99 = v180;
      _accessibilityTableViewSwitch = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewSwitch];
      v20 = MEMORY[0x29EDC9740](_accessibilityTableViewSwitch).n128_u64[0];
      if (v99 == _accessibilityTableViewSwitch)
      {
        v175 = 0;
        objc_opt_class();
        v174 = __UIAccessibilityCastAsSafeCategory();
        if (v175)
        {
          abort();
        }

        v173 = MEMORY[0x29EDC9748](v174);
        objc_storeStrong(&v174, 0);
        v97 = v173;
        [v173 _accessibilitySetIsAccessibleViaTableViewCell:1];
        v20 = MEMORY[0x29EDC9740](v97).n128_u64[0];
      }

      v96 = 0;
      if ([v180 isAccessibilityElement])
      {
        [v180 alpha];
        v96 = v21 > 0.0;
      }

      v172 = v96;
      v170 = 0;
      v168 = 0;
      v95 = 0;
      if (v96)
      {
        v94 = v180;
        _accessibilityFindRemoveConfirmSubview = [(UITableViewCellAccessibility *)selfCopy _accessibilityFindRemoveConfirmSubview];
        v170 = 1;
        v95 = 0;
        if (v94 != _accessibilityFindRemoveConfirmSubview)
        {
          v93 = v180;
          _accessibilityCellEditingControl = [(UITableViewCellAccessibility *)selfCopy _accessibilityCellEditingControl];
          v168 = 1;
          v95 = v93 != _accessibilityCellEditingControl;
        }
      }

      v172 = v95;
      if (v168)
      {
        MEMORY[0x29EDC9740](_accessibilityCellEditingControl);
      }

      if (v170)
      {
        MEMORY[0x29EDC9740](_accessibilityFindRemoveConfirmSubview);
      }

      if (v172)
      {
        v92 = [(UITableViewCellAccessibility *)selfCopy _axSubviewIgnoredDueToHiddenOrZeroAlphaAncestry:v180];
      }

      else
      {
        v92 = 1;
      }

      v167 = v92 != 0;
      if (!v172 || v167)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v208 = 4;
          goto LABEL_163;
        }

        superview = [v180 superview];
        v158 = 0;
        while (1)
        {
          v75 = 0;
          if (superview)
          {
            v75 = superview != selfCopy;
          }

          if (!v75)
          {
            break;
          }

          if ([superview accessibilityElementsHidden])
          {
            v158 = 1;
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v158 = 1;
            break;
          }

          v159Superview = [superview superview];
          v30 = superview;
          superview = v159Superview;
          MEMORY[0x29EDC9740](v30);
        }

        if (v158)
        {
          v208 = 4;
        }

        else
        {
          if (([v180 isAccessibilityElement] & 1) == 0 && (objc_msgSend(v180, "accessibilityElementsHidden") & 1) == 0)
          {
            accessibilityElementCount = [v180 accessibilityElementCount];
            if (accessibilityElementCount == 0x7FFFFFFFFFFFFFFFLL || accessibilityElementCount <= 0)
            {
              subviews = [v180 subviews];
              v32 = [(UITableViewCellAccessibility *)selfCopy _accessibilityGeometrySortedElements:subviews];
              v33 = subviews;
              subviews = v32;
              MEMORY[0x29EDC9740](v33);
              memset(v150, 0, sizeof(v150));
              v71 = MEMORY[0x29EDC9748](subviews);
              v72 = [v71 countByEnumeratingWithState:v150 objects:v220 count:16];
              if (v72)
              {
                v68 = *v150[2];
                v69 = 0;
                v70 = v72;
                while (1)
                {
                  v67 = v69;
                  if (*v150[2] != v68)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v151 = *(v150[1] + 8 * v69);
                  if ([_accessibilitySubviewsForAdding indexOfObjectIdenticalTo:v151] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    [_accessibilitySubviewsForAdding addObject:v151];
                  }

                  ++v69;
                  if (v67 + 1 >= v70)
                  {
                    v69 = 0;
                    v70 = [v71 countByEnumeratingWithState:v150 objects:v220 count:16];
                    if (!v70)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x29EDC9740](v71);
              objc_storeStrong(&subviews, 0);
            }

            else
            {
              if ([(UITableViewCellAccessibility *)selfCopy _accessibilityAvoidsMockViewContainers])
              {
                [v180 setAccessibilityContainer:selfCopy];
                [v180 _setAccessibilityShouldUseViewHierarchyForFindingScrollParent:1];
                [*(_accessibilityInternalData + 1) addObject:v180];
              }

              else
              {
                v74 = objc_loadWeakRetained(_accessibilityInternalData + 8);
                v154 = 0;
                if (v74)
                {
                  v155 = objc_loadWeakRetained(_accessibilityInternalData + 8);
                  v154 = 1;
                  v31 = MEMORY[0x29EDC9748](v155);
                }

                else
                {
                  v31 = MEMORY[0x29EDC9748](selfCopy);
                }

                v156 = v31;
                if (v154)
                {
                  MEMORY[0x29EDC9740](v155);
                }

                MEMORY[0x29EDC9740](v74);
                v153 = [objc_allocWithZone(UIAccessibilityElementMockView) initWithAccessibilityContainer:v156];
                [v153 setIsAccessibilityElement:0];
                [(UIAccessibilityElementMockView *)v153 setView:v180];
                [*(_accessibilityInternalData + 1) addObject:v153];
                v73 = objc_loadWeakRetained(_accessibilityInternalData + 8);
                [v73 registerMockChild:v153];
                [*(_accessibilityInternalData + 7) addObject:{v153, MEMORY[0x29EDC9740](v73).n128_f64[0]}];
                objc_storeStrong(&v153, 0);
                objc_storeStrong(&v156, 0);
              }

              v186 = 1;
            }
          }

          v208 = 0;
        }

        objc_storeStrong(&superview, 0);
        if (!v208)
        {
LABEL_162:
          v208 = 0;
        }
      }

      else
      {
        v166 = 0;
        memset(__b, 0, sizeof(__b));
        v90 = MEMORY[0x29EDC9748](v190);
        v91 = [v90 countByEnumeratingWithState:__b objects:v221 count:16];
        if (v91)
        {
          v87 = *__b[2];
          v88 = 0;
          v89 = v91;
          while (1)
          {
            v86 = v88;
            if (*__b[2] != v87)
            {
              objc_enumerationMutation(v90);
            }

            v165 = *(__b[1] + 8 * v88);
            view = [(UIAccessibilityElementMockView *)v165 view];
            objc_opt_class();
            v85 = 0;
            if (objc_opt_isKindOfClass())
            {
              v85 = [(UIAccessibilityElementMockView *)v165 subviewIndex]== v182;
            }

            *&v22 = MEMORY[0x29EDC9740](view).n128_u64[0];
            if (v85)
            {
              break;
            }

            ++v88;
            if (v86 + 1 >= v89)
            {
              v88 = 0;
              v89 = [v90 countByEnumeratingWithState:__b objects:v221 count:{16, v22}];
              if (!v89)
              {
                goto LABEL_104;
              }
            }
          }

          objc_storeStrong(&v166, v165);
          v208 = 5;
        }

        else
        {
LABEL_104:
          v208 = 0;
        }

        accessibilityIdentification3 = [v166 accessibilityIdentification];
        v83 = [accessibilityIdentification3 isEqualToString:@"UITableCellViewDisclosure"];
        *&v23 = MEMORY[0x29EDC9740](accessibilityIdentification3).n128_u64[0];
        if (v83)
        {
          objc_storeStrong(&v184, v180);
          v208 = 4;
        }

        else
        {
          _accessibilityAvoidsMockViewContainers = 1;
          if (![(UITableViewCellAccessibility *)selfCopy _accessibilityAvoidsMockViewContainers])
          {
            _accessibilityAvoidsMockViewContainers = [v180 _accessibilityAvoidsMockViewContainers];
          }

          v163 = _accessibilityAvoidsMockViewContainers & 1;
          if (_accessibilityAvoidsMockViewContainers)
          {
            [v180 _setAccessibilityShouldUseViewHierarchyForFindingScrollParent:1];
            v78 = v180;
            v79 = objc_loadWeakRetained(_accessibilityInternalData + 8);
            [v78 setAccessibilityContainer:?];
            MEMORY[0x29EDC9740](v79);
            v80 = objc_loadWeakRetained(_accessibilityInternalData + 8);
            [v80 registerMockChild:v180];
            [*(_accessibilityInternalData + 1) addObject:{v180, MEMORY[0x29EDC9740](v80).n128_f64[0]}];
          }

          else
          {
            v77 = objc_loadWeakRetained(_accessibilityInternalData + 8);
            v160 = 0;
            if (v77)
            {
              v161 = objc_loadWeakRetained(_accessibilityInternalData + 8);
              v160 = 1;
              v24 = MEMORY[0x29EDC9748](v161);
            }

            else
            {
              v24 = MEMORY[0x29EDC9748](selfCopy);
            }

            v162 = v24;
            if (v160)
            {
              MEMORY[0x29EDC9740](v161);
            }

            *&v25 = MEMORY[0x29EDC9740](v77).n128_u64[0];
            if (v166)
            {
              [v166 setAccessibilityContainer:{v162, v25}];
            }

            else
            {
              v26 = [objc_allocWithZone(UIAccessibilityElementMockView) initWithAccessibilityContainer:v162];
              v27 = v166;
              v166 = v26;
              *&v28 = MEMORY[0x29EDC9740](v27).n128_u64[0];
            }

            if (([*(_accessibilityInternalData + 1) containsObject:{v166, v28}] & 1) == 0)
            {
              v76 = objc_loadWeakRetained(_accessibilityInternalData + 8);
              [v76 registerMockChild:v166];
              [*(_accessibilityInternalData + 1) addObject:{v166, MEMORY[0x29EDC9740](v76).n128_f64[0]}];
            }

            [(UIAccessibilityElementMockView *)v166 setSubviewIndex:v182];
            [(UIAccessibilityElementMockView *)v166 setView:v180];
            [*(_accessibilityInternalData + 7) addObject:v166];
            objc_storeStrong(&v162, 0);
          }

          ++v181;
          v186 = 1;
          v208 = 0;
        }

        objc_storeStrong(&v166, 0);
        if (!v208)
        {
          goto LABEL_162;
        }
      }
    }

    else
    {
      if (!*(_accessibilityInternalData + 10))
      {
        v18 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        v19 = *(_accessibilityInternalData + 10);
        *(_accessibilityInternalData + 10) = v18;
        MEMORY[0x29EDC9740](v19);
      }

      if (([v180 isAccessibilityElement] & 1) != 0 && (objc_msgSend(*(_accessibilityInternalData + 10), "containsObject:", v180) & 1) == 0)
      {
        [*(_accessibilityInternalData + 10) addObject:v180];
      }

      v208 = 4;
    }

LABEL_163:
    objc_storeStrong(&v180, 0);
    ++v182;
  }

  if ((v194 & 1) == 0 && (v187 & 1) == 0)
  {
    _accessibilityRetrieveTableViewIvarsText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewIvarsText];
    if ([_accessibilityRetrieveTableViewIvarsText length])
    {
      [v195 setAccessibilityLabel:_accessibilityRetrieveTableViewIvarsText];
      v194 = 1;
    }

    v147 = 0;
    v145 = 0;
    _accessibilityTableViewCellSubclassShouldExist = 0;
    if ((v194 & 1) == 0)
    {
      _accessibilityTableViewCellSubclassShouldExist = 0;
      if ((v186 & 1) == 0)
      {
        v34 = objc_opt_class();
        v148 = NSStringFromClass(v34);
        v147 = 1;
        v35 = objc_opt_class();
        v146 = NSStringFromClass(v35);
        v145 = 1;
        _accessibilityTableViewCellSubclassShouldExist = 0;
        if (![(NSString *)v148 isEqualToString:?])
        {
          _accessibilityTableViewCellSubclassShouldExist = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewCellSubclassShouldExist];
        }
      }
    }

    if (v145)
    {
      MEMORY[0x29EDC9740](v146);
    }

    if (v147)
    {
      MEMORY[0x29EDC9740](v148);
    }

    if (_accessibilityTableViewCellSubclassShouldExist)
    {
      [v195 setAccessibilityLabel:@" "];
      v194 = 1;
    }

    objc_storeStrong(&_accessibilityRetrieveTableViewIvarsText, 0);
  }

  window = [(UITableViewCellAccessibility *)selfCopy window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];
  MEMORY[0x29EDC9740](windowScene);
  *&v36 = MEMORY[0x29EDC9740](window).n128_u64[0];
  v144 = interfaceOrientation;
  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsTouchContainer]& 1) != 0)
  {
    _accessibilityIgnoreInternalLabels = 1;
  }

  if ((v194 & 1) != 0 || (v187) && (_accessibilityIgnoreInternalLabels & 1) == 0)
  {
    v142 = v199;
    v143 = v200;
    v140 = v199;
    v141 = v200;
    v138 = v199;
    v139 = v200;
    [v195 setAccessibilityFrame:{v199, v200}];
    if (([*(_accessibilityInternalData + 1) containsObject:v195] & 1) == 0)
    {
      if ([*(_accessibilityInternalData + 1) count] == v188 || (v62 = v188, v62 > objc_msgSend(*(_accessibilityInternalData + 1), "count")))
      {
        [*(_accessibilityInternalData + 1) addObject:v195];
      }

      else
      {
        [*(_accessibilityInternalData + 1) insertObject:v195 atIndex:v188];
      }
    }

    objc_storeStrong(_accessibilityInternalData + 4, v195);
    [v195 setAccessibilityHint:_accessibilityAXAttributedHint];
  }

  v137 = 0.0;
  [(UITableViewCellAccessibility *)selfCopy _accessibilityHandleRemoveSwitch];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityHandleRemoveConfirm];
  if (!v184)
  {
    accessoryType = [(UITableViewCellAccessibility *)selfCopy accessoryType];
    if (accessoryType == 2 || accessoryType == 4)
    {
      v134 = 0;
      v132 = 0;
      if (([(UITableViewCellAccessibility *)selfCopy isEditing]& 1) != 0)
      {
        v37 = [(UITableViewCellAccessibility *)selfCopy safeUIViewForKey:@"_editingAccessoryView"];
        v135 = v37;
        v134 = 1;
      }

      else
      {
        v37 = [(UITableViewCellAccessibility *)selfCopy safeUIViewForKey:@"_accessoryView"];
        v133 = v37;
        v132 = 1;
      }

      objc_storeStrong(&v184, v37);
      if (v132)
      {
        MEMORY[0x29EDC9740](v133);
      }

      if (v134)
      {
        MEMORY[0x29EDC9740](v135);
      }
    }

    v130 = 0;
    v61 = 1;
    if ([v184 isAccessibilityElement])
    {
      superview2 = [v184 superview];
      v130 = 1;
      v61 = superview2 == 0;
    }

    if (v130)
    {
      MEMORY[0x29EDC9740](superview2);
    }

    if (v61)
    {
      objc_storeStrong(&v184, 0);
    }
  }

  if (v184)
  {
    v129 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 6));
    if (!v129)
    {
      v60 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v126 = 0;
      if (v60)
      {
        v127 = objc_loadWeakRetained(_accessibilityInternalData + 8);
        v126 = 1;
        v38 = MEMORY[0x29EDC9748](v127);
      }

      else
      {
        v38 = MEMORY[0x29EDC9748](selfCopy);
      }

      v128 = v38;
      if (v126)
      {
        MEMORY[0x29EDC9740](v127);
      }

      MEMORY[0x29EDC9740](v60);
      v39 = [objc_allocWithZone(UIAccessibilityElementMockView) initWithAccessibilityContainer:v128];
      v40 = v129;
      v129 = v39;
      MEMORY[0x29EDC9740](v40);
      objc_storeStrong(&v128, 0);
    }

    [(UIAccessibilityElementMockView *)v129 setView:v184];
    [*(_accessibilityInternalData + 1) addObject:v129];
    objc_storeStrong(_accessibilityInternalData + 6, v129);
    v59 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    [v59 registerMockChild:v129];
    MEMORY[0x29EDC9740](v59);
    if (UIInterfaceOrientationIsLandscape_0(v144))
    {
      [v129 accessibilityFrame];
      v122 = v41;
      v123 = v42;
      v124 = v43;
      v125 = v44;
      v137 = v137 + v44;
    }

    else
    {
      [v129 accessibilityFrame];
      v118 = v45;
      v119 = v46;
      v120 = v47;
      v121 = v48;
      v137 = v137 + v47;
    }

    objc_storeStrong(&v129, 0);
  }

  if (v137 > 0.0 && *(_accessibilityInternalData + 4))
  {
    v116 = 0u;
    v117 = 0u;
    [*(_accessibilityInternalData + 4) accessibilityFrame];
    *&v116 = v49;
    *(&v116 + 1) = v50;
    *&v117 = v51;
    *(&v117 + 1) = v52;
    if (UIInterfaceOrientationIsLandscape_0(v144))
    {
      *(&v117 + 1) = *(&v117 + 1) - v137;
    }

    else
    {
      *&v117 = *&v117 - v137;
    }

    [*(_accessibilityInternalData + 4) setAccessibilityFrame:{v116, v117}];
  }

  v115 = MEMORY[0x29EDC9748](*(_accessibilityInternalData + 1));
  v113 = 0;
  v111 = 0;
  v58 = 1;
  if (![(UITableViewCellAccessibility *)selfCopy _accessibilityShouldSortTableViewCellChildren])
  {
    v114 = objc_loadWeakRetained(_accessibilityInternalData + 8);
    v113 = 1;
    objc_opt_class();
    usingRealTableViewCell = 0;
    if (objc_opt_isKindOfClass())
    {
      v112 = objc_loadWeakRetained(_accessibilityInternalData + 8);
      v111 = 1;
      usingRealTableViewCell = [(UITableViewCellAccessibilityElement *)v112 usingRealTableViewCell];
    }

    v58 = usingRealTableViewCell;
  }

  if (v111)
  {
    MEMORY[0x29EDC9740](v112);
  }

  if (v113)
  {
    MEMORY[0x29EDC9740](v114);
  }

  if (v58)
  {
    v53 = [v115 mutableCopy];
    v54 = v115;
    v115 = v53;
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySortElementsUsingGeometry:v53, MEMORY[0x29EDC9740](v54).n128_f64[0]];
    objc_storeStrong(_accessibilityInternalData + 1, v115);
  }

  [(UITableViewCellAccessibility *)selfCopy accessibilitySetIsFetchingChildren:?];
  [(UITableViewCellAccessibility *)selfCopy _axSetShouldForceRefreshChildren:0];
  _accessibilityContainerElements = MEMORY[0x29EDC9748](v115);
  v208 = 1;
  objc_storeStrong(&v115, 0);
  objc_storeStrong(&v184, 0);
  objc_storeStrong(&v185, 0);
  objc_storeStrong(&_accessibilitySubviewsForAdding, 0);
  objc_storeStrong(&v190, 0);
  objc_storeStrong(&v193, 0);
  objc_storeStrong(&v195, 0);
  objc_storeStrong(&_accessibilityRetrieveTableViewCellText, 0);
  objc_storeStrong(&_accessibilityAXAttributedHint, 0);
  objc_storeStrong(&v201, 0);
LABEL_235:
  objc_storeStrong(&v206, 0);
LABEL_236:
  objc_storeStrong(&accessibilityContainer, 0);
  objc_storeStrong(&_accessibilityInternalData, 0);
  v55 = _accessibilityContainerElements;

  return v55;
}

- (uint64_t)accessibilityIsFetchingChildren
{
  if (self)
  {
    v2 = *(self + 8) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)accessibilitySetIsFetchingChildren:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2 & 1;
  }

  return result;
}

- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v37 = 0;
  objc_storeStrong(&v37, toElement);
  [location[0] accessibilityFrame];
  *&v35 = v4;
  *(&v35 + 1) = v5;
  *&v36 = v6;
  *(&v36 + 1) = v7;
  [v37 accessibilityFrame];
  *&v33 = v8;
  *(&v33 + 1) = v9;
  *&v34 = v10;
  *(&v34 + 1) = v11;
  if (([MEMORY[0x29EDC7DD0] _transformLayerRotationsAreEnabled] & 1) == 0)
  {
    window = [(UITableViewCellAccessibility *)selfCopy window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];
    MEMORY[0x29EDC9740](windowScene);
    MEMORY[0x29EDC9740](window);
    v32 = interfaceOrientation;
    UIAccessibilityConvertRectToPortraitCoordinates();
    *&v30 = v12;
    *(&v30 + 1) = v13;
    *&v31 = v14;
    *(&v31 + 1) = v15;
    v35 = v30;
    v36 = v31;
    UIAccessibilityConvertRectToPortraitCoordinates();
    *&v28 = v16;
    *(&v28 + 1) = v17;
    *&v29 = v18;
    *(&v29 + 1) = v19;
    v33 = v28;
    v34 = v29;
  }

  v41 = *&v35 - *&v33;
  if (fabs(*&v35 - *&v33) >= 2.0)
  {
    v26.receiver = selfCopy;
    v26.super_class = UITableViewCellAccessibility;
    v40 = [(UITableViewCellAccessibility *)&v26 _accessibilityCompareElement:location[0] toElement:v37];
    v27 = 1;
  }

  else
  {
    v20 = 1;
    if (*(&v35 + 1) < *(&v33 + 1))
    {
      v20 = -1;
    }

    v40 = v20;
    v27 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  return v40;
}

- (double)_accessibilityAllowedGeometryOverlap
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC74E0]];
  if (location[0])
  {
    [location[0] doubleValue];
    v7 = v2;
  }

  else
  {
    [(UITableViewCellAccessibility *)selfCopy bounds];
    v7 = v3;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (void)editControlWasClicked:(id)clicked
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, clicked);
  v3 = AXRetainAutorelease();
  v4.receiver = selfCopy;
  v4.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v4 editControlWasClicked:location[0]];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityUpdateRemoveControl];
  objc_storeStrong(location, 0);
}

- (void)deleteConfirmationControlWasClicked:(id)clicked
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, clicked);
  v3 = AXRetainAutorelease();
  v4.receiver = selfCopy;
  v4.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v4 deleteConfirmationControlWasClicked:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

- (void)deleteConfirmationControlWasCancelled:(id)cancelled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancelled);
  v3 = AXRetainAutorelease();
  v4.receiver = selfCopy;
  v4.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v4 deleteConfirmationControlWasCancelled:location[0]];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityUpdateRemoveControl];
  objc_storeStrong(location, 0);
}

- (id)accessibilityValue
{
  selfCopy = self;
  v12[1] = a2;
  v12[0] = [(UITableViewCellAccessibility *)self _accessibilityTableViewSwitch];
  if (v12[0])
  {
    accessibilityValue = [v12[0] accessibilityValue];
    v11 = 1;
  }

  else
  {
    _badgeText = [(UITableViewCellAccessibility *)selfCopy _badgeText];
    v8.receiver = selfCopy;
    v8.super_class = UITableViewCellAccessibility;
    accessibilityValue2 = [(UITableViewCellAccessibility *)&v8 accessibilityValue];
    if (accessibilityValue2 && ([_badgeText isEqualToString:accessibilityValue2] & 1) != 0)
    {
      accessibilityValue = MEMORY[0x29EDC9748](accessibilityValue2);
      v11 = 1;
    }

    else
    {
      v7 = 0;
      if (([(UITableViewCellAccessibility *)selfCopy _accessibilityTableCellUsesDetailTextAsValue]& 1) != 0)
      {
        _accessibilityDetailTextLabelIfExists = [(UITableViewCellAccessibility *)selfCopy _accessibilityDetailTextLabelIfExists];
        accessibilityLabel = [_accessibilityDetailTextLabelIfExists accessibilityLabel];
        v3 = v7;
        v7 = accessibilityLabel;
        MEMORY[0x29EDC9740](v3);
        MEMORY[0x29EDC9740](_accessibilityDetailTextLabelIfExists);
      }

      accessibilityValue = __UIAXStringForVariables();
      v11 = 1;
      objc_storeStrong(&v7, 0);
    }

    objc_storeStrong(&accessibilityValue2, 0);
    objc_storeStrong(&_badgeText, 0);
  }

  objc_storeStrong(v12, 0);
  v4 = accessibilityValue;

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  location[1] = a2;
  accessibilityUserDefinedActivationPoint = [(UITableViewCellAccessibility *)self accessibilityUserDefinedActivationPoint];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedActivationPoint).n128_u64[0];
  if (accessibilityUserDefinedActivationPoint)
  {
    accessibilityUserDefinedActivationPoint2 = [(UITableViewCellAccessibility *)selfCopy accessibilityUserDefinedActivationPoint];
    [accessibilityUserDefinedActivationPoint2 pointValue];
    v24 = v3;
    v25 = v4;
    MEMORY[0x29EDC9740](accessibilityUserDefinedActivationPoint2);
  }

  else
  {
    location[0] = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewSwitch];
    if (location[0])
    {
      [location[0] accessibilityActivationPoint];
      v24 = v5;
      v25 = v6;
      v21 = 1;
    }

    else if ((-[UITableViewCellAccessibility safeBoolForKey:](selfCopy, "safeBoolForKey:", @"_hasEditingAccessoryView") & 1) != 0 || (v15 = -[UITableViewCellAccessibility safeValueForKey:](selfCopy, "safeValueForKey:", @"editingStyle"), v16 = [v15 intValue], *&v7 = MEMORY[0x29EDC9740](v15).n128_u64[0], v20 = v16, (v16 - 1) > 1))
    {
      v19.receiver = selfCopy;
      v19.super_class = UITableViewCellAccessibility;
      [(UITableViewCellAccessibility *)&v19 accessibilityActivationPoint];
      v24 = v10;
      v25 = v11;
      v21 = 1;
    }

    else
    {
      _accessibilityCellEditingControl = [(UITableViewCellAccessibility *)selfCopy _accessibilityCellEditingControl];
      [_accessibilityCellEditingControl accessibilityActivationPoint];
      v24 = v8;
      v25 = v9;
      MEMORY[0x29EDC9740](_accessibilityCellEditingControl);
      v21 = 1;
    }

    objc_storeStrong(location, 0);
  }

  v12 = v24;
  v13 = v25;
  result.y = v13;
  result.x = v12;
  return result;
}

- (int64_t)accessibilityElementCount
{
  selfCopy = self;
  v4[1] = a2;
  [(UITableViewCellAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"CheckingOverride"];
  if ([(UITableViewCellAccessibility *)selfCopy _accessibilityUsesOverrideContainerProtocol])
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    _accessibilityElements = [(UITableViewCellAccessibility *)selfCopy _accessibilityElements];
    v6 = [_accessibilityElements count];
    MEMORY[0x29EDC9740](_accessibilityElements);
  }

  else if ([(UITableViewCellAccessibility *)selfCopy _accessibilityShouldBeEmptyIfHidden]&& ([(UITableViewCellAccessibility *)selfCopy accessibilityElementsHidden]& 1) != 0)
  {
    return 0;
  }

  else
  {
    v4[0] = [(UITableViewCellAccessibility *)selfCopy _accessibilityChildren];
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    v6 = [v4[0] count];
    objc_storeStrong(v4, 0);
  }

  return v6;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  v29 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:@"CheckingOverride"];
  if ([(UITableViewCellAccessibility *)selfCopy _accessibilityUsesOverrideContainerProtocol])
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    _accessibilityElements = [(UITableViewCellAccessibility *)selfCopy _accessibilityElements];
    v27 = [_accessibilityElements indexOfObject:location[0]];
    MEMORY[0x29EDC9740](_accessibilityElements);
    v24 = 1;
  }

  else if ([(UITableViewCellAccessibility *)selfCopy _accessibilityShouldBeEmptyIfHidden]&& ([(UITableViewCellAccessibility *)selfCopy accessibilityElementsHidden]& 1) != 0)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = 1;
  }

  else
  {
    _accessibilityChildren = [(UITableViewCellAccessibility *)selfCopy _accessibilityChildren];
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    v22 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](_accessibilityChildren);
    v12 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v9);
        if ([v21 isEqual:location[0]])
        {
          v27 = v22;
          v24 = 1;
          goto LABEL_33;
        }

        objc_opt_class();
        v18 = 0;
        v16 = 0;
        v14 = 0;
        v6 = 0;
        if (objc_opt_isKindOfClass())
        {
          view = [(UIAccessibilityElementMockView *)v21 view];
          v18 = 1;
          v5 = 1;
          if (([view isEqual:location[0]] & 1) == 0)
          {
            objc_opt_class();
            v4 = 0;
            if (objc_opt_isKindOfClass())
            {
              view2 = [(UIAccessibilityElementMockView *)v21 view];
              v16 = 1;
              view3 = [(UIAccessibilityElementMockView *)location[0] view];
              v14 = 1;
              v4 = [view2 isEqual:?];
            }

            v5 = v4;
          }

          v6 = v5;
        }

        if (v14)
        {
          MEMORY[0x29EDC9740](view3);
        }

        if (v16)
        {
          MEMORY[0x29EDC9740](view2);
        }

        if (v18)
        {
          MEMORY[0x29EDC9740](view);
        }

        if (v6)
        {
          v27 = v22;
          v24 = 1;
          goto LABEL_33;
        }

        if ([v21 accessibilityElementCount] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v21, "accessibilityElementCount") > 0 && objc_msgSend(v21, "indexOfAccessibilityElement:", location[0]) != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v22;
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v10)
          {
            goto LABEL_32;
          }
        }
      }

      v27 = v22;
      v24 = 1;
    }

    else
    {
LABEL_32:
      v24 = 0;
    }

LABEL_33:
    MEMORY[0x29EDC9740](obj);
    if (!v24)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = 1;
    }

    objc_storeStrong(&_accessibilityChildren, 0);
  }

  objc_storeStrong(location, 0);
  return v27;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  selfCopy = self;
  v9 = a2;
  indexCopy = index;
  [(UITableViewCellAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"CheckingOverride"];
  if ([(UITableViewCellAccessibility *)selfCopy _accessibilityUsesOverrideContainerProtocol])
  {
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    location = [(UITableViewCellAccessibility *)selfCopy _accessibilityElements];
    if (indexCopy >= [location count])
    {
      if (indexCopy >= [location count])
      {
        _AXAssert();
      }

      v11 = 0;
      v6 = 1;
    }

    else
    {
      v11 = [location objectAtIndex:indexCopy];
      v6 = 1;
    }

    objc_storeStrong(&location, 0);
  }

  else if ([(UITableViewCellAccessibility *)selfCopy _accessibilityShouldBeEmptyIfHidden]&& ([(UITableViewCellAccessibility *)selfCopy accessibilityElementsHidden]& 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    _accessibilityChildren = [(UITableViewCellAccessibility *)selfCopy _accessibilityChildren];
    [(UITableViewCellAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"CheckingOverride"];
    if ((indexCopy & 0x8000000000000000) != 0 || indexCopy >= [_accessibilityChildren count])
    {
      v11 = 0;
      v6 = 1;
    }

    else
    {
      v11 = [_accessibilityChildren objectAtIndex:indexCopy];
      v6 = 1;
    }

    objc_storeStrong(&_accessibilityChildren, 0);
  }

  v3 = v11;

  return v3;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = UITableViewCellAccessibility;
  location[0] = [(UITableViewCellAccessibility *)&v4 accessibilityLabel];
  if (!-[UITableViewCellAccessibility isAccessibilityElement](selfCopy, "isAccessibilityElement") || [location[0] length])
  {
    _accessibilityRetrieveTableViewCellText = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    _accessibilityRetrieveTableViewCellText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText];
  }

  objc_storeStrong(location, 0);
  v2 = _accessibilityRetrieveTableViewCellText;

  return v2;
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UITableViewCellAccessibility;
  v8[0] = [(UITableViewCellAccessibility *)&v7 accessibilityUserInputLabels];
  if (![v8[0] count])
  {
    _accessibilityRetrieveTableViewCellTextExcludingDetailText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellTextExcludingDetailText];
    v2 = MEMORY[0x29ED3D9A0]();
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](_accessibilityRetrieveTableViewCellTextExcludingDetailText);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UITableViewCellAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 0;
  }

  isAccessibilityUserDefinedElement2 = [(UITableViewCellAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (BOOL)_axHasLeadingSwipeActions
{
  selfCopy = self;
  if (self)
  {
    v12 = [selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    if (([v12 conformsToProtocol:&unk_2A23BCDD8] & 1) == 0)
    {
      goto LABEL_13;
    }

    _swipeActionController = [v12 _swipeActionController];
    v10 = objc_opt_respondsToSelector() & 1;
    v8 = 0;
    isEditing = 1;
    if (v10)
    {
      _accessibilityIndexPath = [selfCopy _accessibilityIndexPath];
      v8 = 1;
      isEditing = 1;
      if (([v12 swipeActionController:_swipeActionController mayBeginSwipeForItemAtIndexPath:?] & 1) == 0)
      {
        isEditing = [v12 isEditing];
      }
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](_accessibilityIndexPath);
    }

    if (isEditing)
    {
      _accessibilityIndexPath2 = [selfCopy _accessibilityIndexPath];
      v3 = [v12 swipeActionController:_swipeActionController leadingSwipeConfigurationForItemAtIndexPath:?];
      actions = [v3 actions];
      MEMORY[0x29EDC9740](v3);
      *&v1 = MEMORY[0x29EDC9740](_accessibilityIndexPath2).n128_u64[0];
      v14 = [actions count] != 0;
      v6 = 1;
      objc_storeStrong(&actions, 0);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&_swipeActionController, 0);
    if (!v6)
    {
LABEL_13:
      v14 = 0;
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    return 0;
  }

  return v14;
}

- (BOOL)_axHasTrailingSwipeActions
{
  selfCopy = self;
  if (self)
  {
    v12 = [selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    if (([v12 conformsToProtocol:&unk_2A23BCDD8] & 1) == 0)
    {
      goto LABEL_13;
    }

    _swipeActionController = [v12 _swipeActionController];
    v10 = objc_opt_respondsToSelector() & 1;
    v8 = 0;
    isEditing = 1;
    if (v10)
    {
      _accessibilityIndexPath = [selfCopy _accessibilityIndexPath];
      v8 = 1;
      isEditing = 1;
      if (([v12 swipeActionController:_swipeActionController mayBeginSwipeForItemAtIndexPath:?] & 1) == 0)
      {
        isEditing = [v12 isEditing];
      }
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](_accessibilityIndexPath);
    }

    if (isEditing)
    {
      _accessibilityIndexPath2 = [selfCopy _accessibilityIndexPath];
      v3 = [v12 swipeActionController:_swipeActionController trailingSwipeConfigurationForItemAtIndexPath:?];
      actions = [v3 actions];
      MEMORY[0x29EDC9740](v3);
      *&v1 = MEMORY[0x29EDC9740](_accessibilityIndexPath2).n128_u64[0];
      v14 = [actions count] != 0;
      v6 = 1;
      objc_storeStrong(&actions, 0);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&_swipeActionController, 0);
    if (!v6)
    {
LABEL_13:
      v14 = 0;
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    return 0;
  }

  return v14;
}

- (BOOL)_accessibilitySwipeActionsAllowed
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = [(UITableViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  window = [v19[0] window];
  *&v2 = MEMORY[0x29EDC9740](window).n128_u64[0];
  if (window)
  {
    if ([v19[0] safeBoolForKey:{@"_manuallyManagesSwipeUI", v2}])
    {
      v21 = 0;
      v18 = 1;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x20000000;
      v16 = 32;
      v17 = 0;
      v8 = 0;
      v9 = &v8;
      v10 = 0x20000000;
      v11 = 32;
      v12 = 0;
      v6 = MEMORY[0x29EDC9748](v19[0]);
      v7[0] = MEMORY[0x29EDC9748](selfCopy);
      v7[1] = &v13;
      v7[2] = &v8;
      AXPerformSafeBlock();
      v4 = 1;
      if ((v14[3] & 1) == 0)
      {
        v4 = *(v9 + 24);
      }

      v21 = v4 & 1;
      v18 = 1;
      objc_storeStrong(v7, 0);
      objc_storeStrong(&v6, 0);
      _Block_object_dispose(&v8, 8);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  objc_storeStrong(v19, 0);
  return v21 & 1;
}

void __65__UITableViewCellAccessibility__accessibilitySwipeActionsAllowed__block_invoke(uint64_t a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v3 = [*(a1 + 32) dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 || [(UITableViewCellAccessibility *)*(a1 + 40) _axHasLeadingSwipeActions]|| [(UITableViewCellAccessibility *)*(a1 + 40) _axHasTrailingSwipeActions])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _canEditRowAtIndexPath:v4[0]];
  }

  v2 = [*(a1 + 32) delegate];
  *(*(*(a1 + 56) + 8) + 24) = objc_opt_respondsToSelector() & 1;
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
}

- (BOOL)_accessibilityHandleDetailButtonPress:(id)press
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, press);
  v9 = [(UITableViewCellAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  delegate = [v9 delegate];
  v8 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x29EDC9740](delegate).n128_u64[0];
  if (v8)
  {
    delegate2 = [v9 delegate];
    _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    [delegate2 tableView:v9 accessoryButtonTappedForRowWithIndexPath:?];
    MEMORY[0x29EDC9740](_accessibilityIndexPath);
    MEMORY[0x29EDC9740](delegate2);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (id)_accessibilityEquivalenceTag
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = 0;
  if ([(UITableViewCellAccessibility *)self isAccessibilityElement])
  {
    v8.receiver = selfCopy;
    v8.super_class = UITableViewCellAccessibility;
    _accessibilityEquivalenceTag = [(UITableViewCellAccessibility *)&v8 _accessibilityEquivalenceTag];
    v3 = v9[0];
    v9[0] = _accessibilityEquivalenceTag;
    MEMORY[0x29EDC9740](v3);
  }

  else
  {
    _accessibilityRetrieveTableViewCellText = [(UITableViewCellAccessibility *)selfCopy _accessibilityRetrieveTableViewCellText];
    v5 = v9[0];
    v9[0] = _accessibilityRetrieveTableViewCellText;
    MEMORY[0x29EDC9740](v5);
  }

  v7 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (BOOL)_accessibilityShouldSetNativeFocusWhenATVFocused
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityParentTableView];
  if ((-[UITableViewCellAccessibility _accessibilityBoolValueForKey:](selfCopy, "_accessibilityBoolValueForKey:", @"AXIsShowingSelectedBackground") & 1) == 0 || ([location[0] allowsMultipleSelection] & 1) != 0 || (-[UITableViewCellAccessibility isSelected](selfCopy, "isSelected") & 1) != 0 || !UIAccessibilityIsVoiceOverRunning())
  {
    v3.receiver = selfCopy;
    v3.super_class = UITableViewCellAccessibility;
    _accessibilityShouldSetNativeFocusWhenATVFocused = [(UITableViewCellAccessibility *)&v3 _accessibilityShouldSetNativeFocusWhenATVFocused];
    v4 = 1;
  }

  else
  {
    _accessibilityShouldSetNativeFocusWhenATVFocused = 1;
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return _accessibilityShouldSetNativeFocusWhenATVFocused & 1;
}

- (BOOL)_accessibilityIsOutsideParentBounds
{
  selfCopy = self;
  if (self)
  {
    _accessibilityParentTableView = [selfCopy _accessibilityParentTableView];
    window = [_accessibilityParentTableView window];
    [window accessibilityFrame];
    v8 = CGRectInset(v12, 0.0, 40.0);
    [selfCopy accessibilityFrame];
    rect2.origin.x = v1;
    rect2.origin.y = v2;
    rect2.size.width = v3;
    rect2.size.height = v4;
    v11 = !CGRectIntersectsRect(v8, rect2);
    MEMORY[0x29EDC9740](window);
    objc_storeStrong(&_accessibilityParentTableView, 0);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)accessibilityScrollToVisible
{
  v81 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v76[1] = a2;
  _accessibilityMockParent = [(UITableViewCellAccessibility *)self _accessibilityMockParent];
  v76[0] = [_accessibilityMockParent _accessibilityAncestorIsKindOf:objc_opt_class()];
  v75 = [v76[0] safeBoolForKey:{@"isScrollEnabled", MEMORY[0x29EDC9740](_accessibilityMockParent).n128_f64[0]}];
  if ([v76[0] _accessibilityRespectsTableScrollEnabledFlag] & 1) == 0 || (v75)
  {
    if ((v75 & 1) == 0)
    {
      v71 = AXLogScrollToVisible();
      v70 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v79, v76[0]);
        _os_log_debug_impl(&dword_29C4D6000, v71, v70, "Scrolling the table view even though it has scroll disabled. May need to implement _accessibilityRespectsTableScrollEnabledFlag on the table view: %{public}@", v79, 0xCu);
      }

      objc_storeStrong(&v71, 0);
    }

    v2 = AXRetainAutorelease();
    indexPathsForVisibleRows = [v76[0] indexPathsForVisibleRows];
    _accessibilityIndexPath = [v76[0] indexPathForCell:selfCopy];
    if (!_accessibilityIndexPath)
    {
      _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
      MEMORY[0x29EDC9740](0);
    }

    v67 = [indexPathsForVisibleRows indexOfObject:_accessibilityIndexPath];
    v66 = 2;
    v65 = 0;
    if (_UIAXObjectIsBehindKeyboard())
    {
      v66 = 1;
      v65 = 1;
    }

    v39 = v76[0];
    [(UITableViewCellAccessibility *)selfCopy bounds];
    v60 = v3;
    v61 = v4;
    v62 = v5;
    v63 = v6;
    [v39 convertRect:selfCopy fromView:{v3, v4, v5, v6}];
    v64.origin.x = v7;
    v64.origin.y = v8;
    v64.size.width = v9;
    v64.size.height = v10;
    [v76[0] bounds];
    rect1 = v82;
    if (!CGRectContainsRect(v82, v64))
    {
      v65 = 1;
    }

    v38 = [v76[0] safeValueForKey:@"visibleBounds"];
    [v38 rectValue];
    *&v57 = v11;
    *(&v57 + 1) = v12;
    *&v58 = v13;
    *(&v58 + 1) = v14;
    MEMORY[0x29EDC9740](v38);
    [v76[0] adjustedContentInset];
    v53 = v15;
    v54 = v16;
    v55 = v17;
    v56 = v18;
    *&v51 = UIEdgeInsetsInsetRect_2(*&v57, *(&v57 + 1), *&v58, *(&v58 + 1), v15, v16);
    *(&v51 + 1) = v19;
    *&v52 = v20;
    *(&v52 + 1) = v21;
    v57 = v51;
    v58 = v52;
    UIAccessibilityFrameForBounds();
    v50.origin.x = v22;
    v50.origin.y = v23;
    v50.size.width = v24;
    v50.size.height = v25;
    [(UITableViewCellAccessibility *)selfCopy accessibilityFrame];
    rect2.origin.x = v26;
    rect2.origin.y = v27;
    rect2.size.width = v28;
    rect2.size.height = v29;
    if (!CGRectContainsRect(v50, rect2))
    {
      v66 = 1;
      if (!UIEdgeInsetsEqualToEdgeInsets(v53, v54, v55, v56, *MEMORY[0x29EDC80C8], *(MEMORY[0x29EDC80C8] + 8), *(MEMORY[0x29EDC80C8] + 16), *(MEMORY[0x29EDC80C8] + 24)))
      {
        v65 = 1;
      }

      if (v53 > 0.0)
      {
        v66 = 0;
      }
    }

    if ((v65 & 1) == 0 && [(UITableViewCellAccessibility *)selfCopy _accessibilityIsOutsideParentBounds])
    {
      v65 = 1;
    }

    v48 = [indexPathsForVisibleRows count];
    if ((v65 & 1) == 0 && v48 && (v67 > 1 && v67 < v48 - 2 || v48 == 1))
    {
      v78 = 0;
      v72 = 1;
    }

    else
    {
      v47 = 0;
      numberOfSections = [v76[0] numberOfSections];
      for (i = 0; i < numberOfSections; ++i)
      {
        v47 += [v76[0] numberOfRowsInSection:i];
      }

      if ([indexPathsForVisibleRows count] != v47 || (v65 & 1) != 0)
      {
        if ([_accessibilityIndexPath section] < numberOfSections)
        {
          if (numberOfSections)
          {
            v37 = [_accessibilityIndexPath row];
            if (v37 < [v76[0] numberOfRowsInSection:{objc_msgSend(_accessibilityIndexPath, "section")}])
            {
              v66 = [v76[0] _accessibilityScrollPositionForCellOverride:v66];
              [v76[0] scrollToRowAtIndexPath:_accessibilityIndexPath atScrollPosition:v66 animated:0];
              indexPathsForVisibleRows2 = [v76[0] indexPathsForVisibleRows];
              v43 = 0;
              IsOutsideParent = 1;
              if ([indexPathsForVisibleRows2 containsObject:_accessibilityIndexPath])
              {
                v44 = [v76[0] cellForRowAtIndexPath:_accessibilityIndexPath];
                v43 = 1;
                IsOutsideParent = [(UITableViewCellAccessibility *)v44 _accessibilityIsOutsideParentBounds];
              }

              if (v43)
              {
                MEMORY[0x29EDC9740](v44);
              }

              *&v30 = MEMORY[0x29EDC9740](indexPathsForVisibleRows2).n128_u64[0];
              if (IsOutsideParent)
              {
                numberOfSections = [v76[0] numberOfSections];
                if (!numberOfSections || [_accessibilityIndexPath section] >= numberOfSections || (v34 = objc_msgSend(_accessibilityIndexPath, "row"), v34 >= objc_msgSend(v76[0], "numberOfRowsInSection:", objc_msgSend(_accessibilityIndexPath, "section"))))
                {
                  v78 = 0;
                  v72 = 1;
                  goto LABEL_53;
                }

                [v76[0] scrollToRowAtIndexPath:_accessibilityIndexPath atScrollPosition:2 animated:0];
              }

              [v76[0] _accessibilityOpaqueElementScrollCleanup];
              v32 = [v76[0] cellForRowAtIndexPath:_accessibilityIndexPath];
              _accessibilityIsOutsideParentBounds = [(UITableViewCellAccessibility *)v32 _accessibilityIsOutsideParentBounds];
              MEMORY[0x29EDC9740](v32);
              if (_accessibilityIsOutsideParentBounds)
              {
                v78 = 0;
                v72 = 1;
              }

              else
              {
                v41 = MEMORY[0x29EDC9748](selfCopy);
                v42 = MEMORY[0x29EDC9748](v76[0]);
                AXPerformBlockOnMainThreadAfterDelay();
                v78 = 1;
                v72 = 1;
                objc_storeStrong(&v42, 0);
                objc_storeStrong(&v41, 0);
              }

              goto LABEL_53;
            }
          }
        }

        v78 = 0;
        v72 = 1;
      }

      else
      {
        v78 = 0;
        v72 = 1;
      }
    }

LABEL_53:
    objc_storeStrong(&_accessibilityIndexPath, 0);
    objc_storeStrong(&indexPathsForVisibleRows, 0);
    goto LABEL_54;
  }

  location = AXLogScrollToVisible();
  v73 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_66(v80, v76[0]);
    _os_log_debug_impl(&dword_29C4D6000, location, v73, "Not scrolling the table view because its scroll is disabled: %{public}@", v80, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v78 = 0;
  v72 = 1;
LABEL_54:
  objc_storeStrong(v76, 0);
  return v78 & 1;
}

id __60__UITableViewCellAccessibility_accessibilityScrollToVisible__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _accessibilityWindow];
  v6 = [v4 firstResponder];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (([v6 _accessibilityIsDescendantOfElement:*(a1 + 32)] & 1) == 0)
  {
    v13 = [*(a1 + 32) _accessibilityParentView];
    v12 = 1;
    v11 = [v13 safeValueForKey:@"window"];
    v10 = 1;
    v9 = AXUIKeyboardWindow();
    v8 = 1;
    v7 = v11 != v9;
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v4);
  if (v7)
  {
    _UIAXDismissKeyboardIfNecessary();
  }

  v1 = objc_opt_self();
  v2 = objc_opt_self();

  return v2;
}

- (id)_accessibilityScannerGroupElements
{
  selfCopy = self;
  v4[1] = a2;
  if (([(UITableViewCellAccessibility *)self accessibilityRespondsToUserInteraction]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v4[0] = [(UITableViewCellAccessibility *)selfCopy _accessibilityChildren];
    v6 = MEMORY[0x29EDC9748](v4[0]);
    objc_storeStrong(v4, 0);
  }

  v2 = v6;

  return v2;
}

- (void)_accessibilityFinishSwipeAction:(id)action controller:(id)controller indexPath:(id)path tableView:(id)view tvDelegate:(id)delegate wasEditing:(BOOL)editing
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v34 = 0;
  objc_storeStrong(&v34, controller);
  v33 = 0;
  objc_storeStrong(&v33, path);
  v32 = 0;
  objc_storeStrong(&v32, view);
  v31 = 0;
  objc_storeStrong(&v31, delegate);
  editingCopy = editing;
  v28 = 0;
  objc_opt_class();
  v27 = __UIAccessibilityCastAsSafeCategory();
  v26 = MEMORY[0x29EDC9748](v27);
  objc_storeStrong(&v27, 0);
  v29 = v26;
  if (objc_opt_respondsToSelector())
  {
    [v32 swipeActionController:v34 didEndSwipeForItemAtIndexPath:v33];
    if (([v32 isEditing] & 1) != 0 && !editingCopy)
    {
      [v32 setEditing:0 animated:0];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v31 _accessibilityTableView:v32 endRowActionHandlingForIndexPath:v33];
  }

  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  voiceOverSpeakActionConfirmation = [mEMORY[0x29EDBDFA0] voiceOverSpeakActionConfirmation];
  *&v8 = MEMORY[0x29EDC9740](mEMORY[0x29EDBDFA0]).n128_u64[0];
  if (voiceOverSpeakActionConfirmation)
  {
    title = [location[0] title];
    v24 = 0;
    v22 = 0;
    v20 = 0;
    v18 = 0;
    if ([title length])
    {
      v9 = MEMORY[0x29EDBA0F8];
      v25 = accessibilityLocalizedString(@"action.performed");
      v24 = 1;
      title2 = [location[0] title];
      v22 = 1;
      v21 = [v9 stringWithFormat:v25, title2];
      v20 = 1;
    }

    else
    {
      v19 = accessibilityLocalizedString(@"action.performed.no.name");
      v18 = 1;
    }

    UIAccessibilitySpeak();
    if (v18)
    {
      MEMORY[0x29EDC9740](v19);
    }

    if (v20)
    {
      MEMORY[0x29EDC9740](v21);
    }

    if (v22)
    {
      MEMORY[0x29EDC9740](title2);
    }

    if (v24)
    {
      MEMORY[0x29EDC9740](v25);
    }

    MEMORY[0x29EDC9740](title);
  }

  [UITableViewAccessibility _accessibilitySetShouldConsiderSwipeDeletionCommitted:v29];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_axPerformAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v25 = 0;
  objc_opt_class();
  v5 = [location[0] _accessibilityValueForKey:@"AXTableCellActionKey"];
  v24 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v23 = MEMORY[0x29EDC9748](v24);
  objc_storeStrong(&v24, 0);
  v26 = v23;
  handler = [v23 handler];
  if (handler)
  {
    v20 = 0;
    objc_opt_class();
    v4 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_tableView"];
    v19 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v18 = MEMORY[0x29EDC9748](v19);
    objc_storeStrong(&v19, 0);
    v21 = v18;
    _swipeActionController = [v18 _swipeActionController];
    _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    delegate = [v21 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _accessibilityTableView:v21 prepareForRowActionHandlingForIndexPath:_accessibilityIndexPath];
    }

    isEditing = [v21 isEditing];
    if (objc_opt_respondsToSelector())
    {
      [v21 swipeActionController:_swipeActionController willBeginSwipeForItemAtIndexPath:_accessibilityIndexPath];
    }

    if (objc_opt_respondsToSelector())
    {
      [v21 swipeActionController:_swipeActionController willPerformAction:v26 atIndexPath:_accessibilityIndexPath];
    }

    v6 = MEMORY[0x29EDC9748](v21);
    v7 = MEMORY[0x29EDC9748](selfCopy);
    v12 = MEMORY[0x29EDC9748](handler);
    v8 = MEMORY[0x29EDC9748](v26);
    v9 = MEMORY[0x29EDC9748](_swipeActionController);
    v10 = MEMORY[0x29EDC9748](_accessibilityIndexPath);
    v11 = MEMORY[0x29EDC9748](delegate);
    v13 = isEditing & 1;
    AXPerformSafeBlock();
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&delegate, 0);
    objc_storeStrong(&_accessibilityIndexPath, 0);
    objc_storeStrong(&_swipeActionController, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&handler, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return 1;
}

void __49__UITableViewCellAccessibility__axPerformAction___block_invoke(uint64_t a1)
{
  v26[2] = a1;
  v26[1] = a1;
  v25 = 0;
  objc_opt_class();
  v24 = __UIAccessibilityCastAsSafeCategory();
  v23 = MEMORY[0x29EDC9748](v24);
  objc_storeStrong(&v24, 0);
  v26[0] = v23;
  [UITableViewAccessibility _accessibilitySetShouldConsiderSwipeDeletionCommitted:v23];
  v21 = 0;
  objc_opt_class();
  v20 = __UIAccessibilityCastAsClass();
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  v18 = [v19 _accessibilityShouldIgnoreSwipeActionCompletionHandler];
  v3 = *(a1 + 80);
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __49__UITableViewCellAccessibility__axPerformAction___block_invoke_2;
  v9 = &unk_29F30DDA0;
  v16 = v18 & 1;
  v10 = MEMORY[0x29EDC9748](*(a1 + 40));
  v11 = MEMORY[0x29EDC9748](*(a1 + 48));
  v12 = MEMORY[0x29EDC9748](*(a1 + 56));
  v13 = MEMORY[0x29EDC9748](*(a1 + 64));
  v14 = MEMORY[0x29EDC9748](*(a1 + 32));
  v15 = MEMORY[0x29EDC9748](*(a1 + 72));
  v17 = *(a1 + 88) & 1;
  (*(v3 + 16))(v3, v1, v2, &v5);
  if (v18)
  {
    [*(a1 + 40) _accessibilityFinishSwipeAction:*(a1 + 48) controller:*(a1 + 56) indexPath:*(a1 + 64) tableView:*(a1 + 32) tvDelegate:*(a1 + 72) wasEditing:*(a1 + 88) & 1];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v26, 0);
}

uint64_t __49__UITableViewCellAccessibility__axPerformAction___block_invoke_2(uint64_t result)
{
  if ((*(result + 80) & 1) == 0)
  {
    return [*(result + 32) _accessibilityFinishSwipeAction:*(result + 40) controller:*(result + 48) indexPath:*(result + 56) tableView:*(result + 64) tvDelegate:*(result + 72) wasEditing:*(result + 81) & 1];
  }

  return result;
}

- (id)_axCustomActionsForActions:(uint64_t)actions
{
  v39 = *MEMORY[0x29EDCA608];
  actionsCopy = actions;
  location = 0;
  objc_storeStrong(&location, a2);
  if (actionsCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = [location actions];
    v27 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
    if (v27)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(__b[1] + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _menu = [v32 _menu];
          if (_menu)
          {
            v19 = array;
            children = [_menu children];
            v20 = AXCustomActionForMenuElements(children);
            [v19 axSafelyAddObjectsFromArray:?];
            MEMORY[0x29EDC9740](v20);
            MEMORY[0x29EDC9740](children);
          }

          else
          {
            accessibilityLabel = [v32 accessibilityLabel];
            if (![accessibilityLabel length])
            {
              title = [v32 title];
              v3 = accessibilityLabel;
              accessibilityLabel = title;
              *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
              if (![accessibilityLabel length])
              {
                image = [v32 image];
                accessibilityLabel2 = [image accessibilityLabel];
                v6 = accessibilityLabel;
                accessibilityLabel = accessibilityLabel2;
                MEMORY[0x29EDC9740](v6);
                *&v7 = MEMORY[0x29EDC9740](image).n128_u64[0];
                if (![accessibilityLabel length])
                {
                  image2 = [v32 image];
                  accessibilityIdentifier = [image2 accessibilityIdentifier];
                  v9 = accessibilityLabel;
                  accessibilityLabel = accessibilityIdentifier;
                  MEMORY[0x29EDC9740](v9);
                  MEMORY[0x29EDC9740](image2);
                }
              }
            }

            v10 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"\n" withString:{@" ", v16}];
            v11 = accessibilityLabel;
            accessibilityLabel = v10;
            *&v12 = MEMORY[0x29EDC9740](v11).n128_u64[0];
            if ([accessibilityLabel length])
            {
              v13 = objc_alloc(MEMORY[0x29EDC78E0]);
              v28 = [v13 initWithName:accessibilityLabel target:actionsCopy selector:sel__axPerformAction_];
              [v28 _accessibilitySetRetainedValue:v32 forKey:@"AXTableCellActionKey"];
              [array addObject:v28];
              objc_storeStrong(&v28, 0);
            }

            objc_storeStrong(&accessibilityLabel, 0);
          }

          objc_storeStrong(&_menu, 0);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v16 = v32;
            _AXAssert();
          }
        }

        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v37 = MEMORY[0x29EDC9748](array);
    v34 = 1;
    objc_storeStrong(&array, 0);
  }

  else
  {
    v37 = 0;
    v34 = 1;
  }

  objc_storeStrong(&location, 0);
  v14 = v37;

  return v14;
}

- (id)_privateAccessibilityCustomActions
{
  selfCopy = self;
  v76[1] = a2;
  v75.receiver = self;
  v75.super_class = UITableViewCellAccessibility;
  _privateAccessibilityCustomActions = [(UITableViewCellAccessibility *)&v75 _privateAccessibilityCustomActions];
  v76[0] = [_privateAccessibilityCustomActions mutableCopy];
  v2 = MEMORY[0x29EDC9740](_privateAccessibilityCustomActions).n128_u64[0];
  if (!v76[0])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v4 = v76[0];
    v76[0] = array;
    v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  v74 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_tableView", *&v2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UITableViewCellAccessibility *)selfCopy _accessibilitySwipeActionsAllowed])
  {
    _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    v71 = 0;
    objc_opt_class();
    v44 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_tableView"];
    v70 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v44);
    v69 = MEMORY[0x29EDC9748](v70);
    objc_storeStrong(&v70, 0);
    v72 = v69;
    _swipeActionController = [v69 _swipeActionController];
    if ([v72 conformsToProtocol:&unk_2A23BCDD8])
    {
      v37 = v76[0];
      v36 = selfCopy;
      v39 = [v72 swipeActionController:_swipeActionController leadingSwipeConfigurationForItemAtIndexPath:_accessibilityIndexPath];
      v38 = [(UITableViewCellAccessibility *)v36 _axCustomActionsForActions:v39];
      [v37 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v38);
      *&v5 = MEMORY[0x29EDC9740](v39).n128_u64[0];
      v41 = v76[0];
      v40 = selfCopy;
      v43 = [v72 swipeActionController:_swipeActionController trailingSwipeConfigurationForItemAtIndexPath:{_accessibilityIndexPath, v5}];
      v42 = [(UITableViewCellAccessibility *)v40 _axCustomActionsForActions:v43];
      [v41 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v42);
      MEMORY[0x29EDC9740](v43);
    }

    objc_storeStrong(&_swipeActionController, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&_accessibilityIndexPath, 0);
  }

  _accessibilityTableViewSwitch = [(UITableViewCellAccessibility *)selfCopy _accessibilityTableViewSwitch];
  *&v6 = MEMORY[0x29EDC9740](_accessibilityTableViewSwitch).n128_u64[0];
  if (_accessibilityTableViewSwitch)
  {
    v33 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"editingStyle", v6];
    intValue = [v33 intValue];
    MEMORY[0x29EDC9740](v33);
    v67[1] = intValue;
    v67[0] = 0;
    if (intValue == 1)
    {
      v9 = accessibilityLocalizedString(@"remove.control.text");
      v10 = v67[0];
      v67[0] = v9;
      MEMORY[0x29EDC9740](v10);
    }

    else if (intValue == 2)
    {
      v7 = accessibilityLocalizedString(@"insert.control.text");
      v8 = v67[0];
      v67[0] = v7;
      MEMORY[0x29EDC9740](v8);
    }

    if (v67[0])
    {
      objc_initWeak(&from, selfCopy);
      v32 = objc_alloc(MEMORY[0x29EDC78E0]);
      v31 = v67[0];
      v59 = MEMORY[0x29EDCA5F8];
      v60 = -1073741824;
      v61 = 0;
      v62 = __66__UITableViewCellAccessibility__privateAccessibilityCustomActions__block_invoke;
      v63 = &unk_29F30DDF0;
      objc_copyWeak(&v64, &from);
      v65 = [v32 initWithName:v31 actionHandler:&v59];
      [v76[0] axSafelyAddObject:v65];
      objc_storeStrong(&v65, 0);
      objc_destroyWeak(&v64);
      objc_destroyWeak(&from);
    }

    objc_storeStrong(v67, 0);
  }

  accessoryType = [(UITableViewCellAccessibility *)selfCopy accessoryType];
  if (accessoryType == 4 || accessoryType == 2)
  {
    v29 = objc_alloc(MEMORY[0x29EDC78E0]);
    v30 = accessibilityLocalizedString(@"more.info.button");
    v57 = [v29 initWithName:? target:? selector:?];
    *&v11 = MEMORY[0x29EDC9740](v30).n128_u64[0];
    [v76[0] addObject:{v57, v11}];
    objc_storeStrong(&v57, 0);
  }

  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityHasReorderActions]& 1) != 0)
  {
    _accessibilityIndexPath2 = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    if ([_accessibilityIndexPath2 row] > 0)
    {
      v54 = 0;
      objc_opt_class();
      _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
      _accessibilityPreviousIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityPreviousIndexPath];
      v26 = [_accessibilityParentTableView cellForRowAtIndexPath:?];
      v53 = __UIAccessibilityCastAsSafeCategory();
      MEMORY[0x29EDC9740](v26);
      MEMORY[0x29EDC9740](_accessibilityPreviousIndexPath);
      MEMORY[0x29EDC9740](_accessibilityParentTableView);
      v52 = MEMORY[0x29EDC9748](v53);
      objc_storeStrong(&v53, 0);
      v55 = v52;
      if (([(UITableViewCellAccessibility *)v52 _accessibilityHasReorderActions]& 1) != 0)
      {
        v24 = objc_alloc(MEMORY[0x29EDC78E0]);
        v25 = accessibilityLocalizedString(@"table.cell.reorder.action.move.up");
        v51 = [v24 initWithName:? target:? selector:?];
        *&v12 = MEMORY[0x29EDC9740](v25).n128_u64[0];
        [v76[0] addObject:{v51, v12}];
        objc_storeStrong(&v51, 0);
      }

      objc_storeStrong(&v55, 0);
    }

    v23 = [_accessibilityIndexPath2 row];
    _accessibilityParentTableView2 = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
    v22 = [_accessibilityParentTableView2 numberOfRowsInSection:{objc_msgSend(_accessibilityIndexPath2, "section")}] - 1;
    MEMORY[0x29EDC9740](_accessibilityParentTableView2);
    if (v23 < v22)
    {
      v49 = 0;
      objc_opt_class();
      _accessibilityParentTableView3 = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
      _accessibilityNextIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityNextIndexPath];
      v18 = [_accessibilityParentTableView3 cellForRowAtIndexPath:?];
      v48 = __UIAccessibilityCastAsSafeCategory();
      MEMORY[0x29EDC9740](v18);
      MEMORY[0x29EDC9740](_accessibilityNextIndexPath);
      MEMORY[0x29EDC9740](_accessibilityParentTableView3);
      v47 = MEMORY[0x29EDC9748](v48);
      objc_storeStrong(&v48, 0);
      v50 = v47;
      if (([(UITableViewCellAccessibility *)v47 _accessibilityHasReorderActions]& 1) != 0)
      {
        v16 = objc_alloc(MEMORY[0x29EDC78E0]);
        v17 = accessibilityLocalizedString(@"table.cell.reorder.action.move.down");
        v46 = [v16 initWithName:? target:? selector:?];
        *&v13 = MEMORY[0x29EDC9740](v17).n128_u64[0];
        [v76[0] addObject:{v46, v13}];
        objc_storeStrong(&v46, 0);
      }

      objc_storeStrong(&v50, 0);
    }

    objc_storeStrong(&_accessibilityIndexPath2, 0);
  }

  v15 = MEMORY[0x29EDC9748](v76[0]);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(v76, 0);

  return v15;
}

uint64_t __66__UITableViewCellAccessibility__privateAccessibilityCustomActions__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  objc_copyWeak(v4, a1 + 4);
  AXPerformSafeBlock();
  objc_destroyWeak(v4);
  objc_storeStrong(location, 0);
  return 1;
}

double __66__UITableViewCellAccessibility__privateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 _accessibilityCellEditingControl];
  [WeakRetained editControlWasClicked:?];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  return result;
}

- (uint64_t)_accessibilityHasReorderActions
{
  if (self)
  {
    v2 = [self safeBoolForKey:@"showsReorderControl"] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)_accessibilityRespondsToUserInteractionForElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  if ([(UITableViewCellAccessibility *)selfCopy isAccessibilityElement])
  {
    v8 = 1;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableViewCellAccessibility;
    v8 = [(UITableViewCellAccessibility *)&v4 _accessibilityRespondsToUserInteractionForElement:location[0]];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)_accessibilityHandleReorderMoveUp:(BOOL)up
{
  selfCopy = self;
  v72 = a2;
  upCopy = up;
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)self _accessibilityParentTableView];
  _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
  if ((!upCopy || [_accessibilityIndexPath row]) && (upCopy || (v20 = objc_msgSend(_accessibilityIndexPath, "row"), v20 != objc_msgSend(_accessibilityParentTableView, "numberOfRowsInSection:", objc_msgSend(_accessibilityIndexPath, "section")) - 1)))
  {
    v67 = MEMORY[0x29EDC9748](selfCopy);
    [(UITableViewCellAccessibility *)selfCopy accessibilityActivationPoint];
    v64 = v3;
    v65 = v4;
    EventForSceneReferencePoint = UIAccessibilityCreateEventForSceneReferencePoint();
    v58 = 0;
    v59 = &v58;
    v60 = 0x20000000;
    v61 = 32;
    v62 = 0;
    v50 = MEMORY[0x29EDCA5F8];
    v51 = -1073741824;
    v52 = 0;
    v53 = __66__UITableViewCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke;
    v54 = &unk_29F30D400;
    v57[1] = &v58;
    v55 = MEMORY[0x29EDC9748](_accessibilityParentTableView);
    v56 = MEMORY[0x29EDC9748](v67);
    v57[0] = MEMORY[0x29EDC9748](EventForSceneReferencePoint);
    AXPerformSafeBlock();
    v49 = v59[3] & 1;
    objc_storeStrong(v57, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v55, 0);
    _Block_object_dispose(&v58, 8);
    v63 = v49 & 1;
    if (v49)
    {
      mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen bounds];
      rect = v76;
      v18 = CGRectGetHeight(v76) / 2.0;
      MEMORY[0x29EDC9740](mainScreen);
      v48 = v18;
      [v67 frame];
      v46.origin.x = v5;
      v46.origin.y = v6;
      v46.size.width = v7;
      v46.size.height = v8;
      if (upCopy)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      v19 = v9;
      [v67 bounds];
      v41 = v10;
      v42 = v11;
      v43 = v12;
      v44 = v13;
      v45 = v19 * (v13 / 2.0);
      v40 = 0;
      do
      {
        if (upCopy)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        v45 = v45 + (10 * v14);
        v39 = CGRectGetMidY(v46) + v45;
        v31 = 0;
        v32 = &v31;
        v33 = 838860800;
        v34 = 48;
        v35 = __Block_byref_object_copy__23;
        v36 = __Block_byref_object_dispose__23;
        v37 = 0;
        v24 = MEMORY[0x29EDCA5F8];
        v25 = -1073741824;
        v26 = 0;
        v27 = __66__UITableViewCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke_2;
        v28 = &unk_29F30DE18;
        v30[1] = &v31;
        v29 = MEMORY[0x29EDC9748](_accessibilityParentTableView);
        v30[2] = *&v39;
        v30[0] = MEMORY[0x29EDC9748](_accessibilityIndexPath);
        AXPerformSafeBlock();
        v23 = MEMORY[0x29EDC9748](v32[5]);
        objc_storeStrong(v30, 0);
        objc_storeStrong(&v29, 0);
        _Block_object_dispose(&v31, 8);
        objc_storeStrong(&v37, 0);
        v38 = v23;
        v40 = ([_accessibilityIndexPath isEqual:v23] ^ 1) & 1;
        objc_storeStrong(&v38, 0);
        v16 = 0;
        if ((v40 & 1) == 0)
        {
          v75 = v45;
          v16 = fabs(v45) < v48;
        }
      }

      while (v16);
      v21 = MEMORY[0x29EDC9748](_accessibilityParentTableView);
      v22[0] = MEMORY[0x29EDC9748](v67);
      v22[1] = *&v45;
      AXPerformSafeBlock();
      v74 = 1;
      v68 = 1;
      objc_storeStrong(v22, 0);
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v74 = [(UITableViewCellAccessibility *)selfCopy _axReorderElementsByMovingIndexPaths:upCopy tableView:_accessibilityParentTableView currentPath:_accessibilityIndexPath];
      v68 = 1;
    }

    objc_storeStrong(&EventForSceneReferencePoint, 0);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    v74 = 0;
    v68 = 1;
  }

  objc_storeStrong(&_accessibilityIndexPath, 0);
  objc_storeStrong(&_accessibilityParentTableView, 0);
  return v74 & 1;
}

double __66__UITableViewCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = [*(a1 + 48) allTouches];
  v5 = [v6 anyObject];
  *(*(*(a1 + 56) + 8) + 24) = [v3 _beginReorderingForCell:v2 touch:?];
  MEMORY[0x29EDC9740](v5);
  *&result = MEMORY[0x29EDC9740](v6).n128_u64[0];
  return result;
}

double __66__UITableViewCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke_2(void *a1)
{
  v7 = a1[4];
  CGPointMake_8();
  v3 = [v7 _targetIndexPathAtPoint:a1[5] withLastTargetIndexPath:0 adjustedForGap:{v1, v2}];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  *&result = MEMORY[0x29EDC9740](v5).n128_u64[0];
  return result;
}

- (BOOL)_axReorderElementsByMovingIndexPaths:(BOOL)paths tableView:(id)view currentPath:(id)path
{
  selfCopy = self;
  v32 = a2;
  pathsCopy = paths;
  location = 0;
  objc_storeStrong(&location, view);
  v29 = 0;
  objc_storeStrong(&v29, path);
  if (([location safeBoolForKey:@"_dragAndDropUsedForReordering"] & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = 0;
  v24 = 0;
  if (pathsCopy)
  {
    _accessibilityPreviousIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityPreviousIndexPath];
    v26 = 1;
    v5 = MEMORY[0x29EDC9748](_accessibilityPreviousIndexPath);
  }

  else
  {
    _accessibilityNextIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityNextIndexPath];
    v24 = 1;
    v5 = MEMORY[0x29EDC9748](_accessibilityNextIndexPath);
  }

  v28 = v5;
  if (v24)
  {
    MEMORY[0x29EDC9740](_accessibilityNextIndexPath);
  }

  if (v26)
  {
    MEMORY[0x29EDC9740](_accessibilityPreviousIndexPath);
  }

  v16[1] = MEMORY[0x29EDCA5F8];
  v17 = -1073741824;
  v18 = 0;
  v19 = __91__UITableViewCellAccessibility__axReorderElementsByMovingIndexPaths_tableView_currentPath___block_invoke;
  v20 = &unk_29F30CCC0;
  v21 = MEMORY[0x29EDC9748](location);
  v22 = MEMORY[0x29EDC9748](v29);
  v23 = MEMORY[0x29EDC9748](v28);
  AXPerformSafeBlock();
  _accessibilityIndexPath = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
  MEMORY[0x29EDC9740](_accessibilityIndexPath);
  if (_accessibilityIndexPath == v28)
  {
    v15 = 0;
    objc_opt_class();
    v14 = __UIAccessibilityCastAsSafeCategory();
    v13 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    v8 = v28;
    v6 = [v29 row];
    v16[0] = [(UITableViewAccessibility *)v13 _accessibilityReorderMessageForNewIndexPath:v8 swappedWithRow:v6 movingDown:!pathsCopy];
    MEMORY[0x29EDC9740](v13);
    v9 = MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v16[0]);
    UIAccessibilityPostNotification(*v9, *MEMORY[0x29EDBDAA8]);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    v34 = 1;
    v12 = 1;
    objc_storeStrong(v16, 0);
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v28, 0);
  if (!v12)
  {
LABEL_13:
    v34 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
  return v34 & 1;
}

uint64_t __91__UITableViewCellAccessibility__axReorderElementsByMovingIndexPaths_tableView_currentPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginUpdates];
  [*(a1 + 32) moveRowAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 48)];
  return [*(a1 + 32) endUpdates];
}

- (BOOL)_accessibilityIsSpeakThisElement
{
  selfCopy = self;
  v7 = a2;
  _accessibilityIsSpeakThisElement = 0;
  _accessibilityTableViewSwitch = [(UITableViewCellAccessibility *)self _accessibilityTableViewSwitch];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTableViewSwitch).n128_u64[0];
  if (_accessibilityTableViewSwitch)
  {
    _accessibilityIsSpeakThisElement = 1;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = UITableViewCellAccessibility;
    _accessibilityIsSpeakThisElement = [(UITableViewCellAccessibility *)&v5 _accessibilityIsSpeakThisElement];
  }

  return _accessibilityIsSpeakThisElement & 1;
}

- (id)accessibilityDragSourceDescriptors
{
  v45[1] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = [(UITableViewCellAccessibility *)self accessibilityUserDefinedDragSourceDescriptors];
  if (v42[0])
  {
    v44 = MEMORY[0x29EDC9748](v42[0]);
    v41 = 1;
  }

  else
  {
    _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
    v38 = 0;
    v16 = [_accessibilityParentTableView safeValueForKey:@"_dragController"];
    v37 = __UIAccessibilitySafeClass();
    MEMORY[0x29EDC9740](v16);
    v36 = MEMORY[0x29EDC9748](v37);
    objc_storeStrong(&v37, 0);
    v39 = v36;
    if (!v36 || ((v34 = 0, objc_opt_class(), v33 = __UIAccessibilityCastAsClass(), v32 = MEMORY[0x29EDC9748](v33), objc_storeStrong(&v33, 0), v35 = v32, v31 = 0uLL, v15 = v32, [v32 bounds], v25 = v2, v26 = v3, v27 = v4, v28 = v5, UIRectGetCenter(), v29 = v6, v30 = v7, objc_msgSend(v15, "convertPoint:toView:", _accessibilityParentTableView, v6, v7), *&v31 = v8, *(&v31 + 1) = v9, v20 = 0, v21 = &v20, v22 = 0x20000000, v23 = 32, v24 = 0, v18[1] = &v20, v17 = MEMORY[0x29EDC9748](_accessibilityParentTableView), v19 = v31, v18[0] = MEMORY[0x29EDC9748](selfCopy), AXPerformSafeBlock(), (v21[3] & 1) == 0) ? (v41 = 0) : (v14 = objc_alloc(MEMORY[0x29EDC7900]), v12 = accessibilityLocalizedString(@"drag.table.view.cell"), v13 = objc_msgSend(v14, "initWithName:point:inView:", *&v31, *(&v31 + 1)), v45[0] = v13, v44 = objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v45, 1), MEMORY[0x29EDC9740](v13), MEMORY[0x29EDC9740](v12), v41 = 1), objc_storeStrong(v18, 0), objc_storeStrong(&v17, 0), _Block_object_dispose(&v20, 8), objc_storeStrong(&v35, 0), !v41))
    {
      v44 = 0;
      v41 = 1;
    }

    objc_storeStrong(&v39, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
  }

  objc_storeStrong(v42, 0);
  v10 = v44;

  return v10;
}

double __66__UITableViewCellAccessibility_accessibilityDragSourceDescriptors__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) _accessibilityIndexPath];
  *(*(*(a1 + 48) + 8) + 24) = [v2 _canBeginDragAtPoint:*(a1 + 56) indexPath:*(a1 + 64)];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (id)accessibilityDropPointDescriptors
{
  v48[3] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v45[1] = a2;
  v45[0] = [(UITableViewCellAccessibility *)self accessibilityUserDefinedDropPointDescriptors];
  if (v45[0])
  {
    v47 = MEMORY[0x29EDC9748](v45[0]);
    v44 = 1;
  }

  else
  {
    _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
    v42 = [_accessibilityParentTableView safeValueForKey:@"_dropController"];
    if (v42)
    {
      [(UITableViewCellAccessibility *)selfCopy bounds];
      v37 = v2;
      v38 = v3;
      v39 = v4;
      v40 = v5;
      UIRectGetCenter();
      *&v41 = v6;
      *(&v41 + 1) = v7;
      [(UITableViewCellAccessibility *)selfCopy convertPoint:_accessibilityParentTableView toView:v6, v7];
      v36[0] = v8;
      v36[1] = v9;
      v21 = objc_alloc(MEMORY[0x29EDC7900]);
      v22 = accessibilityLocalizedString(@"drop.table.view.cell.onto");
      v35 = [v21 initWithName:*v36 point:? inView:?];
      MEMORY[0x29EDC9740](v22);
      *&v36[0] = v41;
      v36[1] = -10.0;
      [(UITableViewCellAccessibility *)selfCopy convertPoint:_accessibilityParentTableView toView:*&v41, -10.0];
      *&v34 = v10;
      *(&v34 + 1) = v11;
      *v36 = v34;
      v23 = objc_alloc(MEMORY[0x29EDC7900]);
      v24 = accessibilityLocalizedString(@"drop.table.view.cell.before");
      v33 = [v23 initWithName:*v36 point:? inView:?];
      MEMORY[0x29EDC9740](v24);
      *v36 = v41;
      [(UITableViewCellAccessibility *)selfCopy bounds];
      v29 = v12;
      v30 = v13;
      v31 = v14;
      v32 = v15;
      v36[1] = v15 + 10.0;
      [(UITableViewCellAccessibility *)selfCopy convertPoint:_accessibilityParentTableView toView:v36[0], v15 + 10.0];
      *&v28 = v16;
      *(&v28 + 1) = v17;
      *v36 = v28;
      v25 = objc_alloc(MEMORY[0x29EDC7900]);
      v26 = accessibilityLocalizedString(@"drop.table.view.cell.after");
      v27 = [v25 initWithName:*v36 point:? inView:?];
      *&v18 = MEMORY[0x29EDC9740](v26).n128_u64[0];
      v48[0] = v33;
      v48[1] = v35;
      v48[2] = v27;
      v47 = [MEMORY[0x29EDB8D80] arrayWithObjects:v48 count:{3, v18}];
      v44 = 1;
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      v47 = 0;
      v44 = 1;
    }

    objc_storeStrong(&v42, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
  }

  objc_storeStrong(v45, 0);
  v19 = v47;

  return v19;
}

- (id)accessibilityHeaderElements
{
  selfCopy = self;
  v7[1] = a2;
  if (_AXSAutomationEnabled())
  {
    v7[0] = [(UITableViewCellAccessibility *)selfCopy _accessibilityIndexPath];
    _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
    v5 = [_accessibilityParentTableView headerViewForSection:{objc_msgSend(v7[0], "section")}];
    accessibilityHeaderElements = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v5}];
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&_accessibilityParentTableView, 0);
    objc_storeStrong(v7, 0);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UITableViewCellAccessibility;
    accessibilityHeaderElements = [(UITableViewCellAccessibility *)&v4 accessibilityHeaderElements];
  }

  v2 = accessibilityHeaderElements;

  return v2;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  v7[2] = self;
  v7[1] = a2;
  defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v7[0] = [(UITableViewCellAccessibility *)self _accessibilityLeafDescendantsWithOptions:?];
  *&v2 = MEMORY[0x29EDC9740](defaultVoiceOverOptions).n128_u64[0];
  firstObject = [v7[0] firstObject];
  objc_storeStrong(v7, 0);

  return firstObject;
}

- (BOOL)_accessibilitySetNativeFocus
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityCellEditingControl];
  if ([location[0] _accessibilityViewIsVisible])
  {
    _accessibilitySetNativeFocus = [location[0] _accessibilitySetNativeFocus] & 1;
  }

  else
  {
    v3.receiver = selfCopy;
    v3.super_class = UITableViewCellAccessibility;
    _accessibilitySetNativeFocus = [(UITableViewCellAccessibility *)&v3 _accessibilitySetNativeFocus];
  }

  v4 = 1;
  objc_storeStrong(location, 0);
  return _accessibilitySetNativeFocus & 1;
}

- (BOOL)_accessibilityViewHierarchyHasNativeFocus
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITableViewCellAccessibility *)self _accessibilityCellEditingControl];
  if ([location[0] _accessibilityViewIsVisible])
  {
    _accessibilityViewHierarchyHasNativeFocus = [location[0] _accessibilityViewHierarchyHasNativeFocus] & 1;
  }

  else
  {
    v3.receiver = selfCopy;
    v3.super_class = UITableViewCellAccessibility;
    _accessibilityViewHierarchyHasNativeFocus = [(UITableViewCellAccessibility *)&v3 _accessibilityViewHierarchyHasNativeFocus];
  }

  v4 = 1;
  objc_storeStrong(location, 0);
  return _accessibilityViewHierarchyHasNativeFocus & 1;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v14 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, sender);
  v10.receiver = selfCopy;
  v10.super_class = UITableViewCellAccessibility;
  v11 = [(UITableViewCellAccessibility *)&v10 canPerformAction:actionCopy withSender:location];
  if ((v11 & 1) != 0 && actionCopy == sel_selectAll_)
  {
    v17 = &canPerformAction_withSender__onceToken;
    v16 = 0;
    objc_storeStrong(&v16, &__block_literal_global_967);
    if (*v17 != -1)
    {
      dispatch_once(v17, v16);
    }

    objc_storeStrong(&v16, 0);
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel_selectAll_);
    if (InstanceMethod && canPerformAction_withSender__selectAllBaseMethod == InstanceMethod)
    {
      v11 = 0;
    }
  }

  if ((v11 & 1) == 0 && ([(UITableViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    _accessibilityPerformableActions = [(UITableViewCellAccessibility *)selfCopy _accessibilityPerformableActions];
    v7 = NSStringFromSelector(actionCopy);
    v11 = [_accessibilityPerformableActions containsObject:?];
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](_accessibilityPerformableActions);
  }

  v6 = v11;
  objc_storeStrong(&location, 0);
  return v6 & 1;
}

Method __60__UITableViewCellAccessibility_canPerformAction_withSender___block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_selectAll_);
  canPerformAction_withSender__selectAllBaseMethod = result;
  return result;
}

- (id)_accessibilityPerformableActions
{
  v8[4] = *MEMORY[0x29EDCA608];
  v7 = NSStringFromSelector(sel__accessibilityHandleReorderMoveUpWithFocus);
  v8[0] = v7;
  v6 = NSStringFromSelector(sel__accessibilityHandleReorderMoveDownWithFocus);
  v8[1] = v6;
  v5 = NSStringFromSelector(sel__accessibilityKeyCommandActionPlus);
  v8[2] = v5;
  v3 = NSStringFromSelector(sel__accessibilityKeyCommandActionMinus);
  v8[3] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:4];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);

  return v4;
}

- (id)_accessibilityKeyCommands
{
  v9[2] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  if (([(UITableViewCellAccessibility *)self _accessibilityHasReorderActions]& 1) != 0)
  {
    v5 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8178] modifierFlags:? action:?];
    v9[0] = v5;
    v4 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8160] modifierFlags:0x20000 action:sel__accessibilityHandleReorderMoveDownWithFocus];
    v9[1] = v4;
    _accessibilityKeyCommands = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    location[0] = [(UITableViewCellAccessibility *)selfCopy _accessibilityStepperAccessory];
    if (location[0])
    {
      _accessibilityKeyCommands = [location[0] _accessibilityKeyCommands];
    }

    else
    {
      _accessibilityKeyCommands = 0;
    }

    objc_storeStrong(location, 0);
  }

  v2 = _accessibilityKeyCommands;

  return v2;
}

- (id)_accessibilityStepperAccessory
{
  selfCopy = self;
  v10 = a2;
  v9 = 0;
  objc_opt_class();
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  accessoryView = [v5 accessoryView];
  v8 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](accessoryView);
  MEMORY[0x29EDC9740](v5);
  if (v9)
  {
    abort();
  }

  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);

  return v4;
}

- (void)_accessibilityKeyCommandActionPlus
{
  _accessibilityStepperAccessory = [(UITableViewCellAccessibility *)self _accessibilityStepperAccessory];
  [_accessibilityStepperAccessory _accessibilityKeyCommandActionPlus];
  MEMORY[0x29EDC9740](_accessibilityStepperAccessory);
}

- (void)_accessibilityKeyCommandActionMinus
{
  _accessibilityStepperAccessory = [(UITableViewCellAccessibility *)self _accessibilityStepperAccessory];
  [_accessibilityStepperAccessory _accessibilityKeyCommandActionMinus];
  MEMORY[0x29EDC9740](_accessibilityStepperAccessory);
}

- (void)_accessibilityHandleReorderMoveDownWithFocus
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(UITableViewCellAccessibility *)self _accessibilityNextIndexPath];
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityHandleReorderMoveDown];
  v2 = [_accessibilityParentTableView cellForRowAtIndexPath:v4[0]];
  _UIAXAssignFocusToItem();
  MEMORY[0x29EDC9740](v2);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(&_accessibilityParentTableView, 0);
  objc_storeStrong(v4, 0);
}

- (void)_accessibilityHandleReorderMoveUpWithFocus
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(UITableViewCellAccessibility *)self _accessibilityPreviousIndexPath];
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
  [(UITableViewCellAccessibility *)selfCopy _accessibilityHandleReorderMoveUp];
  v2 = [_accessibilityParentTableView cellForRowAtIndexPath:v4[0]];
  _UIAXAssignFocusToItem();
  MEMORY[0x29EDC9740](v2);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7440], 0);
  objc_storeStrong(&_accessibilityParentTableView, 0);
  objc_storeStrong(v4, 0);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v33 = a2;
  v31.receiver = self;
  v31.super_class = UITableViewCellAccessibility;
  canBecomeFocused = [(UITableViewCellAccessibility *)&v31 canBecomeFocused];
  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) == 0)
  {
LABEL_19:
    v35 = canBecomeFocused & 1;
    return v35 & 1;
  }

  storedAccessibilityRespondsToUserInteraction = [(UITableViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
  *&v2 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction).n128_u64[0];
  if (!storedAccessibilityRespondsToUserInteraction)
  {
    if ((canBecomeFocused & 1) == 0)
    {
      v37 = &canBecomeFocused_onceToken_0;
      location = 0;
      objc_storeStrong(&location, &__block_literal_global_981);
      if (*v37 != -1)
      {
        dispatch_once(v37, location);
      }

      objc_storeStrong(&location, 0);
      v3 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityRespondsToUserInteraction);
      v29 = InstanceMethod != canBecomeFocused_accessibilityRespondsToUserInteractionBaseMethod_0;
      storedAccessibilityRespondsToUserInteraction2 = [(UITableViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
      v10 = storedAccessibilityRespondsToUserInteraction2 != 0;
      *&v5 = MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction2).n128_u64[0];
      v28 = v10;
      v11 = 1;
      if (!v29)
      {
        v11 = 1;
        if (!v28)
        {
          v11 = 1;
          if (([(UITableViewCellAccessibility *)selfCopy safeBoolForKey:@"_accessibilityRespondsToUserInteraction", v5]& 1) == 0)
          {
            v11 = [(UITableViewCellAccessibility *)selfCopy accessibilityTraits]!= 0;
          }
        }
      }

      canBecomeFocused = v11;
    }

    v26 = 0;
    objc_opt_class();
    v25 = __UIAccessibilityCastAsClass();
    v24 = MEMORY[0x29EDC9748](v25);
    objc_storeStrong(&v25, 0);
    v27 = v24;
    if (canBecomeFocused)
    {
      contentView = [v27 contentView];
      canBecomeFocused = ([(UIViewAccessibility *)contentView _axHasSingleFocusableSubview]^ 1) & 1;
      MEMORY[0x29EDC9740](contentView);
    }

    if ((canBecomeFocused & 1) == 0)
    {
      canBecomeFocused = [v27 isEditing];
    }

    if (canBecomeFocused)
    {
      v20[0] = 0;
      v20[1] = v20;
      v21 = 0x20000000;
      v22 = 32;
      v23 = 0;
      contentView2 = [v27 contentView];
      v14 = MEMORY[0x29EDCA5F8];
      v15 = -1073741824;
      v16 = 0;
      v17 = __48__UITableViewCellAccessibility_canBecomeFocused__block_invoke_2;
      v18 = &unk_29F30DE68;
      v19[0] = MEMORY[0x29EDC9748](selfCopy);
      v19[1] = v20;
      v6 = [contentView2 _accessibilityFindDescendant:&v14];
      canBecomeFocused = v6 == 0;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](contentView2);
      objc_storeStrong(v19, 0);
      _Block_object_dispose(v20, 8);
    }

    objc_storeStrong(&v27, 0);
    goto LABEL_19;
  }

  storedAccessibilityRespondsToUserInteraction3 = [(UITableViewCellAccessibility *)selfCopy storedAccessibilityRespondsToUserInteraction];
  v35 = [storedAccessibilityRespondsToUserInteraction3 BOOLValue] & 1;
  MEMORY[0x29EDC9740](storedAccessibilityRespondsToUserInteraction3);
  return v35 & 1;
}

Method __48__UITableViewCellAccessibility_canBecomeFocused__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_accessibilityRespondsToUserInteraction);
  canBecomeFocused_accessibilityRespondsToUserInteractionBaseMethod_0 = result;
  return result;
}

BOOL __48__UITableViewCellAccessibility_canBecomeFocused__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    v13 = 0;
  }

  else
  {
    v6 = location[0];
    v7 = [*(a1 + 32) _accessibilityCellEditingControl];
    v10 = 0;
    v8 = 0;
    if (v6 != v7)
    {
      v5 = location[0];
      v11 = [*(a1 + 32) _accessibilityCellReorderControl];
      v10 = 1;
      v8 = v5 != v11;
    }

    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    MEMORY[0x29EDC9740](v7);
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (v2 = [location[0] accessibilityTraits], (v2 & *MEMORY[0x29EDC7F70]) != 0))
      {
        if (objc_opt_respondsToSelector() & 1) != 0 && ([location[0] canBecomeFocused])
        {
          ++*(*(*(a1 + 40) + 8) + 24);
        }
      }
    }

    objc_opt_class();
    v4 = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      v4 = 1;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v4 = 1;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          v4 = 1;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v4 = *(*(*(a1 + 40) + 8) + 24) == 2;
          }
        }
      }
    }

    v13 = v4;
  }

  objc_storeStrong(location, 0);
  return v13;
}

- (void)_axSetFocusedSubview:(id)subview
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  __UIAccessibilitySetAssociatedNonRetainedObject();
  objc_storeStrong(location, 0);
}

- (id)preferredFocusedView
{
  selfCopy = self;
  v22[1] = a2;
  v21.receiver = self;
  v21.super_class = UITableViewCellAccessibility;
  v22[0] = [(UITableViewCellAccessibility *)&v21 preferredFocusedView];
  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v19 = 0;
    objc_opt_class();
    v18 = __UIAccessibilityCastAsClass();
    v17 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&v18, 0);
    v20 = v17;
    v9 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:selfCopy];
    focusedItem = [v9 focusedItem];
    *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    _axGetFocusedSubview = [(UITableViewCellAccessibility *)selfCopy _axGetFocusedSubview];
    v13 = 0;
    v11 = 0;
    if (_axGetFocusedSubview)
    {
      v3 = MEMORY[0x29EDC9748](_axGetFocusedSubview);
    }

    else
    {
      _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
      v13 = 1;
      _axGetLastFocusedChild = [_accessibilityParentTableView _axGetLastFocusedChild];
      v11 = 1;
      v3 = MEMORY[0x29EDC9748](_axGetLastFocusedChild);
    }

    v15 = v3;
    if (v11)
    {
      MEMORY[0x29EDC9740](_axGetLastFocusedChild);
    }

    if (v13)
    {
      MEMORY[0x29EDC9740](_accessibilityParentTableView);
    }

    *&v4 = MEMORY[0x29EDC9740](_axGetFocusedSubview).n128_u64[0];
    if ([(UITableViewCellAccessibility *)selfCopy canBecomeFocused]&& focusedItem || !v15)
    {
      objc_storeStrong(v22, v20);
    }

    else if ([(UITableViewCellAccessibility *)selfCopy safeBoolForKey:@"_isFocusedOrAncestorOfFocusedView"]& 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_storeStrong(v22, focusedItem);
    }

    else
    {
      v5 = [(UIViewAccessibility *)v20 _accessibilitySubviewMatchingFKAView:v15];
      v6 = v22[0];
      v22[0] = v5;
      MEMORY[0x29EDC9740](v6);
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&focusedItem, 0);
    objc_storeStrong(&v20, 0);
  }

  v8 = MEMORY[0x29EDC9748](v22[0]);
  objc_storeStrong(v22, 0);

  return v8;
}

- (void)_didUpdateFocusInContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19.receiver = selfCopy;
  v19.super_class = UITableViewCellAccessibility;
  [(UITableViewCellAccessibility *)&v19 _didUpdateFocusInContext:location[0]];
  v17 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (([(UITableViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    nextFocusedView = [location[0] nextFocusedView];
    v18 = nextFocusedView;
    v17 = 1;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = -1073741824;
    v13 = 0;
    v14 = __57__UITableViewCellAccessibility__didUpdateFocusInContext___block_invoke;
    v15 = &unk_29F30C818;
    v16 = MEMORY[0x29EDC9748](selfCopy);
    v10 = &v16;
    v9 = 1;
    v8 = [nextFocusedView _accessibilityFindAncestor:&v11 startWithSelf:1];
    v7 = 1;
    v6 = v8 != 0;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v17)
  {
    MEMORY[0x29EDC9740](v18);
  }

  if (v6)
  {
    v3 = selfCopy;
    nextFocusedView2 = [location[0] nextFocusedView];
    [(UITableViewCellAccessibility *)v3 _axSetFocusedSubview:?];
    MEMORY[0x29EDC9740](nextFocusedView2);
  }

  if (v9)
  {
    objc_storeStrong(v10, 0);
  }

  objc_storeStrong(location, 0);
}

BOOL __57__UITableViewCellAccessibility__didUpdateFocusInContext___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  selfCopy = self;
  v24 = a2;
  v22.receiver = self;
  v22.super_class = UITableViewCellAccessibility;
  _isEligibleForFocusInteraction = [(UITableViewCellAccessibility *)&v22 _isEligibleForFocusInteraction];
  if (!_isEligibleForFocusInteraction && ([(UITableViewCellAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v20 = 0;
    objc_opt_class();
    v19 = __UIAccessibilityCastAsClass();
    v18 = MEMORY[0x29EDC9748](v19);
    objc_storeStrong(&v19, 0);
    v21 = v18;
    v16 = 0;
    objc_opt_class();
    v4 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"_tableView"];
    v15 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v14 = MEMORY[0x29EDC9748](v15);
    objc_storeStrong(&v15, 0);
    _swipeActionController = [v14 _swipeActionController];
    MEMORY[0x29EDC9740](v14);
    v3 = v21;
    v7 = 0;
    v8 = &v7;
    v9 = 838860800;
    v10 = 48;
    v11 = __Block_byref_object_copy__23;
    v12 = __Block_byref_object_dispose__23;
    v13 = 0;
    v6[1] = &v7;
    v6[0] = MEMORY[0x29EDC9748](_swipeActionController);
    AXPerformSafeBlock();
    v5 = MEMORY[0x29EDC9748](v8[5]);
    objc_storeStrong(v6, 0);
    _Block_object_dispose(&v7, 8);
    objc_storeStrong(&v13, 0);
    _isEligibleForFocusInteraction = v3 == v5;
    MEMORY[0x29EDC9740](v5);
    objc_storeStrong(&_swipeActionController, 0);
    objc_storeStrong(&v21, 0);
  }

  return _isEligibleForFocusInteraction;
}

double __62__UITableViewCellAccessibility__isEligibleForFocusInteraction__block_invoke(uint64_t a1)
{
  v5 = *(a1 + 32);
  v7 = [v5 swipedIndexPath];
  v1 = [v5 _swipedViewForItemAtIndexPath:?];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)accessibilityPath
{
  selfCopy = self;
  v26[1] = a2;
  v26[0] = [(UITableViewCellAccessibility *)self _accessibilityIndexPath];
  _accessibilityParentTableView = [(UITableViewCellAccessibility *)selfCopy _accessibilityParentTableView];
  numberOfSections = [_accessibilityParentTableView numberOfSections];
  if (numberOfSections <= [v26[0] section])
  {
    v28 = 0;
  }

  else
  {
    v24 = [v26[0] row] == 0;
    v11 = [v26[0] row];
    v23 = v11 == [_accessibilityParentTableView numberOfRowsInSection:{objc_msgSend(v26[0], "section")}] - 1;
    v21 = 0;
    objc_opt_class();
    v12 = [(UITableViewCellAccessibility *)selfCopy safeValueForKey:@"layer"];
    v20 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v12);
    v19 = MEMORY[0x29EDC9748](v20);
    objc_storeStrong(&v20, 0);
    v22 = v19;
    v18 = 0;
    if (v24)
    {
      v18 = 3;
    }

    if (v23)
    {
      v18 |= 0xCuLL;
    }

    v10 = MEMORY[0x29EDC7948];
    [(UITableViewCellAccessibility *)selfCopy accessibilityFrame];
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    [v22 cornerRadius];
    [v22 cornerRadius];
    CGSizeMake_3();
    v28 = [v10 bezierPathWithRoundedRect:v18 byRoundingCorners:v14 cornerRadii:{v15, v16, v17, v6, v7}];
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&_accessibilityParentTableView, 0);
  objc_storeStrong(v26, 0);
  v8 = v28;

  return v8;
}

@end