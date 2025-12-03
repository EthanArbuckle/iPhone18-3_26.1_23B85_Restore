@interface TableViewManager
+ (id)boldSystemLabelFont;
+ (id)smallSystemLabelFont;
+ (id)systemLabelFont;
- (BOOL)becomeFirstResponderAtIndexPath:(id)path;
- (BOOL)checkIfSectionDataSameInTable:(id)table;
- (BOOL)isCellAtIndexPath:(id)path identicalToNewRow:(id)row;
- (BOOL)setNewRow:(id)row itemAttribute:(id)attribute forItemOfType:(id)type atItemTypeIndex:(unint64_t)index toValue:(id)value;
- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (BOOL)tagOfCellAtIndexPath:(id)path tag:(int64_t *)tag;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldHasVerifierAtIndexPath:(id)path;
- (BOOL)textFieldIsSecureAndUnchanged:(id)unchanged;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)textFieldVerifiedAtIndexPath:(id)path;
- (BOOL)updateRowAtIndexPath:(id)path withNewRowInfo:(id)info;
- (BOOL)updateSectionsIfMatchingExisting:(id)existing;
- (BOOL)verifyStr1:(id)str1 forTag1:(unint64_t)tag1 matchesStr2:(id)str2 forTag2:(unint64_t)tag2;
- (TableViewManager)init;
- (TableViewManagerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (double)totalTableHeight;
- (double)totalTableSectionsHeight;
- (id)activityView:(id)view;
- (id)buttonView:(id)view;
- (id)cellInfoOfSelectedRowInMenuSection:(unint64_t)section;
- (id)commonAddOptionalBasicImage:(id)image withNeighborItem:(id)item toCellItems:(id)items;
- (id)commonAddOptionalStaticText:(id)text withNeighborItem:(id)item toCellItems:(id)items;
- (id)createRowStyleActivityStatus:(BOOL)status text1:(id)text1 grayedText1:(BOOL)grayedText1 text2:(id)text2 grayedText2:(BOOL)grayedText2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicButtons:(id)buttons title2:(id)title2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicEditableWithImage:(id)image labelText:(id)text currentValue:(id)value placeholderText:(id)placeholderText isSecure:(BOOL)secure keyboardType:(int64_t)type withTag:(unint64_t)tag;
- (id)createRowStyleBasicOnOffWithImage:(id)image labelText:(id)text isOn:(BOOL)on withTag:(unint64_t)tag;
- (id)createRowStyleBasicWholeCellButton:(id)button withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithImage:(id)image text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithText:(id)text centerImage:(id)image text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleBasicWithUnreadBubble:(unint64_t)bubble text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag;
- (id)createRowStyleDatePicker:(id)picker minimumDate:(id)date maximumDate:(id)maximumDate withMode:(int64_t)mode withTag:(unint64_t)tag;
- (id)createRowStyleProgressViewWithCancelAndStatus:(id)status statusText:(id)text altText:(id)altText withTag:(unint64_t)tag;
- (id)createRowStyleSegmentedControlWithItems:(id)items selectedSegmentIndex:(id)index enabled:(BOOL)enabled withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWitImage:(id)image mainText:(id)text subtitleText:(id)subtitleText withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWithRightImage:(id)image subtitleText:(id)text rightImage:(id)rightImage withTag:(unint64_t)tag;
- (id)createRowStyleSubtitleWithRightText:(id)text subtitleText:(id)subtitleText rightText:(id)rightText withTag:(unint64_t)tag;
- (id)createRowStyleTitledParagraph:(id)paragraph titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag;
- (id)createRowStyleTitledParagraphWithLeftImage:(id)image title:(id)title bodyText:(id)text withTag:(unint64_t)tag;
- (id)createRowStyleTitledStaticMultiline:(id)multiline titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag;
- (id)datePicker:(id)picker;
- (id)editTextView:(id)view;
- (id)findFirstResponderInTableView:(id)view foundParentCell:(id *)cell;
- (id)findFirstResponderInTableView:(id)view fromSection:(unint64_t)section fromRow:(unint64_t)row foundParentCell:(id *)cell;
- (id)findFirstResponderInView:(id)view;
- (id)findNextResponderInTableView:(id)view foundParentCell:(id *)cell;
- (id)getCellDictForCellAtIndexPath:(id)path;
- (id)getDescriptorObjectForKey:(id)key inSection:(int64_t)section;
- (id)getInfoForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell;
- (id)getRepresentedObjectForCellAtIndexPath:(id)path;
- (id)getSectionDictForSection:(int64_t)section;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path;
- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (id)imageView:(id)view;
- (id)indexPathOfCellWithTag:(int64_t)tag;
- (id)indexPathOfFirstCellWithUnverifiedVerifier;
- (id)labelView:(id)view;
- (id)multilineLabelView:(id)view;
- (id)progressView:(id)view;
- (id)segmentedControlView:(id)view;
- (id)switchView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path layoutMode:(BOOL)mode;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (id)unreadBubbleCount:(id)count;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)findAndSetItemObject:(id)object toValue:(id)value inCellWithInternalRowSectionTagValue:(unint64_t)tagValue;
- (unint64_t)indexOfSectionWithIdentifier:(id)identifier;
- (unint64_t)indexOfSelectedRowInMenuSection:(unint64_t)section;
- (unint64_t)tagOfSelectedRowInMenuSection:(unint64_t)section;
- (void)addSectionInfo:(id)info animated:(BOOL)animated;
- (void)appendNewRow:(id)row forSection:(unint64_t)section;
- (void)awakeFromNib;
- (void)bulkUpdateBegin;
- (void)bulkUpdateEnd;
- (void)buttonAction:(id)action;
- (void)cleanTableViewForReuse;
- (void)dealloc;
- (void)deferedTouchInCellAtIndexPath:(id)path;
- (void)deleteAllRowsInSection:(unint64_t)section;
- (void)deleteAllRowsInSectionCore:(unint64_t)core;
- (void)deleteRowInSection:(unint64_t)section withTag:(int64_t)tag;
- (void)deleteRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation;
- (void)deleteSection:(unint64_t)section;
- (void)deleteSectionWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)deleteSections:(id)sections withRowAnimation:(int64_t)animation;
- (void)endEditing;
- (void)informOfNewCellLeftEdge:(double)edge andWidth:(double)width;
- (void)initializeTableViewManagerCommon;
- (void)insertNewRows:(id)rows atIndexPaths:(id)paths withRowAnimation:(int64_t)animation;
- (void)insertSectionInfo:(id)info atIndex:(unint64_t)index withRowAnimation:(int64_t)animation;
- (void)makeFirstEditableCellCurrentResponder;
- (void)recordInitialSelectedMenuItemsForNewSection:(int64_t)section;
- (void)reloadSection:(unint64_t)section;
- (void)segmentedControlValueChanged:(id)changed;
- (void)selectMenuCellAtIndexPath:(id)path;
- (void)selectedDateChanged:(id)changed;
- (void)setActivityViewValue:(id)value usingItemInfo:(id)info;
- (void)setButtonViewValue:(id)value usingItemInfo:(id)info;
- (void)setCellRowInfoItem:(id)item atIndex:(unint64_t)index forKey:(id)key toValue:(id)value;
- (void)setDatePickerValue:(id)value usingItemInfo:(id)info;
- (void)setDescriptorObject:(id)object forKey:(id)key inSection:(int64_t)section;
- (void)setEditTextViewValue:(id)value usingItemInfo:(id)info;
- (void)setImageViewValue:(id)value usingItemInfo:(id)info;
- (void)setLabelViewValue:(id)value usingItemInfo:(id)info;
- (void)setManagedTableView:(id)view;
- (void)setMenuCell:(id)cell visualStateToSelected:(BOOL)selected atIndexPath:(id)path;
- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItem:(id)item;
- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (void)setMultilineLabelViewValue:(id)value usingItemInfo:(id)info;
- (void)setNewRow:(id)row accessoryType:(int64_t)type;
- (void)setNewRow:(id)row editingAccessoryType:(int64_t)type;
- (void)setNewRow:(id)row editingStyle:(int64_t)style;
- (void)setNewRow:(id)row selectableCell:(BOOL)cell;
- (void)setNewRow:(id)row tag:(unint64_t)tag;
- (void)setNewRow:(id)row textFieldViewMode:(int64_t)mode;
- (void)setNewRow:(id)row verifierAccessoryType:(int)type;
- (void)setProgressViewValue:(id)value usingItemInfo:(id)info;
- (void)setRepresentedObject:(id)object forCellAtIndexPath:(id)path;
- (void)setSectionValue:(id)value forKey:(id)key inSection:(unint64_t)section;
- (void)setSwitchViewValue:(id)value usingItemInfo:(id)info;
- (void)setUnreadBubbleCountValue:(id)value usingItemInfo:(id)info;
- (void)setValue:(id)value forItem:(id)item;
- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path;
- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (void)setVerifierAccessoryView:(int)view forCell:(id)cell;
- (void)setVerifierCellAccessoryType:(int)type forCellsAtIndexPaths:(id)paths;
- (void)switchAction:(id)action;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)uiTextFieldDidChange:(id)change;
- (void)updateCellAtIndexPath:(id)path withNewRowInfo:(id)info;
- (void)updateFooter:(id)footer forSectionWithIdentifier:(id)identifier;
- (void)updateFooter:(id)footer inSection:(unint64_t)section;
- (void)updateHeader:(id)header forSectionWithIdentifier:(id)identifier;
- (void)updateHeader:(id)header inSection:(unint64_t)section;
- (void)updateSectionDataInIdenticalTable:(id)table;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TableViewManager

- (void)informOfNewCellLeftEdge:(double)edge andWidth:(double)width
{
  v35 = *MEMORY[0x277D85DE8];
  self->_cellLeftEdgeOrigin = edge;
  self->_cellContentWidth = width;
  v5 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v34, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = objc_msgSend_objectForKey_(*(*(&v29 + 1) + 8 * i), v8, @"headerCache");
        if (v12)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = objc_msgSend_subviews(v12, v8, v13);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v33, 16);
          if (v16)
          {
            v18 = v16;
            v19 = *v26;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v14);
                }

                v21 = *(*(&v25 + 1) + 8 * j);
                objc_msgSend_frame(v21, v8, v17);
                objc_msgSend_setFrame_(v21, v22, v23, self->_cellLeftEdgeOrigin + 10.0);
              }

              v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v8, &v25, v33, 16);
            }

            while (v18);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v29, v34, 16);
    }

    while (v9);
  }
}

- (void)endEditing
{
  objc_msgSend_resignFirstResponder(self->_currentFirstResponder, a2, v2);
  self->_currentFirstResponder = 0;

  self->_currentFirstResponderCellPath = 0;
}

- (void)initializeTableViewManagerCommon
{
  self->_detailTextColor = objc_msgSend__labelColor(MEMORY[0x277D75348], a2, v2);
  self->_selectedTextColor = objc_msgSend__labelColor(MEMORY[0x277D75348], v4, v5);
  self->_editTextColor = objc_msgSend_systemBlueColor(MEMORY[0x277D75348], v6, v7);
  self->_subtitleColor = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v8, v9);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_tableDescriptorDict = v10;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);

  objc_msgSend_setObject_forKey_(v10, v11, v12, @"tableSectionArray");
}

- (void)awakeFromNib
{
  objc_msgSend_initializeTableViewManagerCommon(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TableViewManager;
  [(TableViewManager *)&v4 awakeFromNib];
}

- (TableViewManager)init
{
  v7.receiver = self;
  v7.super_class = TableViewManager;
  v2 = [(TableViewManager *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_initializeTableViewManagerCommon(v2, v3, v4);
  }

  return v5;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);
  objc_msgSend_setManagedTableView_(self, v6, 0);

  v7.receiver = self;
  v7.super_class = TableViewManager;
  [(TableViewManager *)&v7 dealloc];
}

- (void)setManagedTableView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager setManagedTableView:]", 800, "%@\n", v3, v4, v5, v6, view);
  }

  objc_msgSend_setDelegate_(view, a2, self);
  objc_msgSend_setDataSource_(view, v9, self);
  managedTableView = self->_managedTableView;
  if (managedTableView != view)
  {
    objc_msgSend_setDataSource_(managedTableView, v10, 0);
    objc_msgSend_setDelegate_(self->_managedTableView, v12, 0);

    viewCopy = view;
    self->_managedTableView = view;
  }
}

- (TableViewManagerDelegate)delegate
{
  if (*(self + 3))
  {
    return *(self + 3);
  }

  return self;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, appear);
  v6 = *MEMORY[0x277D770B0];

  objc_msgSend_addObserver_selector_name_object_(v4, v5, self, sel_uiTextFieldDidChange_, v6, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, disappear);
  v6 = *MEMORY[0x277D770B0];

  objc_msgSend_removeObserver_name_object_(v4, v5, self, v6, 0);
}

- (void)insertNewRows:(id)rows atIndexPaths:(id)paths withRowAnimation:(int64_t)animation
{
  v55 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, a2, &v50, v54, 16);
  if (v8)
  {
    v11 = v8;
    v12 = 0;
    v13 = *v51;
    animationCopy = animation;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v51 != v13)
      {
        objc_enumerationMutation(paths);
      }

      v15 = *(*(&v50 + 1) + 8 * v14);
      v16 = objc_msgSend_row(v15, v9, v10);
      v24 = objc_msgSend_section(v15, v17, v18);
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager insertNewRows:atIndexPaths:withRowAnimation:]", 800, "section %d  row %d\n", v20, v21, v22, v23, v24);
      }

      v25 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, v19, @"tableSectionArray");
      v28 = objc_msgSend_count(v25, v26, v27);
      if (v24 > v28)
      {
        break;
      }

      if (v24 >= v28)
      {
        v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v37 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v36, v34, @"sectionRows");
        objc_msgSend_addObject_(v25, v38, v37);
        managedTableView = self->_managedTableView;
        v41 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v40, v24);
        objc_msgSend_insertSections_withRowAnimation_(managedTableView, v42, v41, 3);
      }

      else
      {
        v30 = objc_msgSend_objectAtIndex_(v25, v29, v24);
        v34 = objc_msgSend_objectForKey_(v30, v31, @"sectionRows");
        if (!v34)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v30, v35, v34, @"sectionRows");
        }
      }

      if (v16 > objc_msgSend_count(v34, v32, v33) || v12 >= objc_msgSend_count(rows, v43, v44))
      {
        break;
      }

      v46 = objc_msgSend_objectAtIndex_(rows, v45, v12);
      objc_msgSend_insertObject_atIndex_(v34, v47, v46, v16);
      ++v12;
      if (v11 == ++v14)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v9, &v50, v54, 16);
        animation = animationCopy;
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    objc_msgSend_insertRowsAtIndexPaths_withRowAnimation_(self->_managedTableView, v9, paths, animation);
  }
}

- (void)appendNewRow:(id)row forSection:(unint64_t)section
{
  v7 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v10 = objc_msgSend_count(v7, v8, v9);
  if (v10 >= section)
  {
    if (v10 > section)
    {
      v12 = objc_msgSend_objectAtIndex_(v7, v11, section);
      v14 = objc_msgSend_objectForKey_(v12, v13, @"sectionRows");
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v15, v14, @"sectionRows");
      objc_msgSend_addObject_(v7, v17, v16);
      managedTableView = self->_managedTableView;
      v20 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v19, section);
      objc_msgSend_insertSections_withRowAnimation_(managedTableView, v21, v20, 100);
    }

    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager appendNewRow:forSection:]", 800, "appending row to section %d\n", v24, v25, v26, v27, section);
    }

    v28 = MEMORY[0x277CCAA70];
    v29 = objc_msgSend_count(v14, v22, v23);
    v31 = objc_msgSend_indexPathForRow_inSection_(v28, v30, v29, section);
    objc_msgSend_addObject_(v14, v32, row);
    v33 = self->_managedTableView;
    v36 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v34, v31);

    objc_msgSend_insertRowsAtIndexPaths_withRowAnimation_(v33, v35, v36, 100);
  }
}

- (void)updateCellAtIndexPath:(id)path withNewRowInfo:(id)info
{
  infoCopy = info;
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateCellAtIndexPath:withNewRowInfo:]", 800, "\n", v4, v5, v6, v7, infoCopy);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path, infoCopy);
  if (CellDictForCellAtIndexPath)
  {
    v10 = CellDictForCellAtIndexPath;
    v11 = objc_msgSend_objectForKey_(v35, v9, @"representedObject");
    if (v11)
    {
      objc_msgSend_setObject_forKey_(v10, v12, v11, @"representedObject");
    }

    v38 = objc_msgSend_objectForKey_(v35, v12, @"items");
    v15 = objc_msgSend_count(v38, v13, v14);
    if (v15)
    {
      v17 = v15;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = objc_msgSend_objectAtIndex_(v38, v16, v21);
        v24 = objc_msgSend_objectForKey_(v22, v23, @"itemType");
        if (objc_msgSend_isEqualToString_(v24, v25, @"editTextView"))
        {
          v26 = objc_msgSend_objectForKey_(v35, v16, @"tag");
          if (objc_msgSend_integerValue(v26, v27, v28) != 1987203160)
          {
            v30 = v20 + 1;
            v29 = v19;
            v31 = v18;
            goto LABEL_17;
          }
        }

        if (objc_msgSend_isEqualToString_(v24, v16, @"labelView"))
        {
          break;
        }

        if (objc_msgSend_isEqualToString_(v24, v16, @"multilineLabelView"))
        {
          v31 = v18 + 1;
          v30 = v20;
          v29 = v19;
          v20 = v18;
          goto LABEL_17;
        }

LABEL_18:
        if (v17 == ++v21)
        {
          return;
        }
      }

      v29 = v19 + 1;
      v30 = v20;
      v31 = v18;
      v20 = v19;
LABEL_17:
      v32 = objc_msgSend_objectForKey_(v22, v16, @"startValue");
      objc_msgSend_setValue_forItemOfType_atItemTypeIndex_inCellAtIndexPath_(self, v33, v32, v24, v20, path);
      v18 = v31;
      v19 = v29;
      v20 = v30;
      goto LABEL_18;
    }
  }
}

- (BOOL)isCellAtIndexPath:(id)path identicalToNewRow:(id)row
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager isCellAtIndexPath:identicalToNewRow:]", 800, "\n", v4, v5, v6, v7, v49);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (CellDictForCellAtIndexPath)
  {
    v13 = CellDictForCellAtIndexPath;
    v14 = objc_msgSend_objectForKey_(row, v12, @"representedObject");
    v18 = objc_msgSend_objectForKey_(v13, v15, @"representedObject");
    LOBYTE(CellDictForCellAtIndexPath) = 0;
    if (v14)
    {
      if (v18)
      {
        CellDictForCellAtIndexPath = objc_msgSend_delegate(self, v16, v17);
        if (CellDictForCellAtIndexPath)
        {
          objc_msgSend_delegate(self, v19, v20);
          if (objc_opt_respondsToSelector())
          {
            v23 = objc_msgSend_delegate(self, v21, v22);
            LODWORD(CellDictForCellAtIndexPath) = objc_msgSend_isRepresentedObject_identicalToRepresentedObject_(v23, v24, v14, v18);
            if (CellDictForCellAtIndexPath)
            {
              v26 = objc_msgSend_objectForKey_(row, v25, @"items");
              v28 = objc_msgSend_objectForKey_(v13, v27, @"items");
              v31 = objc_msgSend_count(v26, v29, v30);
              v35 = objc_msgSend_count(v28, v32, v33);
              LOBYTE(CellDictForCellAtIndexPath) = 1;
              if (v31 == v35)
              {
                v36 = v31 - 1;
                if (v31 >= 1)
                {
                  v37 = 0;
                  do
                  {
                    v38 = objc_msgSend_objectAtIndex_(v26, v34, v37);
                    v40 = objc_msgSend_objectForKey_(v38, v39, @"itemType");
                    v42 = objc_msgSend_objectAtIndex_(v28, v41, v37);
                    v44 = objc_msgSend_objectForKey_(v42, v43, @"itemType");
                    isEqualToString = objc_msgSend_isEqualToString_(v40, v45, v44);
                    LOBYTE(CellDictForCellAtIndexPath) = 1;
                    if (!isEqualToString)
                    {
                      break;
                    }
                  }

                  while (v36 != v37++);
                }
              }
            }
          }

          else
          {
            LOBYTE(CellDictForCellAtIndexPath) = 0;
          }
        }
      }
    }
  }

  return CellDictForCellAtIndexPath;
}

- (BOOL)updateRowAtIndexPath:(id)path withNewRowInfo:(id)info
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    v7 = objc_msgSend_section(path, a2, path);
    objc_msgSend_row(path, v8, v9);
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateRowAtIndexPath:withNewRowInfo:]", 800, "section %d  row %d\n", v10, v11, v12, v13, v7);
  }

  isCellAtIndexPath_identicalToNewRow = objc_msgSend_isCellAtIndexPath_identicalToNewRow_(self, a2, path, info);
  if (isCellAtIndexPath_identicalToNewRow)
  {
    objc_msgSend_updateCellAtIndexPath_withNewRowInfo_(self, v14, path, info);
  }

  return isCellAtIndexPath_identicalToNewRow;
}

- (void)updateSectionDataInIdenticalTable:(id)table
{
  v35 = *MEMORY[0x277D85DE8];
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateSectionDataInIdenticalTable:]", 800, "\n", v3, v4, v5, v6, v21);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(table, a2, &v29, v34, 16);
  if (v24)
  {
    v9 = 0;
    v23 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(table);
        }

        v11 = objc_msgSend_objectForKey_(*(*(&v29 + 1) + 8 * i), v8, @"sectionRows");
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v33, 16);
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              v19 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v8, v15, v9);
              objc_msgSend_updateCellAtIndexPath_withNewRowInfo_(self, v20, v19, v18);
              ++v15;
            }

            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v8, &v25, v33, 16);
          }

          while (v14);
        }

        ++v9;
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(table, v8, &v29, v34, 16);
    }

    while (v24);
  }
}

- (BOOL)checkIfSectionDataSameInTable:(id)table
{
  tableCopy = table;
  v55 = *MEMORY[0x277D85DE8];
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager checkIfSectionDataSameInTable:]", 800, "\n", v3, v4, v5, v6, v41);
  }

  v9 = objc_msgSend_count(tableCopy, a2, table);
  v12 = objc_msgSend_managedTableView(self, v10, v11);
  if (v9 == objc_msgSend_numberOfSections(v12, v13, v14))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(tableCopy, v15, &v49, v54, 16);
    if (!v16)
    {
      LOBYTE(isCellAtIndexPath_identicalToNewRow) = 1;
      return isCellAtIndexPath_identicalToNewRow;
    }

    v18 = v16;
    v19 = 0;
    v20 = *v50;
    v42 = *v50;
    v43 = tableCopy;
LABEL_8:
    v21 = 0;
    v44 = v18;
    while (1)
    {
      if (*v50 != v20)
      {
        objc_enumerationMutation(tableCopy);
      }

      v22 = objc_msgSend_objectForKey_(*(*(&v49 + 1) + 8 * v21), v17, @"sectionRows");
      v25 = objc_msgSend_count(v22, v23, v24);
      v28 = objc_msgSend_managedTableView(self, v26, v27);
      if (v25 != objc_msgSend_numberOfRowsInSection_(v28, v29, v19))
      {
        break;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v30, &v45, v53, 16);
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v46;
LABEL_14:
        v35 = 0;
        while (1)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v22);
          }

          v36 = *(*(&v45 + 1) + 8 * v35);
          v37 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v17, v33, v19);
          isCellAtIndexPath_identicalToNewRow = objc_msgSend_isCellAtIndexPath_identicalToNewRow_(self, v38, v37, v36);
          if (!isCellAtIndexPath_identicalToNewRow)
          {
            return isCellAtIndexPath_identicalToNewRow;
          }

          ++v33;
          if (v32 == ++v35)
          {
            v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v17, &v45, v53, 16);
            if (v32)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      ++v19;
      ++v21;
      tableCopy = v43;
      v20 = v42;
      if (v21 == v44)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v17, &v49, v54, 16);
        LOBYTE(isCellAtIndexPath_identicalToNewRow) = 1;
        if (v18)
        {
          goto LABEL_8;
        }

        return isCellAtIndexPath_identicalToNewRow;
      }
    }
  }

  LOBYTE(isCellAtIndexPath_identicalToNewRow) = 0;
  return isCellAtIndexPath_identicalToNewRow;
}

- (BOOL)updateSectionsIfMatchingExisting:(id)existing
{
  if (dword_27E382DC8 <= 800 && (dword_27E382DC8 != -1 || sub_23EB74AC8(&dword_27E382DC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382DC8, "[TableViewManager updateSectionsIfMatchingExisting:]", 800, "\n", v3, v4, v5, v6, v12);
  }

  v10 = objc_msgSend_checkIfSectionDataSameInTable_(self, a2, existing);
  if (v10)
  {
    objc_msgSend_updateSectionDataInIdenticalTable_(self, v9, existing);
  }

  return v10;
}

- (void)deleteRowsAtIndexPaths:(id)paths withRowAnimation:(int64_t)animation
{
  v127 = *MEMORY[0x277D85DE8];
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v5 = objc_msgSend_managedTableView(self, a2, paths);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteRowsAtIndexPaths:withRowAnimation:]", 800, "managedTableView %@\n", v6, v7, v8, v9, v5);
  }

  selfCopy = self;
  if (objc_msgSend_count(paths, a2, paths))
  {
    v11 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, v10, @"tableSectionArray");
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v12, &v120, v126, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v121;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v121 != v17)
        {
          objc_enumerationMutation(paths);
        }

        v19 = *(*(&v120 + 1) + 8 * v18);
        v20 = objc_msgSend_row(v19, v14, v15);
        v23 = objc_msgSend_section(v19, v21, v22);
        if (v23 >= objc_msgSend_count(v11, v24, v25))
        {
          break;
        }

        v27 = objc_msgSend_objectAtIndex_(v11, v26, v23);
        v29 = objc_msgSend_objectForKey_(v27, v28, @"sectionRows");
        if (v20 >= objc_msgSend_count(v29, v30, v31))
        {
          break;
        }

        if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C88, "[TableViewManager deleteRowsAtIndexPaths:withRowAnimation:]", 800, "row %d in section %d valid to delete\n", v32, v33, v34, v35, v20);
        }

        if (v16 == ++v18)
        {
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v14, &v120, v126, 16);
          if (v16)
          {
            goto LABEL_8;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v14, paths);
      objc_msgSend_sortUsingSelector_(v36, v37, sel_compare_);
      if (objc_msgSend_count(v36, v38, v39))
      {
        v42 = objc_msgSend_array(MEMORY[0x277CBEB18], v40, v41);
        v111 = objc_msgSend_array(MEMORY[0x277CBEB18], v43, v44);
        v46 = objc_msgSend_objectAtIndex_(v36, v45, 0);
        v49 = objc_msgSend_section(v46, v47, v48);
        v51 = objc_msgSend_objectAtIndex_(v11, v50, v49);
        v53 = objc_msgSend_objectForKey_(v51, v52, @"sectionRows");
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v54, &v116, v125, 16);
        if (v55)
        {
          v58 = v55;
          v59 = *v117;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v117 != v59)
              {
                objc_enumerationMutation(v36);
              }

              v61 = *(*(&v116 + 1) + 8 * i);
              if (objc_msgSend_section(v61, v56, v57) == v49)
              {
                v64 = objc_msgSend_row(v61, v62, v63);
                v66 = objc_msgSend_objectAtIndex_(v53, v65, v64);
                objc_msgSend_addObject_(v42, v67, v66);
              }

              else
              {
                objc_msgSend_removeObjectsInArray_(v53, v62, v42);
                v69 = objc_msgSend_objectAtIndex_(v11, v68, v49);
                v71 = objc_msgSend_objectForKey_(v69, v70, @"rowsOKToBeEmpty");
                v74 = objc_msgSend_BOOLValue(v71, v72, v73);
                if (!objc_msgSend_count(v53, v75, v76) && (v74 & 1) == 0)
                {
                  objc_msgSend_addObject_(v111, v77, v69);
                }

                objc_msgSend_removeAllObjects(v42, v77, v78);
                v49 = objc_msgSend_section(v61, v79, v80);
                v82 = objc_msgSend_objectAtIndex_(v11, v81, v49);
                v53 = objc_msgSend_objectForKey_(v82, v83, @"sectionRows");
              }
            }

            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v56, &v116, v125, 16);
          }

          while (v58);
        }

        if (objc_msgSend_count(v42, v56, v57))
        {
          objc_msgSend_removeObjectsInArray_(v53, v84, v42);
          v86 = objc_msgSend_objectAtIndex_(v11, v85, v49);
          v88 = objc_msgSend_objectForKey_(v86, v87, @"rowsOKToBeEmpty");
          v91 = objc_msgSend_BOOLValue(v88, v89, v90);
          if (!objc_msgSend_count(v53, v92, v93) && (v91 & 1) == 0)
          {
            v94 = objc_msgSend_objectAtIndex_(v11, v84, v49);
            objc_msgSend_addObject_(v111, v95, v94);
          }
        }

        objc_msgSend_deleteRowsAtIndexPaths_withRowAnimation_(selfCopy->_managedTableView, v84, paths, animation);
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v96, &v112, v124, 16);
        if (v97)
        {
          v99 = v97;
          v100 = *v113;
          do
          {
            for (j = 0; j != v99; ++j)
            {
              if (*v113 != v100)
              {
                objc_enumerationMutation(v111);
              }

              v102 = objc_msgSend_indexOfObject_(v11, v98, *(*(&v112 + 1) + 8 * j));
              if (v102 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v103 = v102;
                objc_msgSend_removeObjectAtIndex_(v11, v98, v102);
                managedTableView = selfCopy->_managedTableView;
                v106 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v105, v103);
                objc_msgSend_deleteSections_withRowAnimation_(managedTableView, v107, v106, animation);
              }
            }

            v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v98, &v112, v124, 16);
          }

          while (v99);
        }
      }
    }
  }
}

- (void)deleteRowInSection:(unint64_t)section withTag:(int64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, section);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteRowInSection:withTag:]", 800, "managedTableView %@\n", v8, v9, v10, v11, v7);
  }

  v12 = objc_msgSend_indexPathOfCellWithTag_(self, a2, tag);
  if (v12)
  {
    v15 = v12;
    if (objc_msgSend_section(v12, v13, v14) == section)
    {
      v18 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v16, v15);

      objc_msgSend_deleteRowsAtIndexPaths_withRowAnimation_(self, v17, v18, 100);
    }
  }
}

- (void)cleanTableViewForReuse
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v4 = objc_msgSend_managedTableView(self, a2, v2);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager cleanTableViewForReuse]", 800, "managedTableView %@\n", v5, v6, v7, v8, v4);
  }

  v9 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  if (objc_msgSend_count(v9, v10, v11))
  {
    v14 = objc_msgSend_areAnimationsEnabled(MEMORY[0x277D75D18], v12, v13);
    objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v15, 0);
    objc_msgSend_endEditing(self, v16, v17);
    v18 = MEMORY[0x277CCAA78];
    v21 = objc_msgSend_count(v9, v19, v20);
    v23 = objc_msgSend_indexSetWithIndexesInRange_(v18, v22, 0, v21);
    objc_msgSend_deleteSections_withRowAnimation_(self, v24, v23, 5);
    v26 = MEMORY[0x277D75D18];

    objc_msgSend_setAnimationsEnabled_(v26, v25, v14);
  }
}

- (void)deleteAllRowsInSectionCore:(unint64_t)core
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v5 = objc_msgSend_managedTableView(self, a2, core);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager deleteAllRowsInSectionCore:]", 800, "managedTableView %@\n", v6, v7, v8, v9, v5);
  }

  v10 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  if (objc_msgSend_count(v10, v11, v12) > core)
  {
    v14 = objc_msgSend_objectAtIndex_(v10, v13, core);
    v16 = objc_msgSend_objectForKey_(v14, v15, @"sectionRows");

    objc_msgSend_removeAllObjects(v16, v17, v18);
  }
}

- (void)deleteAllRowsInSection:(unint64_t)section
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager deleteAllRowsInSection:]", 800, "attempting to delete everything in section %d\n", v3, v4, v5, v6, section);
  }

  objc_msgSend_deleteAllRowsInSectionCore_(self, a2, section);

  MEMORY[0x2821F9670](self, sel_reloadSection_, section);
}

- (void)deleteSections:(id)sections withRowAnimation:(int64_t)animation
{
  v7 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v10 = objc_msgSend_count(v7, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23EBF366C;
  v13[3] = &unk_278C693D0;
  v13[5] = v7;
  v13[6] = v10;
  v13[4] = self;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(sections, v11, 2, v13);
  objc_msgSend_deleteSections_withRowAnimation_(self->_managedTableView, v12, sections, animation);
}

- (void)recordInitialSelectedMenuItemsForNewSection:(int64_t)section
{
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, a2, section);
  if (SectionDictForSection)
  {
    v6 = SectionDictForSection;
    v7 = objc_msgSend_objectForKey_(SectionDictForSection, v5, @"sectionIsMenu");
    if (objc_msgSend_BOOLValue(v7, v8, v9))
    {
      v11 = objc_msgSend_objectForKey_(v6, v10, @"sectionRows");
      if (v11)
      {
        v13 = v11;
        v14 = objc_msgSend_objectForKey_(v6, v12, @"selectedMenuItemIndexSet");
        v16 = objc_msgSend_objectForKey_(v6, v15, @"selectedMenuItemTag");
        if (v14)
        {
          Index = objc_msgSend_firstIndex(v14, v17, v18);
          if (Index != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = Index; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_indexGreaterThanIndex_(v14, v26, i))
            {
              v22 = objc_msgSend_objectAtIndex_(v13, v20, i);
              v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, 1);
              objc_msgSend_setObject_forKey_(v22, v25, v24, @"menuSelected");
            }
          }
        }

        else if (v16)
        {
          v27 = objc_msgSend_integerValue(v16, v17, v18);
          v29 = objc_msgSend_indexPathOfCellWithTag_(self, v28, v27);
          v32 = objc_msgSend_row(v29, v30, v31);
          v34 = objc_msgSend_objectAtIndex_(v13, v33, v32);
          v37 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v35, 1);

          objc_msgSend_setObject_forKey_(v34, v36, v37, @"menuSelected");
        }
      }
    }
  }
}

- (void)addSectionInfo:(id)info animated:(BOOL)animated
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, info);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager addSectionInfo:animated:]", 800, "managedTableView %@\n", v8, v9, v10, v11, v7);
  }

  v12 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v15 = v12;
  if (animated)
  {
    v17 = objc_msgSend_count(v12, v13, v14);

    objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(self, v16, info, v17, 0);
  }

  else
  {
    objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v13, 0);
    v20 = objc_msgSend_count(v15, v18, v19);
    objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(self, v21, info, v20, 5);
    v23 = MEMORY[0x277D75D18];

    objc_msgSend_setAnimationsEnabled_(v23, v22, 1);
  }
}

- (void)insertSectionInfo:(id)info atIndex:(unint64_t)index withRowAnimation:(int64_t)animation
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager insertSectionInfo:atIndex:withRowAnimation:]", 800, "\n", animation, v5, v6, v7, v23);
  }

  v12 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  if (objc_msgSend_count(v12, v13, v14) <= index)
  {
    objc_msgSend_addObject_(v12, v15, info);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(v12, v15, info, index);
  }

  objc_msgSend_recordInitialSelectedMenuItemsForNewSection_(self, v16, index);
  v19 = objc_msgSend_managedTableView(self, v17, v18);
  v22 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v20, index);

  objc_msgSend_insertSections_withRowAnimation_(v19, v21, v22, animation);
}

- (void)deleteSection:(unint64_t)section
{
  v5 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, section);

  objc_msgSend_deleteSections_withRowAnimation_(self, v4, v5, 0);
}

- (void)deleteSectionWithIdentifier:(id)identifier animated:(BOOL)animated
{
  v6 = objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    if (animated)
    {
      v10 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v7, v6);

      objc_msgSend_deleteSections_withRowAnimation_(self, v9, v10, 0);
    }

    else
    {
      objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v7, 0);
      v12 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v11, v8);
      objc_msgSend_deleteSections_withRowAnimation_(self, v13, v12, 5);
      v15 = MEMORY[0x277D75D18];

      objc_msgSend_setAnimationsEnabled_(v15, v14, 1);
    }
  }
}

- (void)setSectionValue:(id)value forKey:(id)key inSection:(unint64_t)section
{
  v8 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  if (objc_msgSend_count(v8, v9, v10) > section)
  {
    v12 = objc_msgSend_objectAtIndex_(v8, v11, section);

    objc_msgSend_setObject_forKey_(v12, v13, value, key);
  }
}

- (id)commonAddOptionalBasicImage:(id)image withNeighborItem:(id)item toCellItems:(id)items
{
  if (!image)
  {
    return 0;
  }

  v8 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], a2, @"imageView", @"itemType", @"left", @"position", 0);
  objc_msgSend_setObject_forKey_(v8, v9, image, @"startValue");
  if (item)
  {
    objc_msgSend_setValue_forKey_(v8, v10, item, @"neighbor");
    objc_msgSend_setValue_forKey_(v8, v11, @"right", @"position");
  }

  objc_msgSend_addObject_(items, v10, v8);
  return v8;
}

- (id)commonAddOptionalStaticText:(id)text withNeighborItem:(id)item toCellItems:(id)items
{
  v8 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], a2, @"labelView", @"itemType", 0);
  v10 = v8;
  if (text)
  {
    objc_msgSend_setValue_forKey_(v8, v9, text, @"startValue");
  }

  if (item)
  {
    objc_msgSend_setValue_forKey_(v10, v9, item, @"neighbor");
    objc_msgSend_setValue_forKey_(v10, v11, @"right", @"position");
  }

  objc_msgSend_addObject_(items, v9, v10);
  return v10;
}

- (id)createRowStyleBasicWithImage:(id)image text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithImage:text1:text2:withTag:]", 800, "\n", text2, tag, v6, v7, v41);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v14, image, 0, v13);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v16, text1, v15, v13);
  if (text2)
  {
    v18 = objc_alloc(MEMORY[0x277CBEB38]);
    detailTextColor = self->_detailTextColor;
    v22 = objc_msgSend_systemLabelFont(TableViewManager, v20, v21);
    v23 = MEMORY[0x277CCABB0];
    v26 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v24, v25);
    v29 = objc_msgSend_userInterfaceLayoutDirection(v26, v27, v28);
    v31 = objc_msgSend_numberWithInteger_(v23, v30, 2 * (v29 == 0));
    v33 = objc_msgSend_initWithObjectsAndKeys_(v18, v32, @"labelView", @"itemType", detailTextColor, @"color", v22, @"font", v31, @"alignment", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v33, v34, text2, @"startValue");
    objc_msgSend_addObject_(v13, v35, v33);
  }

  v36 = MEMORY[0x277CBEB38];
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag);
  v39 = objc_msgSend_dictionaryWithObjectsAndKeys_(v36, v38, v13, @"items", v37, @"tag", 0);

  return v39;
}

- (id)createRowStyleSubtitleWitImage:(id)image mainText:(id)text subtitleText:(id)subtitleText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWitImage:mainText:subtitleText:withTag:]", 800, "\n", subtitleText, tag, v6, v7, v39);
  }

  if (!text)
  {
    return 0;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v14, image, 0, v13);
  v17 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v16, text, v15, v13);
  objc_msgSend_setValue_forKey_(v17, v18, @"topRight", @"position");
  if (subtitleText)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v24 = objc_msgSend_smallSystemLabelFont(TableViewManager, v22, v23);
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, 4);
    Object = objc_msgSend_lastObject(v13, v27, v28);
    v31 = objc_msgSend_initWithObjectsAndKeys_(v20, v30, @"labelView", @"itemType", subtitleColor, @"color", v24, @"font", v26, @"alignment", Object, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v31, v32, subtitleText, @"startValue");
    objc_msgSend_addObject_(v13, v33, v31);
  }

  v34 = MEMORY[0x277CBEB38];
  v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v19, tag);
  v37 = objc_msgSend_dictionaryWithObjectsAndKeys_(v34, v36, v13, @"items", v35, @"tag", 0);

  return v37;
}

- (id)createRowStyleSubtitleWithRightImage:(id)image subtitleText:(id)text rightImage:(id)rightImage withTag:(unint64_t)tag
{
  tagCopy = tag;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWithRightImage:subtitleText:rightImage:withTag:]", 800, "\n", rightImage, tag, v6, v7, v43);
  }

  if (!image)
  {
    return 0;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  v16 = objc_msgSend_initWithObjectsAndKeys_(v14, v15, @"labelView", @"itemType", image, @"startValue", @"topLeft", @"position", 0);
  objc_msgSend_addObject_(v13, v17, v16);

  if (text)
  {
    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v23 = objc_msgSend_smallSystemLabelFont(TableViewManager, v21, v22);
    v25 = tagCopy;
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, 4);
    v28 = objc_msgSend_objectAtIndex_(v13, v27, 0);
    v44 = v26;
    tagCopy = v25;
    v30 = objc_msgSend_initWithObjectsAndKeys_(v19, v29, @"labelView", @"itemType", subtitleColor, @"color", v23, @"font", v44, @"alignment", v28, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v30, v31, text, @"startValue");
    objc_msgSend_addObject_(v13, v32, v30);
  }

  if (rightImage)
  {
    v33 = objc_alloc(MEMORY[0x277CBEB38]);
    v35 = objc_msgSend_initWithObjectsAndKeys_(v33, v34, @"imageView", @"itemType", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v35, v36, rightImage, @"startValue");
    objc_msgSend_addObject_(v13, v37, v35);
  }

  v38 = MEMORY[0x277CBEB38];
  v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, tagCopy);
  v41 = objc_msgSend_dictionaryWithObjectsAndKeys_(v38, v40, v13, @"items", v39, @"tag", 0);

  return v41;
}

- (id)createRowStyleSubtitleWithRightText:(id)text subtitleText:(id)subtitleText rightText:(id)rightText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSubtitleWithRightText:subtitleText:rightText:withTag:]", 800, "\n", rightText, tag, v6, v7, v41);
  }

  if (!text)
  {
    return 0;
  }

  tagCopy = tag;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  v16 = objc_msgSend_initWithObjectsAndKeys_(v14, v15, @"labelView", @"itemType", text, @"startValue", @"topLeft", @"position", 0);
  objc_msgSend_addObject_(v13, v17, v16);

  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  v20 = objc_msgSend_initWithObjectsAndKeys_(v18, v19, @"labelView", @"itemType", @"right", @"position", rightText, @"startValue", 0);
  objc_msgSend_addObject_(v13, v21, v20);

  if (subtitleText)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB38]);
    subtitleColor = self->_subtitleColor;
    v27 = objc_msgSend_smallSystemLabelFont(TableViewManager, v25, v26);
    v29 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v28, 4);
    v31 = objc_msgSend_objectAtIndex_(v13, v30, 0);
    v33 = objc_msgSend_initWithObjectsAndKeys_(v23, v32, @"labelView", @"itemType", subtitleColor, @"color", v27, @"font", v29, @"alignment", v31, @"neighbor", @"bottomLeft", @"position", 0);
    objc_msgSend_setObject_forKey_(v33, v34, subtitleText, @"startValue");
    objc_msgSend_addObject_(v13, v35, v33);
  }

  v36 = MEMORY[0x277CBEB38];
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, tagCopy);
  v39 = objc_msgSend_dictionaryWithObjectsAndKeys_(v36, v38, v13, @"items", v37, @"tag", 0);

  return v39;
}

- (id)createRowStyleBasicWithText:(id)text centerImage:(id)image text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithText:centerImage:text2:withTag:]", 800, "\n", text2, tag, v6, v7, v41);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, text, 0, v13);
  objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v16, image, v15, v13);
  if (text2)
  {
    v18 = objc_alloc(MEMORY[0x277CBEB38]);
    detailTextColor = self->_detailTextColor;
    v22 = objc_msgSend_systemLabelFont(TableViewManager, v20, v21);
    v23 = MEMORY[0x277CCABB0];
    v26 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v24, v25);
    v29 = objc_msgSend_userInterfaceLayoutDirection(v26, v27, v28);
    v31 = objc_msgSend_numberWithInteger_(v23, v30, 2 * (v29 == 0));
    v33 = objc_msgSend_initWithObjectsAndKeys_(v18, v32, @"labelView", @"itemType", detailTextColor, @"color", v22, @"font", v31, @"alignment", @"right", @"position", 0);
    objc_msgSend_setObject_forKey_(v33, v34, text2, @"startValue");
    objc_msgSend_addObject_(v13, v35, v33);
  }

  v36 = MEMORY[0x277CBEB38];
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag);
  v39 = objc_msgSend_dictionaryWithObjectsAndKeys_(v36, v38, v13, @"items", v37, @"tag", 0);

  return v39;
}

- (id)createRowStyleBasicEditableWithImage:(id)image labelText:(id)text currentValue:(id)value placeholderText:(id)placeholderText isSecure:(BOOL)secure keyboardType:(int64_t)type withTag:(unint64_t)tag
{
  secureCopy = secure;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicEditableWithImage:labelText:currentValue:placeholderText:isSecure:keyboardType:withTag:]", 800, "\n", value, placeholderText, secure, type, v39);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v17, image, 0, v16);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v19, text, v18, v16);
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &stru_285145FE8;
  }

  v21 = objc_alloc(MEMORY[0x277CBEB38]);
  editTextColor = self->_editTextColor;
  v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, 4);
  v26 = objc_msgSend_initWithObjectsAndKeys_(v21, v25, @"editTextView", @"itemType", valueCopy, @"startValue", editTextColor, @"color", @"right", @"position", v24, @"alignment", 0);
  v28 = v26;
  if (placeholderText)
  {
    objc_msgSend_setObject_forKey_(v26, v27, placeholderText, @"placeholder");
  }

  if (secureCopy)
  {
    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, 1);
    objc_msgSend_setObject_forKey_(v28, v30, v29, @"secure");
  }

  if (type)
  {
    v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v27, type);
    objc_msgSend_setObject_forKey_(v28, v32, v31, @"keyboardType");
  }

  objc_msgSend_addObject_(v16, v27, v28);

  v33 = MEMORY[0x277CBEB38];
  v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, tag);
  v37 = objc_msgSend_dictionaryWithObjectsAndKeys_(v33, v36, v16, @"items", v35, @"tag", 0);

  return v37;
}

- (id)createRowStyleBasicOnOffWithImage:(id)image labelText:(id)text isOn:(BOOL)on withTag:(unint64_t)tag
{
  onCopy = on;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicOnOffWithImage:labelText:isOn:withTag:]", 800, "\n", on, tag, v6, v7, v29);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_commonAddOptionalBasicImage_withNeighborItem_toCellItems_(self, v14, image, 0, v13);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v16, text, v15, v13);
  v17 = objc_alloc(MEMORY[0x277CBEB38]);
  v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, onCopy);
  v21 = objc_msgSend_initWithObjectsAndKeys_(v17, v20, @"switchView", @"itemType", @"right", @"position", v19, @"startValue", 0);
  objc_msgSend_addObject_(v13, v22, v21);

  v23 = MEMORY[0x277CBEB38];
  v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, tag);
  v27 = objc_msgSend_dictionaryWithObjectsAndKeys_(v23, v26, v13, @"items", v25, @"tag", 0);

  return v27;
}

- (id)createRowStyleBasicWholeCellButton:(id)button withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWholeCellButton:withTag:]", 800, "\n", v4, v5, v6, v7, v23);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc(MEMORY[0x277CBEB38]);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, 1);
  v15 = objc_msgSend_initWithObjectsAndKeys_(v11, v14, @"wholeCellButtonView", @"itemType", button, @"startValue", @"center", @"position", v13, @"alignment", 0);
  objc_msgSend_addObject_(v10, v16, v15);

  v17 = MEMORY[0x277CBEB38];
  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v18, tag);
  v21 = objc_msgSend_dictionaryWithObjectsAndKeys_(v17, v20, v10, @"items", v19, @"tag", 0);

  return v21;
}

- (id)createRowStyleBasicButtons:(id)buttons title2:(id)title2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicButtons:title2:withTag:]", 800, "\n", tag, v5, v6, v7, v28);
  }

  if (!buttons)
  {
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v14 = objc_msgSend_initWithObjectsAndKeys_(v12, v13, @"buttonView", @"itemType", buttons, @"startValue", 0);
  v16 = v14;
  if (title2)
  {
    objc_msgSend_addObject_(v11, v15, v14);

    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    v16 = objc_msgSend_initWithObjectsAndKeys_(v17, v18, @"buttonView", @"itemType", title2, @"startValue", @"right", @"position", 0);
  }

  else
  {
    objc_msgSend_setObject_forKey_(v14, v15, @"center", @"position");
  }

  objc_msgSend_addObject_(v11, v19, v16);

  v21 = MEMORY[0x277CBEB38];
  v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, tag);
  v25 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v24, 1);
  v27 = objc_msgSend_dictionaryWithObjectsAndKeys_(v21, v26, v11, @"items", v23, @"tag", v25, @"noBackground", 0);

  return v27;
}

- (id)createRowStyleTitledStaticMultiline:(id)multiline titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledStaticMultiline:titleImage:bodyText:withTag:]", 800, "\n", text, tag, v6, v7, v51);
  }

  if (!multiline || !text)
  {
    return 0;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, multiline, 0, v13);
  objc_msgSend_setObject_forKey_(v15, v16, @"topLeft", @"position");
  if (image)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    v19 = objc_msgSend_objectAtIndex_(v13, v18, 0);
    v21 = objc_msgSend_initWithObjectsAndKeys_(v17, v20, @"imageView", @"itemType", @"right", @"position", v19, @"neighbor", 0);
    objc_msgSend_setObject_forKey_(v21, v22, image, @"startValue");
    objc_msgSend_addObject_(v13, v23, v21);
  }

  v24 = objc_alloc(MEMORY[0x277CBEB38]);
  detailTextColor = self->_detailTextColor;
  v28 = objc_msgSend_systemLabelFont(TableViewManager, v26, v27);
  v30 = objc_msgSend_objectAtIndex_(v13, v29, 0);
  v31 = MEMORY[0x277CCABB0];
  v34 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v32, v33);
  v37 = objc_msgSend_userInterfaceLayoutDirection(v34, v35, v36);
  v39 = objc_msgSend_numberWithInteger_(v31, v38, 2 * (v37 == 0));
  v41 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v40, 1);
  v43 = objc_msgSend_initWithObjectsAndKeys_(v24, v42, @"multilineLabelView", @"itemType", text, @"startValue", detailTextColor, @"color", v28, @"font", v30, @"neighbor", @"right", @"position", v39, @"alignment", v41, @"canCopy", 0);
  objc_msgSend_addObject_(v13, v44, v43);

  v45 = MEMORY[0x277CBEB38];
  v47 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v46, tag);
  v49 = objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v48, v13, @"items", v47, @"tag", 0);

  return v49;
}

- (id)createRowStyleTitledParagraph:(id)paragraph titleImage:(id)image bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledParagraph:titleImage:bodyText:withTag:]", 800, "\n", text, tag, v6, v7, v40);
  }

  if (!paragraph || !text)
  {
    return 0;
  }

  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, paragraph);
  v15 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v14, paragraph, 0, v13);
  objc_msgSend_setObject_forKey_(v15, v16, @"topLeft", @"position");
  if (image)
  {
    v19 = MEMORY[0x277CBEB38];
    v20 = objc_msgSend_objectAtIndex_(v13, v17, 0);
    v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v19, v21, @"imageView", @"itemType", @"right", @"position", v20, @"neighbor", 0);
    objc_msgSend_setObject_forKey_(v22, v23, image, @"startValue");
    objc_msgSend_addObject_(v13, v24, v22);
  }

  v25 = MEMORY[0x277CBEB38];
  detailTextColor = self->_detailTextColor;
  v27 = objc_msgSend_systemLabelFont(TableViewManager, v17, v18);
  v29 = objc_msgSend_objectAtIndex_(v13, v28, 0);
  v31 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v30, 1);
  v33 = objc_msgSend_dictionaryWithObjectsAndKeys_(v25, v32, @"multilineLabelView", @"itemType", text, @"startValue", detailTextColor, @"color", v27, @"font", v29, @"neighbor", @"bottomLeft", @"position", v31, @"canCopy", 0);
  objc_msgSend_addObject_(v13, v34, v33);
  v35 = MEMORY[0x277CBEB38];
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, tag);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v35, v38, v13, @"items", v37, @"tag", 0);
}

- (id)createRowStyleTitledParagraphWithLeftImage:(id)image title:(id)title bodyText:(id)text withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleTitledParagraphWithLeftImage:title:bodyText:withTag:]", 800, "\n", text, tag, v6, v7, v36);
  }

  if (!title || !text)
  {
    return 0;
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (image)
  {
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    image = objc_msgSend_initWithObjectsAndKeys_(v15, v16, @"imageView", @"itemType", @"topLeft", @"position", image, @"startValue", 0);
    objc_msgSend_addObject_(v14, v17, image);
  }

  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v13, title, image, v14);
  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  detailTextColor = self->_detailTextColor;
  v22 = objc_msgSend_systemLabelFont(TableViewManager, v20, v21);
  v24 = objc_msgSend_objectAtIndex_(v14, v23, 0);
  v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, 1);
  v28 = objc_msgSend_initWithObjectsAndKeys_(v18, v27, @"multilineLabelView", @"itemType", text, @"startValue", detailTextColor, @"color", v22, @"font", v24, @"neighbor", @"bottomLeft", @"position", v26, @"canCopy", 0);
  objc_msgSend_addObject_(v14, v29, v28);

  v30 = MEMORY[0x277CBEB38];
  v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, tag);
  v34 = objc_msgSend_dictionaryWithObjectsAndKeys_(v30, v33, v14, @"items", v32, @"tag", 0);

  return v34;
}

- (id)createRowStyleSegmentedControlWithItems:(id)items selectedSegmentIndex:(id)index enabled:(BOOL)enabled withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleSegmentedControlWithItems:selectedSegmentIndex:enabled:withTag:]", 800, "\n", enabled, tag, v6, v7, v24);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v14 = objc_msgSend_initWithObjectsAndKeys_(v12, v13, @"segmentedControlView", @"itemType", items, @"segmentedControlItems", index, @"startValue", @"center", @"position", 0);
  objc_msgSend_addObject_(v11, v15, v14);

  v16 = MEMORY[0x277CBEB38];
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, tag);
  v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v19, 1);
  v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v16, v21, v11, @"items", v18, @"tag", v20, @"noBackground", 0);

  return v22;
}

- (id)createRowStyleProgressViewWithCancelAndStatus:(id)status statusText:(id)text altText:(id)altText withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleProgressViewWithCancelAndStatus:statusText:altText:withTag:]", 800, "\n", altText, tag, v6, v7, v62);
  }

  if (!status || !text)
  {
    return 0;
  }

  altTextCopy = altText;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v13, @"progressView", @"itemType", status, @"startValue", @"top", @"position", 0);
  if (sub_23EC132F8(v14, v15, v16))
  {
    v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v17, 15);
    objc_msgSend_setObject_forKey_(v14, v19, v18, @"edgeInset");
  }

  objc_msgSend_addObject_(v12, v17, v14);
  v20 = MEMORY[0x277CBEB38];
  v22 = objc_msgSend_objectAtIndex_(v12, v21, 0);
  v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v20, v23, @"buttonView", @"itemType", @"UITextFieldClearButton", @"buttonImage", @"UITextFieldClearButtonPressed", @"buttonSelectedImage", &stru_285145FE8, @"startValue", v22, @"neighbor", @"right", @"position", 0);
  objc_msgSend_addObject_(v12, v25, v24);
  v26 = objc_alloc(MEMORY[0x277CBEB38]);
  v28 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, 0);
  v31 = objc_msgSend_smallSystemLabelFont(TableViewManager, v29, v30);
  v33 = objc_msgSend_objectAtIndex_(v12, v32, 0);
  v35 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, 1);
  v37 = objc_msgSend_initWithObjectsAndKeys_(v26, v36, @"multilineLabelView", @"itemType", v28, @"lineCount", v31, @"font", v33, @"neighbor", v35, @"alignment", @"bottom", @"position", 0);
  objc_msgSend_setObject_forKey_(v37, v38, text, @"startValue");
  objc_msgSend_addObject_(v12, v39, v37);

  if (altTextCopy)
  {
    v41 = objc_alloc(MEMORY[0x277CBEB38]);
    v43 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v42, 0);
    v46 = objc_msgSend_smallSystemLabelFont(TableViewManager, v44, v45);
    v48 = objc_msgSend_objectAtIndex_(v12, v47, 2);
    v50 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v49, 1);
    v52 = objc_msgSend_initWithObjectsAndKeys_(v41, v51, @"multilineLabelView", @"itemType", v43, @"lineCount", v46, @"font", v48, @"neighbor", v50, @"alignment", @"bottom", @"position", 0);
    objc_msgSend_setObject_forKey_(v52, v53, altTextCopy, @"startValue");
    objc_msgSend_addObject_(v12, v54, v52);
  }

  v55 = MEMORY[0x277CBEB38];
  v56 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v40, tag);
  v58 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v57, 1);
  v60 = objc_msgSend_dictionaryWithObjectsAndKeys_(v55, v59, v12, @"items", v56, @"tag", v58, @"noBackground", 0);

  return v60;
}

- (id)createRowStyleActivityStatus:(BOOL)status text1:(id)text1 grayedText1:(BOOL)grayedText1 text2:(id)text2 grayedText2:(BOOL)grayedText2 withTag:(unint64_t)tag
{
  grayedText2Copy = grayedText2;
  grayedText1Copy = grayedText1;
  statusCopy = status;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleActivityStatus:text1:grayedText1:text2:grayedText2:withTag:]", 800, "\n", grayedText1, text2, grayedText2, tag, v50);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v15, text1, 0, v14);
  if (grayedText1Copy)
  {
    objc_msgSend_setObject_forKey_(v16, v17, self->_subtitleColor, @"color");
  }

  v18 = MEMORY[0x277CBEB38];
  v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v17, statusCopy);
  v21 = objc_msgSend_dictionaryWithObjectsAndKeys_(v18, v20, @"activityView", @"itemType", v19, @"startValue", @"right", @"position", 0);
  objc_msgSend_addObject_(v14, v22, v21);
  v25 = MEMORY[0x277CBEB38];
  v26 = 72;
  if (grayedText2Copy)
  {
    v26 = 96;
  }

  v27 = *(&self->super.isa + v26);
  v28 = objc_msgSend_systemLabelFont(TableViewManager, v23, v24);
  v29 = MEMORY[0x277CCABB0];
  v32 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v30, v31);
  v35 = objc_msgSend_userInterfaceLayoutDirection(v32, v33, v34);
  v37 = objc_msgSend_numberWithInteger_(v29, v36, 2 * (v35 == 0));
  v39 = objc_msgSend_objectAtIndex_(v14, v38, 1);
  v41 = objc_msgSend_dictionaryWithObjectsAndKeys_(v25, v40, @"labelView", @"itemType", v27, @"color", v28, @"font", v37, @"alignment", v39, @"neighbor", @"left", @"position", 0);
  v43 = v41;
  if (text2)
  {
    objc_msgSend_setObject_forKey_(v41, v42, text2, @"startValue");
  }

  objc_msgSend_addObject_(v14, v42, v43);
  v44 = MEMORY[0x277CBEB38];
  v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v45, tag);
  v48 = objc_msgSend_dictionaryWithObjectsAndKeys_(v44, v47, v14, @"items", v46, @"tag", 0);

  return v48;
}

- (id)createRowStyleDatePicker:(id)picker minimumDate:(id)date maximumDate:(id)maximumDate withMode:(int64_t)mode withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleDatePicker:minimumDate:maximumDate:withMode:withTag:]", 800, "\n", maximumDate, mode, tag, v7, v27);
  }

  if (!picker)
  {
    return 0;
  }

  v13 = MEMORY[0x277CBEB38];
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, mode);
  v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(v13, v15, @"datePicker", @"itemType", picker, @"startValue", v14, @"datePickerMode", @"top", @"position", 0);
  v19 = v16;
  if (date)
  {
    objc_msgSend_setObject_forKey_(v16, v17, date, @"minValue");
  }

  if (maximumDate)
  {
    objc_msgSend_setObject_forKey_(v19, v17, maximumDate, @"maxValue");
  }

  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18);
  objc_msgSend_addObject_(v20, v21, v19);
  v22 = MEMORY[0x277CBEB38];
  v24 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v23, tag);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v22, v25, v20, @"items", v24, @"tag", 0);
}

- (id)createRowStyleBasicWithUnreadBubble:(unint64_t)bubble text1:(id)text1 text2:(id)text2 withTag:(unint64_t)tag
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager createRowStyleBasicWithUnreadBubble:text1:text2:withTag:]", 800, "\n", text2, tag, v6, v7, v45);
  }

  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, bubble);
  objc_msgSend_commonAddOptionalStaticText_withNeighborItem_toCellItems_(self, v13, text1, 0, v12);
  v14 = MEMORY[0x277CBEB38];
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, bubble);
  v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v17, @"unreadBubbleCount", @"itemType", v16, @"startValue", @"right", @"position", 0);
  objc_msgSend_addObject_(v12, v19, v18);
  v20 = MEMORY[0x277CBEB38];
  detailTextColor = self->_detailTextColor;
  v24 = objc_msgSend_systemLabelFont(TableViewManager, v22, v23);
  v25 = MEMORY[0x277CCABB0];
  v28 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v26, v27);
  v31 = objc_msgSend_userInterfaceLayoutDirection(v28, v29, v30);
  v33 = objc_msgSend_numberWithInteger_(v25, v32, 2 * (v31 == 0));
  v35 = objc_msgSend_objectAtIndex_(v12, v34, 1);
  v37 = objc_msgSend_dictionaryWithObjectsAndKeys_(v20, v36, @"labelView", @"itemType", detailTextColor, @"color", v24, @"font", v33, @"alignment", v35, @"neighbor", @"left", @"position", 0);
  v39 = v37;
  if (text2)
  {
    objc_msgSend_setObject_forKey_(v37, v38, text2, @"startValue");
  }

  objc_msgSend_addObject_(v12, v38, v39);
  v40 = MEMORY[0x277CBEB38];
  v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, tag);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v40, v43, v12, @"items", v42, @"tag", 0);
}

- (unint64_t)findAndSetItemObject:(id)object toValue:(id)value inCellWithInternalRowSectionTagValue:(unint64_t)tagValue
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = tagValue >> 16;
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, tagValue);
  if (v7 >= objc_msgSend_count(RowArrayForSection, v9, v10))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = objc_msgSend_objectAtIndex_(RowArrayForSection, v11, v7);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = objc_msgSend_objectForKey_(v12, v13, @"items");
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v29, v33, 16);
  if (!v16)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = v16;
  v23 = 0;
  v24 = *v30;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v30 != v24)
      {
        objc_enumerationMutation(v14);
      }

      v26 = *(*(&v29 + 1) + 8 * i);
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager findAndSetItemObject:toValue:inCellWithInternalRowSectionTagValue:]", 800, "curItem %@\n", v18, v19, v20, v21, v26);
      }

      if (objc_msgSend_objectForKey_(v26, v17, @"cachedView") == object)
      {
        if (value)
        {
          objc_msgSend_setObject_forKey_(v26, v27, value, @"currentValue");
        }

        return v23;
      }

      objc_opt_class();
      v23 += objc_opt_isKindOfClass() & 1;
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v29, v33, 16);
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (v22)
    {
      continue;
    }

    break;
  }

  return result;
}

- (id)getInfoForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_objectForKey_(cell, a2, @"items", 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_objectForKey_(v15, v10, @"itemType") == type)
        {
          if (v12 == index)
          {
            return v15;
          }

          ++v12;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
    }

    while (v11);
  }

  return 0;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCell:(id)cell
{
  result = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, a2, type, index, cell);
  if (result)
  {
    v7 = result;
    result = objc_msgSend_objectForKey_(result, v6, @"currentValue");
    if (!result)
    {

      return objc_msgSend_objectForKey_(v7, v8, @"startValue");
    }
  }

  return result;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path
{
  result = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (result)
  {

    return objc_msgSend_getValueForItemOfType_atItemTypeIndex_inCell_(self, v9, type, index, result);
  }

  return result;
}

- (id)getValueForItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v38, 16);
  if (result)
  {
    v13 = result;
    selfCopy = self;
    typeCopy = type;
    indexCopy = index;
    v14 = *v34;
    v25 = *v34;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v34 != v14)
      {
        objc_enumerationMutation(v9);
      }

      result = objc_msgSend_objectForKey_(*(*(&v33 + 1) + 8 * v15), v12, @"sectionRows", v25);
      if (!result)
      {
        break;
      }

      v17 = result;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v16, &v29, v37, 16);
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v29 + 1) + 8 * i);
            v23 = objc_msgSend_objectForKey_(v22, v12, @"tag");
            if (v23 && objc_msgSend_integerValue(v23, v12, v24) == tag)
            {
              return objc_msgSend_getValueForItemOfType_atItemTypeIndex_inCell_(selfCopy, v12, typeCopy, indexCopy, v22);
            }
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v12, &v29, v37, 16);
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      ++v15;
      v14 = v25;
      if (v15 == v13)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v33, v38, 16);
        result = 0;
        if (v13)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (void)setValue:(id)value forItem:(id)item
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItem:]", 800, "\n", v4, v5, v6, v7, v26);
  }

  v12 = objc_msgSend_objectForKey_(item, a2, @"itemType");
  if (value)
  {
    objc_msgSend_setObject_forKey_(item, v11, value, @"startValue");
    objc_msgSend_setObject_forKey_(item, v13, value, @"currentValue");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(item, v11, @"currentValue");
    objc_msgSend_removeObjectForKey_(item, v15, @"startValue");
  }

  v16 = objc_msgSend_objectForKey_(item, v14, @"cachedView");
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCACA8];
      Letter = objc_msgSend_stringByCapitalizingFirstLetter(v12, v18, v19);
      v23 = objc_msgSend_stringWithFormat_(v20, v22, @"set%@Value:usingItemInfo:", Letter);
      v24 = NSSelectorFromString(v23);
      if (objc_opt_respondsToSelector())
      {

        objc_msgSend_performSelector_withObject_withObject_(self, v25, v24, v17, item);
      }
    }
  }
}

- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItem:(id)item
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setMinValue:andMaxValue:forItem:]", 800, "\n", item, v5, v6, v7, v26);
  }

  v13 = objc_msgSend_objectForKey_(item, a2, @"itemType");
  if (!value)
  {
    objc_msgSend_removeObjectForKey_(item, v12, @"minValue");
    if (maxValue)
    {
      goto LABEL_7;
    }

LABEL_9:
    objc_msgSend_removeObjectForKey_(item, v14, @"maxValue");
    goto LABEL_10;
  }

  objc_msgSend_setObject_forKey_(item, v12, value, @"minValue");
  if (!maxValue)
  {
    goto LABEL_9;
  }

LABEL_7:
  objc_msgSend_setObject_forKey_(item, v14, maxValue, @"maxValue");
LABEL_10:
  v16 = objc_msgSend_objectForKey_(item, v15, @"cachedView");
  if (v16)
  {
    v17 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCACA8];
      Letter = objc_msgSend_stringByCapitalizingFirstLetter(v13, v18, v19);
      v23 = objc_msgSend_stringWithFormat_(v20, v22, @"set%@Value:usingItemInfo:", Letter);
      v24 = NSSelectorFromString(v23);
      if (objc_opt_respondsToSelector())
      {

        objc_msgSend_performSelector_withObject_withObject_(self, v25, v24, v17, item);
      }
    }
  }
}

- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v47 = *MEMORY[0x277D85DE8];
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItemOfType:atItemTypeIndex:inCellWithTag:]", 800, "type = %@  index = %d  cell tag = %d\n", index, tag, v6, v7, type);
  }

  typeCopy = type;
  indexCopy = index;
  v12 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v41, v46, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v42;
    v32 = *v42;
    v33 = v12;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = objc_msgSend_objectForKey_(*(*(&v41 + 1) + 8 * v18), v15, @"sectionRows");
      if (!v19)
      {
        break;
      }

      v21 = v19;
      selfCopy = self;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v45, 16);
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            v28 = objc_msgSend_objectForKey_(v27, v15, @"tag");
            if (v28 && objc_msgSend_integerValue(v28, v15, v29) == tag)
            {
              InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, v15, typeCopy, indexCopy, v27);
              if (InfoForItemOfType_atItemTypeIndex_inCell)
              {
                objc_msgSend_setValue_forItem_(selfCopy, v31, value, InfoForItemOfType_atItemTypeIndex_inCell);
              }

              return;
            }
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v15, &v37, v45, 16);
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      ++v18;
      self = selfCopy;
      v17 = v32;
      v12 = v33;
      if (v18 == v16)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v15, &v41, v46, 16);
        if (v16)
        {
          goto LABEL_7;
        }

        return;
      }
    }
  }
}

- (void)setMinValue:(id)value andMaxValue:(id)maxValue forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  v47 = *MEMORY[0x277D85DE8];
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setMinValue:andMaxValue:forItemOfType:atItemTypeIndex:inCellWithTag:]", 800, "type = %@  index = %d  cell tag = %d\n", type, index, tag, v7, type);
  }

  typeCopy = type;
  indexCopy = index;
  v12 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v41, v46, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v42;
    v31 = *v42;
    v32 = v12;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = objc_msgSend_objectForKey_(*(*(&v41 + 1) + 8 * v18), v15, @"sectionRows");
      if (!v19)
      {
        break;
      }

      v21 = v19;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v45, 16);
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            v27 = objc_msgSend_objectForKey_(v26, v15, @"tag");
            if (v27 && objc_msgSend_integerValue(v27, v15, v28) == tag)
            {
              InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v15, typeCopy, indexCopy, v26);
              if (InfoForItemOfType_atItemTypeIndex_inCell)
              {
                objc_msgSend_setMinValue_andMaxValue_forItem_(self, v30, value, maxValue, InfoForItemOfType_atItemTypeIndex_inCell);
              }

              return;
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v15, &v37, v45, 16);
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      ++v18;
      v17 = v31;
      v12 = v32;
      if (v18 == v16)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v15, &v41, v46, 16);
        if (v16)
        {
          goto LABEL_7;
        }

        return;
      }
    }
  }
}

- (void)setValue:(id)value forItemOfType:(id)type atItemTypeIndex:(unint64_t)index inCellAtIndexPath:(id)path
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    objc_msgSend_section(path, a2, value);
    objc_msgSend_row(path, v11, v12);
    sub_23EB75374(&dword_27E382D88, "[TableViewManager setValue:forItemOfType:atItemTypeIndex:inCellAtIndexPath:]", 800, "type = %@  index = %d  section = %d  row = %d\n", v13, v14, v15, v16, type);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (CellDictForCellAtIndexPath)
  {
    InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v18, type, index, CellDictForCellAtIndexPath);
    if (InfoForItemOfType_atItemTypeIndex_inCell)
    {

      objc_msgSend_setValue_forItem_(self, v20, value, InfoForItemOfType_atItemTypeIndex_inCell);
    }
  }
}

- (BOOL)setNewRow:(id)row itemAttribute:(id)attribute forItemOfType:(id)type atItemTypeIndex:(unint64_t)index toValue:(id)value
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (row)
  {
    if (attribute)
    {
      if (type)
      {
        if (value)
        {
          self = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, a2, type, index, row);
          if (self)
          {
            if (type == @"editTextView" || type == @"labelView" || type == @"multilineLabelView")
            {
              objc_msgSend_setObject_forKey_(self, v11, value, attribute);
              LOBYTE(self) = 1;
            }

            else
            {
              LOBYTE(self) = 0;
            }
          }
        }
      }
    }
  }

  return self;
}

- (void)setNewRow:(id)row tag:(unint64_t)tag
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, tag);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"tag");
}

- (void)setNewRow:(id)row accessoryType:(int64_t)type
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"accessory");
}

- (void)setNewRow:(id)row editingAccessoryType:(int64_t)type
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"editingAccessory");
}

- (void)setNewRow:(id)row verifierAccessoryType:(int)type
{
  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D08, "[TableViewManager setNewRow:verifierAccessoryType:]", 800, "\n", v4, v5, v6, v7, v12);
  }

  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, type);

  objc_msgSend_setObject_forKey_(row, v10, v11, @"verifierAccessory");
}

- (void)setNewRow:(id)row editingStyle:(int64_t)style
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, style);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"editingStyle");
}

- (void)setNewRow:(id)row textFieldViewMode:(int64_t)mode
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, mode);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"textFieldViewMode");
}

- (void)setNewRow:(id)row selectableCell:(BOOL)cell
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, cell);

  objc_msgSend_setObject_forKey_(row, v5, v6, @"selectableCell");
}

- (void)setCellRowInfoItem:(id)item atIndex:(unint64_t)index forKey:(id)key toValue:(id)value
{
  if (item)
  {
    if (key)
    {
      if (value)
      {
        v9 = objc_msgSend_valueForKey_(item, a2, @"items");
        if (v9)
        {
          v11 = objc_msgSend_objectAtIndex_(v9, v10, index);
          if (v11)
          {

            objc_msgSend_setObject_forKey_(v11, v12, value, key);
          }
        }
      }
    }
  }
}

- (void)makeFirstEditableCellCurrentResponder
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager makeFirstEditableCellCurrentResponder]", 800, "\n", v2, v3, v4, v5, v13);
  }

  v14 = 0;
  self->_currentFirstResponder = 0;

  self->_currentFirstResponderCellPath = 0;
  FirstResponderInTableView_foundParentCell = objc_msgSend_findFirstResponderInTableView_foundParentCell_(self, v7, self->_managedTableView, &v14);
  if (FirstResponderInTableView_foundParentCell)
  {
    v11 = FirstResponderInTableView_foundParentCell;
    objc_msgSend_becomeFirstResponder(FirstResponderInTableView_foundParentCell, v9, v10);
    self->_currentFirstResponder = v11;
    self->_currentFirstResponderCellPath = objc_msgSend_indexPathForCell_(self->_managedTableView, v12, v14);
  }
}

- (id)findFirstResponderInView:(id)view
{
  v26 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInView:]", 800, "view = %@\n", v3, v4, v5, v6, view);
  }

  v8 = objc_msgSend_subviews(view, a2, view);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v22;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v21 + 1) + 8 * v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v19, &v21, v25, 16);
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInView:]", 800, "returning %@\n", v11, v12, v13, v14, v18);
  }

  return v18;
}

- (id)findFirstResponderInTableView:(id)view fromSection:(unint64_t)section fromRow:(unint64_t)row foundParentCell:(id *)cell
{
  rowCopy = row;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:fromSection:fromRow:foundParentCell:]", 800, "section %d  from row %d\n", row, cell, v6, v7, section);
  }

  if (objc_msgSend_numberOfRowsInSection_(view, a2, section) <= rowCopy)
  {
LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  while (1)
  {
    v18 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v13, rowCopy, section);
    if (v18)
    {
      break;
    }

LABEL_10:
    if (rowCopy >= objc_msgSend_numberOfRowsInSection_(view, v19, section))
    {
      goto LABEL_11;
    }
  }

  v20 = objc_msgSend_cellForRowAtIndexPath_(view, v19, v18);
  if (!v20 || (v22 = v20, v23 = objc_msgSend_contentView(v20, v19, v21), (FirstResponderInView = objc_msgSend_findFirstResponderInView_(self, v24, v23)) == 0))
  {
    ++rowCopy;
    goto LABEL_10;
  }

  v26 = FirstResponderInView;
  if (cell)
  {
    *cell = v22;
  }

LABEL_12:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:fromSection:fromRow:foundParentCell:]", 800, "returning %@\n", v14, v15, v16, v17, v26);
  }

  return v26;
}

- (id)findFirstResponderInTableView:(id)view foundParentCell:(id *)cell
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:foundParentCell:]", 800, "\n", v4, v5, v6, v7, v22);
  }

  if (objc_msgSend_numberOfSections(view, a2, view) < 1)
  {
LABEL_9:
    v20 = 0;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v11, view, v16, 0, cell);
      if (FirstResponderInTableView_fromSection_fromRow_foundParentCell)
      {
        break;
      }

      if (++v16 >= objc_msgSend_numberOfSections(view, v18, v19))
      {
        goto LABEL_9;
      }
    }

    v20 = FirstResponderInTableView_fromSection_fromRow_foundParentCell;
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findFirstResponderInTableView:foundParentCell:]", 800, "returning %@\n", v12, v13, v14, v15, v20);
  }

  return v20;
}

- (BOOL)becomeFirstResponderAtIndexPath:(id)path
{
  managedTableView = self->_managedTableView;
  v6 = objc_msgSend_section(path, a2, path);
  v9 = objc_msgSend_row(path, v7, v8);
  FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v10, managedTableView, v6, v9, 0);
  objc_msgSend_becomeFirstResponder(FirstResponderInTableView_fromSection_fromRow_foundParentCell, v12, v13);
  return FirstResponderInTableView_fromSection_fromRow_foundParentCell != 0;
}

- (id)findNextResponderInTableView:(id)view foundParentCell:(id *)cell
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "\n", v4, v5, v6, v7, v27);
  }

  v11 = objc_msgSend_section(self->_currentFirstResponderCellPath, a2, view);
  FirstResponderInTableView_fromSection_fromRow_foundParentCell = (objc_msgSend_row(self->_currentFirstResponderCellPath, v12, v13) + 1);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "current responder section %d  row %d\n", v16, v17, v18, v19, v11);
  }

  while (v11 < objc_msgSend_numberOfSections(view, v14, v15))
  {
    FirstResponderInTableView_fromSection_fromRow_foundParentCell = objc_msgSend_findFirstResponderInTableView_fromSection_fromRow_foundParentCell_(self, v25, view, v11, FirstResponderInTableView_fromSection_fromRow_foundParentCell, cell);
    if (FirstResponderInTableView_fromSection_fromRow_foundParentCell)
    {
      goto LABEL_13;
    }

    ++v11;
  }

  FirstResponderInTableView_fromSection_fromRow_foundParentCell = 0;
LABEL_13:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager findNextResponderInTableView:foundParentCell:]", 800, "returning %@\n", v21, v22, v23, v24, FirstResponderInTableView_fromSection_fromRow_foundParentCell);
  }

  return FirstResponderInTableView_fromSection_fromRow_foundParentCell;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v10 = objc_msgSend_count(v3, v4, v5);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager numberOfSectionsInTableView:]", 800, "section count = %d\n", v6, v7, v8, v9, v10);
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section);
  if (!RowArrayForSection)
  {
    return 0;
  }

  v12 = objc_msgSend_count(RowArrayForSection, v6, v7);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:numberOfRowsInSection:]", 800, "section %d row count = %d\n", v8, v9, v10, v11, section);
  }

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path layoutMode:(BOOL)mode
{
  modeCopy = mode;
  v192 = *MEMORY[0x277D85DE8];
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v9 = objc_msgSend_managedTableView(self, a2, view);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "managedTableView %@\n", v10, v11, v12, v13, v9);
  }

  v14 = objc_msgSend_row(path, a2, view);
  v17 = objc_msgSend_section(path, v15, v16);
  selfCopy = self;
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v18, v17);
  v21 = objc_msgSend_objectForKey_(SectionDictForSection, v20, @"sectionRows");
  v23 = objc_msgSend_objectForKey_(SectionDictForSection, v22, @"sectionIsMenu");
  v26 = objc_msgSend_BOOLValue(v23, v24, v25);
  if (v14 >= objc_msgSend_count(v21, v27, v28))
  {
    return 0;
  }

  v35 = objc_msgSend_objectAtIndex_(v21, v29, v14);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "section %d row %d\n", v31, v32, v33, v34, v17);
  }

  v36 = objc_msgSend_objectForKey_(v35, v30, @"accessory");
  if (v36)
  {
    obj = objc_msgSend_integerValue(v36, v37, v38);
  }

  else
  {
    obj = 0;
  }

  v40 = objc_msgSend_objectForKey_(v35, v37, @"editingAccessory");
  pathCopy = path;
  if (v40)
  {
    v43 = objc_msgSend_integerValue(v40, v41, v42);
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_msgSend_valueForKey_(v35, v41, @"selectableCell");
  v183 = v35;
  InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(selfCopy, v45, @"wholeCellButtonView", 0, v35);
  v181 = v26;
  if ((objc_msgSend_BOOLValue(v44, v47, v48) & 1) != 0 || InfoForItemOfType_atItemTypeIndex_inCell && !v44)
  {
    v50 = 1;
    v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v49, 1);
  }

  else
  {
    v54 = obj == 1 || v43 == 1;
    v50 = v54 | v26;
    v51 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v49, (v54 | v26) & 1);
  }

  objc_msgSend_setObject_forKey_(v183, v52, v51, @"selectable");
  v57 = objc_msgSend_objectForKey_(v183, v55, @"noBackground");
  if (v57)
  {
    v58 = @"NoBackgroundTypeCellID";
  }

  else
  {
    v58 = @"GenericTypeCellID";
  }

  v59 = objc_msgSend_objectForKey_(v183, v56, @"lastOwningCell");
  if (!v59)
  {
    if (!modeCopy)
    {
      gLayoutNoBackgroundCell = objc_msgSend_dequeueReusableCellWithIdentifier_(view, v60, v58);
      goto LABEL_48;
    }

    if (v57)
    {
      p_gLayoutNoBackgroundCell = &selfCopy->_gLayoutNoBackgroundCell;
      gLayoutNoBackgroundCell = selfCopy->_gLayoutNoBackgroundCell;
      if (gLayoutNoBackgroundCell)
      {
        goto LABEL_45;
      }

      v73 = @"NoBackgroundTypeCellID";
    }

    else
    {
      p_gLayoutNoBackgroundCell = &selfCopy->_gLayoutGenericCell;
      gLayoutNoBackgroundCell = selfCopy->_gLayoutGenericCell;
      if (gLayoutNoBackgroundCell)
      {
        goto LABEL_45;
      }

      v73 = @"GenericTypeCellID";
    }

    v78 = [ManagedTableViewCell alloc];
    gLayoutNoBackgroundCell = objc_msgSend_initWithStyle_reuseIdentifier_(v78, v79, 0, v73);
    *p_gLayoutNoBackgroundCell = gLayoutNoBackgroundCell;
LABEL_45:
    objc_msgSend_bounds(view, v60, v61);
    if (v81 > 0.0)
    {
      objc_msgSend_frame(gLayoutNoBackgroundCell, v70, v80);
      v83 = v82;
      objc_msgSend_bounds(view, v84, v85);
      v71 = pathCopy;
      v68 = v183;
      if (v83 != v87)
      {
        objc_msgSend_frame(gLayoutNoBackgroundCell, v70, v86);
        v89 = v88;
        v91 = v90;
        objc_msgSend_bounds(view, v92, v93);
        objc_msgSend_setFrame_(gLayoutNoBackgroundCell, v94, v95, v89, v91);
      }

      goto LABEL_49;
    }

LABEL_48:
    v71 = pathCopy;
    v68 = v183;
LABEL_49:
    if (!gLayoutNoBackgroundCell)
    {
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "creating cell from scratch\n", v74, v75, v76, v77, v179);
      }

      v96 = [ManagedTableViewCell alloc];
      gLayoutNoBackgroundCell = objc_msgSend_initWithStyle_reuseIdentifier_(v96, v97, 0, v58);
    }

    goto LABEL_55;
  }

  gLayoutNoBackgroundCell = v59;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "cell is cached, freeing\n", v62, v63, v64, v65, v179);
  }

  v67 = gLayoutNoBackgroundCell;
  v68 = v183;
  objc_msgSend_removeObjectForKey_(v183, v69, @"lastOwningCell");
  v71 = pathCopy;
LABEL_55:
  objc_msgSend_setParentTableManager_(gLayoutNoBackgroundCell, v70, selfCopy);
  v99 = objc_msgSend_objectForKey_(SectionDictForSection, v98, @"furthestTextInset");
  v102 = objc_msgSend_integerValue(v99, v100, v101);
  objc_msgSend_setForcedRightmostEditTextInset_(gLayoutNoBackgroundCell, v103, v104, v102);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "cell is %@\n", v106, v107, v108, v109, gLayoutNoBackgroundCell);
  }

  objc_msgSend_setAccessoryType_(gLayoutNoBackgroundCell, v105, obj);
  objc_msgSend_setAccessoryView_(gLayoutNoBackgroundCell, v110, 0);
  objc_msgSend_setEditingAccessoryType_(gLayoutNoBackgroundCell, v111, v43);
  objc_msgSend_setEditingAccessoryView_(gLayoutNoBackgroundCell, v112, 0);
  v114 = objc_msgSend_objectForKey_(v68, v113, @"verifierAccessory");
  if (v114)
  {
    v117 = objc_msgSend_integerValue(v114, v115, v116);
    objc_msgSend_setVerifierAccessoryView_forCell_(selfCopy, v118, v117, gLayoutNoBackgroundCell);
  }

  if (v50)
  {
    objc_msgSend_setSelectionStyle_(gLayoutNoBackgroundCell, v115, 1);
    v121 = objc_msgSend_accessibilityTraits(gLayoutNoBackgroundCell, v119, v120);
    objc_msgSend_setAccessibilityTraits_(gLayoutNoBackgroundCell, v122, *MEMORY[0x277D76548] | v121);
  }

  else
  {
    objc_msgSend_setSelectionStyle_(gLayoutNoBackgroundCell, v115, 0);
  }

  v124 = objc_msgSend_objectForKey_(v68, v123, @"tag");
  v127 = selfCopy;
  if (v124)
  {
    v128 = objc_msgSend_integerValue(v124, v125, v126);
    objc_msgSend_setTag_(gLayoutNoBackgroundCell, v129, v128);
  }

  objc_msgSend_setCurrentIndexPath_(gLayoutNoBackgroundCell, v125, v71);
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  obja = objc_msgSend_objectForKey_(v68, v130, @"items");
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v131, &v187, v191, 16);
  if (!v132)
  {
LABEL_91:
    v39 = gLayoutNoBackgroundCell;
    if (v181)
    {
      v171 = objc_msgSend_objectForKey_(v183, v133, @"menuSelected");
      v174 = objc_msgSend_BOOLValue(v171, v172, v173);
      objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(v127, v175, gLayoutNoBackgroundCell, v174, pathCopy);
    }

    v176 = objc_msgSend_objectForKey_(v183, v133, @"accessibilityLabel");
    if (v176)
    {
      objc_msgSend_setAccessibilityLabel_(gLayoutNoBackgroundCell, v177, v176);
    }

    objc_msgSend_setCellDict_(gLayoutNoBackgroundCell, v177, v183);
    return v39;
  }

  v134 = v132;
  v135 = v17 | (v14 << 16);
  v136 = *v188;
LABEL_68:
  v137 = 0;
  while (1)
  {
    if (*v188 != v136)
    {
      objc_enumerationMutation(obja);
    }

    v138 = *(*(&v187 + 1) + 8 * v137);
    v139 = objc_msgSend_objectForKey_(v138, v133, @"itemType");
    v141 = objc_msgSend_objectForKey_(v138, v140, @"startValue");
    if (v141)
    {
      v143 = v141;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isEqualToString_(v143, v144, @"dynamicValue"))
      {
        objc_msgSend_delegate(v127, v144, v145);
        if (objc_opt_respondsToSelector())
        {
          v147 = objc_msgSend_delegate(v127, v142, v146);
          v150 = objc_msgSend_tag(gLayoutNoBackgroundCell, v148, v149);
          v152 = objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(v147, v151, v139, 0, v150);
          objc_msgSend_setObject_forKey_(v138, v153, v152, @"currentValue");
        }
      }

      else if (!objc_msgSend_objectForKey_(v138, v144, @"currentValue"))
      {
        objc_msgSend_setObject_forKey_(v138, v142, v143, @"currentValue");
      }
    }

    v154 = objc_msgSend_objectForKey_(v138, v142, @"cachedView");
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v154)
    {
      if (isKindOfClass)
      {
        v158 = MEMORY[0x277CCACA8];
        Letter = objc_msgSend_stringByCapitalizingFirstLetter(v139, v156, v157);
        v159 = v158;
        v127 = selfCopy;
        v161 = objc_msgSend_stringWithFormat_(v159, v160, @"set%@Value:usingItemInfo:", Letter);
        v162 = NSSelectorFromString(v161);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_performSelector_withObject_withObject_(selfCopy, v156, v162, v154, v138);
        }
      }

      goto LABEL_89;
    }

    if (isKindOfClass)
    {
      v163 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v156, @"%@:", v139);
      v164 = NSSelectorFromString(v163);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return gLayoutNoBackgroundCell;
      }

      v154 = objc_msgSend_performSelector_withObject_(v127, v165, v164, v138);
      if (!v154)
      {
        return gLayoutNoBackgroundCell;
      }

      goto LABEL_88;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v154 = v139;
    if (!v139)
    {
      return gLayoutNoBackgroundCell;
    }

LABEL_88:
    objc_msgSend_setObject_forKey_(v138, v166, v154, @"cachedView");
LABEL_89:
    objc_msgSend_setTag_(v154, v156, v135);
    if (v134 == ++v137)
    {
      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v133, &v187, v191, 16);
      if (v134)
      {
        goto LABEL_68;
      }

      goto LABEL_91;
    }
  }

  if (dword_27E382C88 > 800)
  {
    return gLayoutNoBackgroundCell;
  }

  v39 = gLayoutNoBackgroundCell;
  if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:cellForRowAtIndexPath:layoutMode:]", 800, "invalid kTableCellItemTypeKey value '%@'\n", v167, v168, v169, v170, v139);
  }

  return v39;
}

- (id)getRepresentedObjectForCellAtIndexPath:(id)path
{
  result = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (result)
  {

    return objc_msgSend_objectForKey_(result, v4, @"representedObject");
  }

  return result;
}

- (void)updateHeader:(id)header forSectionWithIdentifier:(id)identifier
{
  objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier);

  MEMORY[0x2821F9670](self, sel_updateHeader_inSection_, header);
}

- (void)updateHeader:(id)header inSection:(unint64_t)section
{
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setDescriptorObject_forKey_inSection_(self, a2, header, @"header", section);

    MEMORY[0x2821F9670](self, sel_reloadSection_, section);
  }
}

- (void)updateFooter:(id)footer forSectionWithIdentifier:(id)identifier
{
  objc_msgSend_indexOfSectionWithIdentifier_(self, a2, identifier);

  MEMORY[0x2821F9670](self, sel_updateFooter_inSection_, footer);
}

- (void)updateFooter:(id)footer inSection:(unint64_t)section
{
  if (section != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setDescriptorObject_forKey_inSection_(self, a2, footer, @"footer", section);
    if (!self->_handlingBulkUpdate)
    {
      v8 = objc_msgSend_areAnimationsEnabled(MEMORY[0x277D75D18], v6, v7);
      objc_msgSend_setAnimationsEnabled_(MEMORY[0x277D75D18], v9, 0);
      managedTableView = self->_managedTableView;
      v12 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v11, section);
      objc_msgSend_reloadSections_withRowAnimation_(managedTableView, v13, v12, 5);
      v15 = MEMORY[0x277D75D18];

      objc_msgSend_setAnimationsEnabled_(v15, v14, v8);
    }
  }
}

- (void)setRepresentedObject:(id)object forCellAtIndexPath:(id)path
{
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (CellDictForCellAtIndexPath)
  {

    objc_msgSend_setObject_forKey_(CellDictForCellAtIndexPath, v6, object, @"representedObject");
  }
}

- (double)totalTableHeight
{
  v4 = objc_msgSend_tableHeaderView(self->_managedTableView, a2, v2);
  objc_msgSend_frame(v4, v5, v6);
  v8 = v7 + 0.0;
  objc_msgSend_totalTableSectionsHeight(self, v9, v10);
  v12 = v11 + v8;
  v15 = objc_msgSend_tableFooterView(self->_managedTableView, v13, v14);
  objc_msgSend_frame(v15, v16, v17);
  return v12 + v18;
}

- (double)totalTableSectionsHeight
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_numberOfSections(self->_managedTableView, a2, v2) < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = *MEMORY[0x277D740A8];
    v11 = 0.0;
    do
    {
      objc_msgSend_rectForSection_(self->_managedTableView, v4, v9);
      v18 = v17;
      if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "section %f\n", v13, v14, v15, v16, v18);
      }

      v11 = v11 + *&v18;
      DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, v12, @"footer", v9);
      if (DescriptorObjectForKey_inSection)
      {
        v22 = DescriptorObjectForKey_inSection;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v10;
          v34[0] = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v20, v21, 15.0);
          v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v34, &v33, 1);
          objc_msgSend_boundingRectWithSize_options_attributes_context_(v22, v25, 1, v24, 0, 300.0, 1024.0);
          v11 = v11 + v30;
          if (dword_27E382C88 <= 800)
          {
            v31 = *&v30;
            if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
            {
              sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "Footer text %f\n", v26, v27, v28, v29, v31);
            }
          }
        }
      }

      ++v9;
    }

    while (v9 < objc_msgSend_numberOfSections(self->_managedTableView, v20, v21));
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager totalTableSectionsHeight]", 800, "returning %f\n", v5, v6, v7, v8, *&v11);
  }

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    v7 = objc_msgSend_managedTableView(self, a2, view);
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "managedTableView %@\n", v8, v9, v10, v11, v7);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (!CellDictForCellAtIndexPath)
  {
    return 44.0;
  }

  v14 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v13, @"cachedHeight");
  v15 = MEMORY[0x277CCABB0];
  objc_msgSend_bounds(view, v16, v17);
  *&v19 = v18;
  v22 = objc_msgSend_numberWithFloat_(v15, v20, v21, v19);
  v24 = objc_msgSend_objectForKey_(v14, v23, v22);
  if (!v24)
  {
    v33 = objc_msgSend_tableView_cellForRowAtIndexPath_layoutMode_(self, v25, view, path, 1);
    if (v33)
    {
      v36 = v33;
      objc_msgSend_layoutSubviews(v33, v34, v35);
      objc_msgSend_neededContentHeight(v36, v37, v38);
      v32 = v39;
      v42 = objc_msgSend_section(path, v40, v41);
      SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v43, v42);
      v46 = objc_msgSend_objectForKey_(SectionDictForSection, v45, @"furthestTextInset");
      v49 = objc_msgSend_integerValue(v46, v47, v48);
      objc_msgSend_computedRightmostEditTextInset(v36, v50, v51);
      if (v54 > v49)
      {
        if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
        {
          objc_msgSend_computedRightmostEditTextInset(v36, v52, v53);
          sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "computed max edit text inset = %.1f\n", v55, v56, v57, v58, v59);
        }

        v60 = MEMORY[0x277CCABB0];
        objc_msgSend_computedRightmostEditTextInset(v36, v52, v53);
        v63 = objc_msgSend_numberWithInteger_(v60, v62, v61);
        objc_msgSend_setObject_forKey_(SectionDictForSection, v64, v63, @"furthestTextInset");
      }

      goto LABEL_18;
    }

    return 44.0;
  }

  objc_msgSend_floatValue(v24, v25, v26);
  v32 = v31;
  if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
  {
    sub_23EB75374(&dword_27E382CC8, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "using cached height: %.0f\n", v27, v28, v29, v30, *&v32);
  }

LABEL_18:
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:heightForRowAtIndexPath:]", 800, "returning %f\n", v27, v28, v29, v30, *&v32);
  }

  return v32;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"headerCache");
  if (DescriptorObjectForKey_inSection)
  {
    objc_msgSend_bounds(DescriptorObjectForKey_inSection, v6, v7);
    v13 = v12;
  }

  else
  {
    v13 = *MEMORY[0x277D76F30];
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:heightForHeaderInSection:]", 800, "section %d returning %f\n", v8, v9, v10, v11, section);
  }

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    v6 = objc_msgSend_managedTableView(self, a2, view);
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:titleForHeaderInSection:]", 800, "managedTableView %@\n", v7, v8, v9, v10, v6);
  }

  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"header", section);
  if (DescriptorObjectForKey_inSection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      DescriptorObjectForKey_inSection = 0;
    }
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:titleForHeaderInSection:]", 800, "section %d returning %@\n", v11, v12, v13, v14, section);
  }

  return DescriptorObjectForKey_inSection;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  DescriptorObjectForKey_inSection = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"header");
  if (DescriptorObjectForKey_inSection)
  {
    SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v6, section);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setObject_forKey_(SectionDictForSection, v13, DescriptorObjectForKey_inSection, @"headerCache");
    }

    else
    {
      DescriptorObjectForKey_inSection = 0;
    }
  }

  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:viewForHeaderInSection:]", 800, "section %d returning %@\n", v7, v8, v9, v10, section);
  }

  return DescriptorObjectForKey_inSection;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v8 = *MEMORY[0x277D76F30];
  if (dword_27E382D48 <= 800 && (dword_27E382D48 != -1 || sub_23EB74AC8(&dword_27E382D48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D48, "[TableViewManager tableView:heightForFooterInSection:]", 800, "section %d returning %f\n", v4, v5, v6, v7, section);
  }

  return v8;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  result = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"footer", section);
  if (result)
  {
    v5 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  result = objc_msgSend_getDescriptorObjectForKey_inSection_(self, a2, @"footer", section);
  if (result)
  {
    v5 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:willSelectRowAtIndexPath:]", 800, "\n", v4, v5, v6, v7, v30);
  }

  v10 = objc_msgSend_section(path, a2, view);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v11, v10);
  if (!SectionDictForSection)
  {
    return 0;
  }

  v14 = objc_msgSend_objectForKey_(SectionDictForSection, v13, @"sectionRows");
  v17 = objc_msgSend_row(path, v15, v16);
  if (v17 >= objc_msgSend_count(v14, v18, v19))
  {
    return 0;
  }

  v22 = objc_msgSend_row(path, v20, v21);
  v24 = objc_msgSend_objectAtIndex_(v14, v23, v22);
  v26 = objc_msgSend_objectForKey_(v24, v25, @"selectable");
  if ((objc_msgSend_BOOLValue(v26, v27, v28) & 1) == 0)
  {
    return 0;
  }

  return path;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:didSelectRowAtIndexPath:]", 800, "\n", v4, v5, v6, v7, v26);
  }

  v11 = objc_msgSend_section(path, a2, view);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v12, v11);
  if (SectionDictForSection)
  {
    v15 = SectionDictForSection;
    v16 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v14, path);
    v18 = objc_msgSend_objectForKey_(v15, v17, @"sectionIsMenu");
    v22 = 0.0;
    if (objc_msgSend_BOOLValue(v18, v19, v20))
    {
      objc_msgSend_selectMenuCellAtIndexPath_(self, v21, path);
      v22 = 0.15;
    }

    objc_msgSend_deselectRowAtIndexPath_animated_(view, v21, path, 1);
    if (v16 && objc_msgSend_delegate(self, v23, v24))
    {

      objc_msgSend_performSelector_withObject_afterDelay_(self, v25, sel_deferedTouchInCellAtIndexPath_, path, v22);
    }
  }

  else
  {

    objc_msgSend_deselectRowAtIndexPath_animated_(view, v14, path, 1);
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (!CellDictForCellAtIndexPath)
  {
    return 0;
  }

  v6 = objc_msgSend_valueForKey_(CellDictForCellAtIndexPath, v5, @"editingStyle");
  if (!v6)
  {
    return 0;
  }

  return objc_msgSend_integerValue(v6, v7, v8);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_delegate(self, v7, v8);

    MEMORY[0x2821F9670](v9, sel_commitEditingStyle_forRowAtIndexPath_, style);
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view);
  if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_delegate(self, v6, v7);

    MEMORY[0x2821F9670](v8, sel_accessoryButtonTappedForRowWithIndexPath_, path);
  }
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  objc_msgSend_delegate(self, a2, view);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v8 = objc_msgSend_delegate(self, v6, v7);

  return MEMORY[0x2821F9670](v8, sel_shouldIndentWhileEditingRowAtIndexPath_, path);
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:shouldShowMenuForRowAtIndexPath:]", 800, "\n", v4, v5, v6, v7, v21);
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
  if (CellDictForCellAtIndexPath)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v11, @"items", 0);
    CellDictForCellAtIndexPath = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v21, v25, 16);
    if (CellDictForCellAtIndexPath)
    {
      v15 = CellDictForCellAtIndexPath;
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = objc_msgSend_objectForKey_(*(*(&v21 + 1) + 8 * i), v14, @"canCopy");
          if (v18 && (objc_msgSend_BOOLValue(v18, v14, v19) & 1) != 0)
          {
            LOBYTE(CellDictForCellAtIndexPath) = 1;
            return CellDictForCellAtIndexPath;
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v21, v25, 16);
        LOBYTE(CellDictForCellAtIndexPath) = 0;
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  return CellDictForCellAtIndexPath;
}

- (BOOL)tableView:(id)view canPerformAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v27 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:canPerformAction:forRowAtIndexPath:withSender:]", 800, "\n", path, sender, v6, v7, v22);
  }

  if (sel_copy_ == action)
  {
    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
    if (CellDictForCellAtIndexPath)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v12, @"items", 0);
      CellDictForCellAtIndexPath = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v26, 16);
      if (CellDictForCellAtIndexPath)
      {
        v16 = CellDictForCellAtIndexPath;
        v17 = *v23;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = objc_msgSend_objectForKey_(*(*(&v22 + 1) + 8 * i), v15, @"canCopy");
            if (v19 && (objc_msgSend_BOOLValue(v19, v15, v20) & 1) != 0)
            {
              LOBYTE(CellDictForCellAtIndexPath) = 1;
              return CellDictForCellAtIndexPath;
            }
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v22, v26, 16);
          LOBYTE(CellDictForCellAtIndexPath) = 0;
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(CellDictForCellAtIndexPath) = 0;
  }

  return CellDictForCellAtIndexPath;
}

- (void)tableView:(id)view performAction:(SEL)action forRowAtIndexPath:(id)path withSender:(id)sender
{
  v36 = *MEMORY[0x277D85DE8];
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:performAction:forRowAtIndexPath:withSender:]", 800, "\n", path, sender, v6, v7, v30);
  }

  if (sel_copy_ == action)
  {
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager tableView:performAction:forRowAtIndexPath:withSender:]", 800, "copy:\n", path, sender, v6, v7, v30);
    }

    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, a2, path);
    if (CellDictForCellAtIndexPath)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v12, @"items");
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
      if (v15)
      {
        v18 = v15;
        v19 = 0;
        v20 = *v32;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = objc_msgSend_objectForKey_(v22, v16, @"canCopy");
            if (v23)
            {
              if (objc_msgSend_BOOLValue(v23, v16, v24))
              {
                v25 = objc_msgSend_objectForKey_(v22, v16, @"currentValue");
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v19)
                  {
                    objc_msgSend_appendFormat_(v19, v16, @" %@", v25);
                  }

                  else
                  {
                    v19 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v16, v25);
                  }
                }
              }
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v31, v35, 16);
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      if (objc_msgSend_length(v19, v16, v17))
      {
        v28 = objc_msgSend_generalPasteboard(MEMORY[0x277D75810], v26, v27);
        objc_msgSend_setString_(v28, v29, v19);
      }
    }
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "textField %@\n", range.length, string, v5, v6, field);
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v13 = MEMORY[0x277CCAA70];
  v14 = objc_msgSend_tag(field, a2, field) >> 16;
  v17 = objc_msgSend_tag(field, v15, v16);
  v67 = objc_msgSend_indexPathForRow_inSection_(v13, v18, v14, v17);
  v21 = objc_msgSend_text(field, v19, v20);
  IsSecureAndUnchanged = objc_msgSend_textFieldIsSecureAndUnchanged_(self, v22, field);
  if (IsSecureAndUnchanged)
  {
    v21 = objc_msgSend_string(MEMORY[0x277CCACA8], v23, v24);
    v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v25, string);
    if (dword_27E382C88 > 800)
    {
      goto LABEL_21;
    }

    if (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "starting secure text field edit (erasing old value)\n", v27, v28, v29, v30, v65);
    }
  }

  else
  {
    v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v23, v21);
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "current text %@\n", v33, v34, v35, v36, v31);
    }

    objc_msgSend_replaceCharactersInRange_withString_(v31, v32, location, length, string);
  }

  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "text as it will be %@\n", v27, v28, v29, v30, v31);
  }

LABEL_21:
  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v26, v67);
  v39 = objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v38, @"nsFormatter");
  if (v39)
  {
    v42 = v39;
    v68[0] = location;
    v68[1] = length;
    v69 = 0;
    v70 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v40, v31);
    isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription = objc_msgSend_isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription_(v42, v43, &v70, v68, v21, location, length, &v69);
    if (isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription && (objc_msgSend_isEqualToString_(v70, v40, v31) & 1) == 0)
    {
      v31 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v40, v70);
      objc_msgSend_setText_(field, v50, v31);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textField:shouldChangeCharactersInRange:replacementString:]", 800, "formatter error: %@ outStr: %@\n", v44, v45, v46, v47, v69);
    }

    if (!isPartialStringValid_proposedSelectedRange_originalString_originalSelectedRange_errorDescription)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v49 = 1;
  }

  if (!objc_msgSend_delegate(self, v40, v41) || (objc_msgSend_delegate(self, v51, v52), (objc_opt_respondsToSelector() & 1) == 0) || (v53 = objc_msgSend_delegate(self, v51, v52), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v53, v54, field, v67, 0, v31)))
  {
    v55 = objc_msgSend_tag(field, v51, v52);
    objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v56, field, v31, v55);
    if (IsSecureAndUnchanged)
    {
      v59 = objc_msgSend_string(MEMORY[0x277CCACA8], v57, v58);
      if (objc_msgSend_isEqualToString_(string, v60, v59))
      {
        v62 = objc_msgSend_notificationWithName_object_(MEMORY[0x277CCAB88], v61, @"TVM::Internal", field);
        objc_msgSend_uiTextFieldDidChange_(self, v63, v62);
      }
    }

    v64 = 1;
    return v64 & v49;
  }

LABEL_39:
  v64 = 0;
  return v64 & v49;
}

- (void)uiTextFieldDidChange:(id)change
{
  v4 = objc_msgSend_object(change, a2, change);
  if (objc_msgSend_isDescendantOfView_(v4, v5, self->_managedTableView))
  {
    v8 = objc_msgSend_tag(v4, v6, v7);
    v10 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v9, v8 >> 16, v8);
    objc_msgSend_delegate(self, v11, v12);
    if (objc_opt_respondsToSelector())
    {
      v15 = objc_msgSend_delegate(self, v13, v14);

      MEMORY[0x2821F9670](v15, sel_textFieldDidChangeAtIndexPath_, v10);
    }
  }
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, clear);
  if (objc_msgSend_isEditing(clear, v6, v7))
  {
    v10 = MEMORY[0x277CCAA70];
    v11 = objc_msgSend_tag(clear, v8, v9) >> 16;
    v14 = objc_msgSend_tag(clear, v12, v13);
    v16 = objc_msgSend_indexPathForRow_inSection_(v10, v15, v11, v14);
    CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v17, v16);
    if (objc_msgSend_objectForKey_(CellDictForCellAtIndexPath, v19, @"nsFormatter") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = MEMORY[0x277CCAB68];
      v23 = objc_msgSend_text(clear, v20, v21);
      v5 = objc_msgSend_stringWithString_(v22, v24, v23);
      v27 = objc_msgSend_length(v5, v25, v26);
      if (v27)
      {
        v29 = v27;
        v30 = v27 - 1;
        for (i = 1; i <= v29; ++i)
        {
          if (!objc_msgSend_textField_shouldChangeCharactersInRange_replacementString_(self, v28, clear, v30, i, &stru_285145FE8))
          {
            break;
          }

          --v30;
        }

        if (i != 1)
        {
          objc_msgSend_replaceCharactersInRange_withString_(v5, v28, v29 - (i - 1), i - 1, &stru_285145FE8);
          if (!objc_msgSend_delegate(self, v32, v33) || (objc_msgSend_delegate(self, v34, v35), (objc_opt_respondsToSelector() & 1) == 0) || (v37 = objc_msgSend_delegate(self, v34, v36), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v37, v38, clear, v16, 0, v5)))
          {
            objc_msgSend_setText_(clear, v34, v5);
            v41 = 0;
LABEL_18:
            v44 = objc_msgSend_tag(clear, v39, v40);
            objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v45, clear, v5, v44);
            return v41;
          }
        }
      }
    }

    else if (!objc_msgSend_delegate(self, v20, v21) || (objc_msgSend_delegate(self, v39, v40), (objc_opt_respondsToSelector() & 1) == 0) || (v42 = objc_msgSend_delegate(self, v39, v40), objc_msgSend_shouldChangeTextField_atIndexPath_forTextIndex_toString_(v42, v43, clear, v16, 0, v5)))
    {
      v41 = 1;
      goto LABEL_18;
    }

    return 0;
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldReturn:]", 800, "textField %@\n", v3, v4, v5, v6, return);
  }

  objc_msgSend_delegate(self, a2, return);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_tag(return, v9, v10) >> 16;
    v14 = objc_msgSend_tag(return, v12, v13);
    v17 = objc_msgSend_delegate(self, v15, v16);
    v19 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v18, v11, v14);
    if (!objc_msgSend_shouldHandleReturnForTextField_atIndexPath_forTextIndex_(v17, v20, return, v19, 0))
    {
      return 0;
    }
  }

  v35 = 0;
  NextResponderInTableView_foundParentCell = objc_msgSend_findNextResponderInTableView_foundParentCell_(self, v9, self->_managedTableView, &v35);
  if (NextResponderInTableView_foundParentCell)
  {
    v28 = NextResponderInTableView_foundParentCell;
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldReturn:]", 800, "got a nextResponder %@\n", v24, v25, v26, v27, v28);
    }

    objc_msgSend_becomeFirstResponder(v28, v22, v23);
    self->_currentFirstResponder = v28;

    v30 = objc_msgSend_indexPathForCell_(self->_managedTableView, v29, v35);
    self->_currentFirstResponderCellPath = v30;
    managedTableView = self->_managedTableView;
    v32 = 1;
    objc_msgSend_scrollToRowAtIndexPath_atScrollPosition_animated_(managedTableView, v33, v30, 0, 1);
  }

  else
  {
    objc_msgSend_resignFirstResponder(self->_currentFirstResponder, v22, v23);
    self->_currentFirstResponder = 0;

    self->_currentFirstResponderCellPath = 0;
    return 1;
  }

  return v32;
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldDidEndEditing:]", 800, "textField %@\n", v3, v4, v5, v6, editing);
  }

  if ((objc_msgSend_textFieldIsSecureAndUnchanged_(self, a2, editing) & 1) == 0)
  {
    if (objc_msgSend_text(editing, v9, v10))
    {
      v13 = objc_msgSend_text(editing, v11, v12);
      v16 = objc_msgSend_tag(editing, v14, v15);
      objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v17, editing, v13, v16);
    }

    if (objc_msgSend_delegate(self, v11, v12))
    {
      objc_msgSend_delegate(self, v18, v19);
      if (objc_opt_respondsToSelector())
      {
        v22 = MEMORY[0x277CCAA70];
        v23 = objc_msgSend_tag(editing, v20, v21) >> 16;
        v26 = objc_msgSend_tag(editing, v24, v25);
        v28 = objc_msgSend_indexPathForRow_inSection_(v22, v27, v23, v26);
        v31 = objc_msgSend_delegate(self, v29, v30);

        MEMORY[0x2821F9670](v31, sel_textFieldDidEndEditingAtIndexPath_, v28);
      }
    }
  }
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldShouldBeginEditing:]", 800, "textField %@\n", v3, v4, v5, v6, editing);
  }

  if (objc_msgSend_isSecureTextEntry(editing, a2, editing))
  {
    v11 = MEMORY[0x277CCAA70];
    v12 = objc_msgSend_tag(editing, v9, v10) >> 16;
    v15 = objc_msgSend_tag(editing, v13, v14);
    v17 = objc_msgSend_indexPathForRow_inSection_(v11, v16, v12, v15);
    v20 = objc_msgSend_text(editing, v18, v19);
    objc_msgSend_setValue_forItemOfType_atItemTypeIndex_inCellAtIndexPath_(self, v21, v20, @"editTextView", 0, v17);
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v5 = objc_msgSend_tag(editing, a2, editing);
  v12 = objc_msgSend_tag(editing, v6, v7);
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager textFieldDidBeginEditing:]", 800, "textField %@\n", v8, v9, v10, v11, editing);
  }

  self->_currentFirstResponder = editing;

  self->_currentFirstResponderCellPath = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v13, v5 >> 16, v12);
}

- (void)switchAction:(id)action
{
  v5 = objc_msgSend_tag(action, a2, action);
  v8 = objc_msgSend_tag(action, v6, v7);
  v11 = objc_msgSend_isOn(action, v9, v10);
  v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v12, v11);
  v16 = objc_msgSend_tag(action, v14, v15);
  if (objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v17, action, v13, v16) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_delegate(self, v18, v19))
    {
      objc_msgSend_delegate(self, v20, v21);
      if (objc_opt_respondsToSelector())
      {
        v24 = objc_msgSend_delegate(self, v22, v23);
        v26 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v25, v5 >> 16, v8);

        MEMORY[0x2821F9670](v24, sel_switchTouchedInCellAtIndexPath_forSwitchIndex_isOn_, v26);
      }
    }
  }
}

- (void)buttonAction:(id)action
{
  v5 = objc_msgSend_tag(action, a2, action);
  v8 = objc_msgSend_tag(action, v6, v7);
  v11 = objc_msgSend_tag(action, v9, v10);
  if (objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v12, action, 0, v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_delegate(self, v13, v14))
    {
      objc_msgSend_delegate(self, v15, v16);
      if (objc_opt_respondsToSelector())
      {
        v19 = objc_msgSend_delegate(self, v17, v18);
        v21 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v20, v5 >> 16, v8);

        MEMORY[0x2821F9670](v19, sel_buttonTouchedInCellAtIndexPath_forButtonIndex_, v21);
      }
    }
  }
}

- (void)segmentedControlValueChanged:(id)changed
{
  v5 = objc_msgSend_tag(changed, a2, changed);
  v8 = objc_msgSend_tag(changed, v6, v7);
  v11 = objc_msgSend_selectedSegmentIndex(changed, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v11);
  v16 = objc_msgSend_tag(changed, v14, v15);
  if (objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v17, changed, v13, v16) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_delegate(self, v18, v19))
    {
      objc_msgSend_delegate(self, v20, v21);
      if (objc_opt_respondsToSelector())
      {
        v24 = objc_msgSend_delegate(self, v22, v23);
        v26 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v25, v5 >> 16, v8);

        MEMORY[0x2821F9670](v24, sel_segmentedControlTouchedInCellAtIndexPath_forSegmentedControlIndex_selectedSegment_, v26);
      }
    }
  }
}

- (void)selectedDateChanged:(id)changed
{
  v5 = objc_msgSend_tag(changed, a2, changed);
  v8 = objc_msgSend_tag(changed, v6, v7);
  v11 = objc_msgSend_tag(changed, v9, v10);
  if (objc_msgSend_findAndSetItemObject_toValue_inCellWithInternalRowSectionTagValue_(self, v12, changed, 0, v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_delegate(self, v13, v14))
    {
      objc_msgSend_delegate(self, v15, v16);
      if (objc_opt_respondsToSelector())
      {
        v19 = objc_msgSend_delegate(self, v17, v18);
        v21 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v20, v5 >> 16, v8);
        objc_msgSend_date(changed, v22, v23);

        MEMORY[0x2821F9670](v19, sel_selectedDateChangedInCellAtIndexPath_forDatePickerIndex_withDate_, v21);
      }
    }
  }
}

- (void)bulkUpdateBegin
{
  if (!self->_handlingBulkUpdate)
  {
    objc_msgSend_beginUpdates(self->_managedTableView, a2, v2);
    self->_handlingBulkUpdate = 1;
  }
}

- (void)bulkUpdateEnd
{
  if (self->_handlingBulkUpdate)
  {
    objc_msgSend_endUpdates(self->_managedTableView, a2, v2);
    self->_handlingBulkUpdate = 0;
  }
}

- (void)selectMenuCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_section(path, a2, path);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v6, v5);
  if (SectionDictForSection)
  {
    v9 = SectionDictForSection;
    v10 = objc_msgSend_objectForKey_(SectionDictForSection, v8, @"sectionIsMenu");
    if (objc_msgSend_BOOLValue(v10, v11, v12))
    {
      v14 = objc_msgSend_indexOfSelectedRowInMenuSection_(self, v13, v5);
      v16 = objc_msgSend_objectForKey_(v9, v15, @"sectionMenuOptions");
      v19 = objc_msgSend_integerValue(v16, v17, v18);
      if (v14 != objc_msgSend_row(path, v20, v21) || v5 != objc_msgSend_section(path, v22, v23))
      {
        if (v14 != 0x7FFFFFFFFFFFFFFFLL && (v19 & 1) == 0)
        {
          v24 = objc_msgSend_indexPathForRow_inSection_(MEMORY[0x277CCAA70], v22, v14, v5);
          v26 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v25, v24);
          objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(self, v27, v26, 0, v24);
        }

        v29 = objc_msgSend_cellForRowAtIndexPath_(self->_managedTableView, v22, path);

        objc_msgSend_setMenuCell_visualStateToSelected_atIndexPath_(self, v28, v29, 1, path);
      }
    }
  }
}

- (id)cellInfoOfSelectedRowInMenuSection:(unint64_t)section
{
  v19 = *MEMORY[0x277D85DE8];
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowArrayForSection, v4, &v14, v18, 16);
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v15;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v15 != v8)
    {
      objc_enumerationMutation(RowArrayForSection);
    }

    v10 = *(*(&v14 + 1) + 8 * v9);
    v11 = objc_msgSend_objectForKey_(v10, v6, @"menuSelected");
    if (v11)
    {
      if (objc_msgSend_BOOLValue(v11, v6, v12))
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowArrayForSection, v6, &v14, v18, 16);
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (unint64_t)indexOfSelectedRowInMenuSection:(unint64_t)section
{
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, a2, section);
  v7 = objc_msgSend_cellInfoOfSelectedRowInMenuSection_(self, v6, section);
  if (!v7 || !RowArrayForSection)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return objc_msgSend_indexOfObject_(RowArrayForSection, v8, v7);
}

- (unint64_t)tagOfSelectedRowInMenuSection:(unint64_t)section
{
  result = objc_msgSend_cellInfoOfSelectedRowInMenuSection_(self, a2, section);
  if (result)
  {
    v5 = objc_msgSend_objectForKey_(result, v4, @"tag");

    return objc_msgSend_integerValue(v5, v6, v7);
  }

  return result;
}

- (void)setMenuCell:(id)cell visualStateToSelected:(BOOL)selected atIndexPath:(id)path
{
  selectedCopy = selected;
  v9 = objc_msgSend_row(path, a2, cell);
  v12 = objc_msgSend_section(path, v10, v11);
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v13, v12);
  if (SectionDictForSection)
  {
    v16 = SectionDictForSection;
    v19 = objc_msgSend_objectForKey_(SectionDictForSection, v15, @"sectionRows");
    if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
    {
      v20 = objc_msgSend_section(path, v17, v18);
      sub_23EB75374(&dword_27E382C88, "[TableViewManager setMenuCell:visualStateToSelected:atIndexPath:]", 800, "section %d, row %d, selected = %s\n", v21, v22, v23, v24, v20);
    }

    if (v9 < objc_msgSend_count(v19, v17, v18))
    {
      v26 = objc_msgSend_objectForKey_(v16, v25, @"sectionMenuOptions");
      v29 = objc_msgSend_integerValue(v26, v27, v28);
      v31 = objc_msgSend_objectAtIndex_(v19, v30, v9);
      v33 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v32, selectedCopy);
      objc_msgSend_setObject_forKey_(v31, v34, v33, @"menuSelected");
      InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v35, @"labelView", 0, v31);
      v38 = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v37, @"imageView", 0, v31);
      v40 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v39, @"cachedView");
      v43 = objc_msgSend_objectForKey_(v38, v41, @"cachedView");
      if (cell)
      {
        if (selectedCopy)
        {
          objc_msgSend_setObject_forKey_(InfoForItemOfType_atItemTypeIndex_inCell, v42, self->_selectedTextColor, @"color");
          objc_msgSend_setTextColor_(v40, v44, self->_selectedTextColor);
          if ((v29 & 4) == 0)
          {
            cellCopy2 = cell;
            v46 = 3;
LABEL_16:

            objc_msgSend_setAccessoryType_(cellCopy2, v42, v46);
            return;
          }

          goto LABEL_13;
        }

        objc_msgSend_setObject_forKey_(InfoForItemOfType_atItemTypeIndex_inCell, v42, self->_detailTextColor, @"color");
        objc_msgSend_setTextColor_(v40, v52, self->_detailTextColor);
        if ((v29 & 4) == 0)
        {
          cellCopy2 = cell;
          v46 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        if (selectedCopy)
        {
          if ((v29 & 4) == 0)
          {
            return;
          }

LABEL_13:
          v47 = objc_msgSend_kitImageOfType_(ImageStore, v42, 1);
          objc_msgSend_setImage_(v43, v48, v47);
          v50 = objc_msgSend_kitImageOfType_(ImageStore, v49, 2);
          v51 = v43;
LABEL_22:

          MEMORY[0x2821F9670](v51, sel_setHighlightedImage_, v50);
          return;
        }

        if ((v29 & 4) == 0)
        {
          return;
        }
      }

      objc_msgSend_setImage_(v43, v42, 0);
      v51 = v43;
      v50 = 0;
      goto LABEL_22;
    }
  }
}

- (unint64_t)indexOfSectionWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKey_(v11, v7, @"identifier");
        if (objc_msgSend_isEqualToString_(v12, v13, identifier))
        {
          return objc_msgSend_indexOfObject_(v4, v7, v11);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)indexPathOfCellWithTag:(int64_t)tag
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v33, v38, 16);
  if (result)
  {
    v8 = result;
    v9 = *v34;
    v27 = *v34;
LABEL_3:
    v10 = 0;
    v28 = v8;
    while (1)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      result = objc_msgSend_objectForKey_(v11, v7, @"sectionRows", v27);
      if (!result)
      {
        break;
      }

      v13 = result;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(result, v12, &v29, v37, 16);
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKey_(v18, v7, @"tag");
            if (objc_msgSend_integerValue(v19, v20, v21) == tag)
            {
              v22 = MEMORY[0x277CCAA70];
              v23 = objc_msgSend_indexOfObject_(v13, v7, v18);
              v25 = objc_msgSend_indexOfObject_(v4, v24, v11);
              return objc_msgSend_indexPathForRow_inSection_(v22, v26, v23, v25);
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v7, &v29, v37, 16);
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      ++v10;
      v9 = v27;
      if (v10 == v28)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v33, v38, 16);
        result = 0;
        if (v8)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)indexPathOfFirstCellWithUnverifiedVerifier
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v30, v35, 16);
  if (v24)
  {
    v25 = *v31;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v31 != v25)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v30 + 1) + 8 * v6);
      v8 = objc_msgSend_objectForKey_(v7, v5, @"sectionRows");
      if (!v8)
      {
        break;
      }

      v10 = v8;
      v23 = v6;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v26, v34, 16);
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
LABEL_9:
        v14 = 0;
        while (1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = MEMORY[0x277CCAA70];
          v16 = objc_msgSend_indexOfObject_(v10, v5, *(*(&v26 + 1) + 8 * v14));
          v18 = objc_msgSend_indexOfObject_(v3, v17, v7);
          v20 = objc_msgSend_indexPathForRow_inSection_(v15, v19, v16, v18);
          if (objc_msgSend_textFieldHasVerifierAtIndexPath_(self, v21, v20))
          {
            if (!objc_msgSend_textFieldVerifiedAtIndexPath_(self, v5, v20))
            {
              return v20;
            }
          }

          if (v12 == ++v14)
          {
            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v5, &v26, v34, 16);
            if (v12)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v6 = v23 + 1;
      if (v23 + 1 == v24)
      {
        v20 = 0;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v30, v35, 16);
        if (v24)
        {
          goto LABEL_3;
        }

        return v20;
      }
    }
  }

  return 0;
}

- (BOOL)tagOfCellAtIndexPath:(id)path tag:(int64_t *)tag
{
  v7 = objc_msgSend_row(path, a2, path);
  v10 = objc_msgSend_section(path, v8, v9);
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, v11, v10);
  if (v7 >= objc_msgSend_count(RowArrayForSection, v13, v14))
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v16 = objc_msgSend_objectAtIndex_(RowArrayForSection, v15, v7);
    v18 = objc_msgSend_objectForKey_(v16, v17, @"tag");
    if (v18)
    {
      if (tag)
      {
        *tag = objc_msgSend_integerValue(v18, v19, v20);
      }

      LOBYTE(v18) = 1;
    }
  }

  return v18;
}

- (BOOL)textFieldHasVerifierAtIndexPath:(id)path
{
  v11 = 0;
  v3 = objc_msgSend_tagOfCellAtIndexPath_tag_(self, a2, path, &v11);
  if ((v11 - 1987203159) < 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    v9 = "NO";
    if (v8)
    {
      v9 = "YES";
    }

    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldHasVerifierAtIndexPath:]", 800, "returning %s\n", v4, v5, v6, v7, v9);
  }

  return v8;
}

- (void)setVerifierCellAccessoryType:(int)type forCellsAtIndexPaths:(id)paths
{
  v5 = *&type;
  v43 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, a2, &v38, v42, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v39;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v39 != v11)
      {
        objc_enumerationMutation(paths);
      }

      v13 = *(*(&v38 + 1) + 8 * v12);
      v14 = objc_msgSend_row(v13, v8, v9);
      v17 = objc_msgSend_section(v13, v15, v16);
      SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, v18, v17);
      if (!SectionDictForSection)
      {
        break;
      }

      v21 = objc_msgSend_objectForKey_(SectionDictForSection, v20, @"sectionRows");
      if (v14 < objc_msgSend_count(v21, v22, v23))
      {
        v24 = objc_msgSend_objectAtIndex_(v21, v8, v14);
        v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, v5);
        objc_msgSend_setObject_forKey_(v24, v27, v26, @"verifierAccessory");
        if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
        {
          v30 = objc_msgSend_section(v13, v28, v29);
          sub_23EB75374(&dword_27E382D08, "[TableViewManager setVerifierCellAccessoryType:forCellsAtIndexPaths:]", 800, "section %d, row %d, type = %d\n", v31, v32, v33, v34, v30);
        }

        v35 = objc_msgSend_managedTableView(self, v28, v29);
        v37 = objc_msgSend_cellForRowAtIndexPath_(v35, v36, v13);
        if (v37)
        {
          objc_msgSend_setVerifierAccessoryView_forCell_(self, v8, v5, v37);
        }
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(paths, v8, &v38, v42, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (BOOL)verifyStr1:(id)str1 forTag1:(unint64_t)tag1 matchesStr2:(id)str2 forTag2:(unint64_t)tag2
{
  v9 = objc_msgSend_indexPathOfCellWithTag_(self, a2, tag1);
  v11 = objc_msgSend_indexPathOfCellWithTag_(self, v10, tag2);
  LOBYTE(tag2) = 0;
  if (v9)
  {
    v14 = v11;
    if (v11)
    {
      LODWORD(tag2) = objc_msgSend_isEqualToString_(str1, v12, str2);
      if (tag2)
      {
        v19 = objc_msgSend_length(str1, v15, v16) ? 4 * (objc_msgSend_length(str2, v17, v18) != 0) : 0;
      }

      else
      {
        v20 = objc_msgSend_length(str2, v15, v16);
        v19 = v20 >= objc_msgSend_length(str1, v21, v22) ? 1 : 2;
      }

      v23 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v17, v9, v14, 0);
      objc_msgSend_setVerifierCellAccessoryType_forCellsAtIndexPaths_(self, v24, v19, v23);
      if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
      {
        v29 = "NO";
        if (tag2)
        {
          v29 = "YES";
        }

        sub_23EB75374(&dword_27E382D08, "[TableViewManager verifyStr1:forTag1:matchesStr2:forTag2:]", 800, "returning match = %s\n", v25, v26, v27, v28, v29);
      }
    }
  }

  return tag2;
}

- (BOOL)textFieldVerifiedAtIndexPath:(id)path
{
  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldVerifiedAtIndexPath:]", 800, "\n", v3, v4, v5, v6, v21);
  }

  if (objc_msgSend_textFieldHasVerifierAtIndexPath_(self, a2, path))
  {
    ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(self, v9, @"editTextView", 1987203159);
    v16 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(self, v15, @"editTextView", 1987203160);
    v18 = 1;
    if (ValueForFirstItemOfType_inCellWithTag)
    {
      v10 = v16;
      if (v16)
      {
        v18 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(self, v17, ValueForFirstItemOfType_inCellWithTag, 1987203159, v16, 1987203160);
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
  {
    v19 = "NO";
    if (v18)
    {
      v19 = "YES";
    }

    sub_23EB75374(&dword_27E382D08, "[TableViewManager textFieldVerifiedAtIndexPath:]", 800, "returning %s\n", v10, v11, v12, v13, v19);
  }

  return v18;
}

+ (id)boldSystemLabelFont
{
  v3 = sub_23EC132F8(self, a2, v2);
  v4 = MEMORY[0x277D74300];
  objc_msgSend_labelFontSize(MEMORY[0x277D74300], v5, v6);
  if (v3)
  {

    return objc_msgSend_systemFontOfSize_(v4, v7, v8);
  }

  else
  {

    return objc_msgSend_boldSystemFontOfSize_(v4, v7, v8);
  }
}

+ (id)systemLabelFont
{
  sub_23EC132F8(self, a2, v2);
  v3 = MEMORY[0x277D74300];
  objc_msgSend_labelFontSize(MEMORY[0x277D74300], v4, v5);

  return objc_msgSend_systemFontOfSize_(v3, v6, v7);
}

+ (id)smallSystemLabelFont
{
  v3 = sub_23EC132F8(self, a2, v2);
  v6 = MEMORY[0x277D74300];
  if (v3)
  {
    objc_msgSend_smallSystemFontSize(MEMORY[0x277D74300], v4, v5);
  }

  else
  {
    objc_msgSend_labelFontSize(MEMORY[0x277D74300], v4, v5);
    v9 = v10 + -4.0;
  }

  return objc_msgSend_systemFontOfSize_(v6, v7, v8, v9);
}

- (BOOL)textFieldIsSecureAndUnchanged:(id)unchanged
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) textFieldIsSecureAndUnchanged:]", 800, "textField %@\n", v3, v4, v5, v6, unchanged);
  }

  v9 = MEMORY[0x277CCAA70];
  v10 = objc_msgSend_tag(unchanged, a2, unchanged) >> 16;
  v13 = objc_msgSend_tag(unchanged, v11, v12);
  v15 = objc_msgSend_indexPathForRow_inSection_(v9, v14, v10, v13);
  if (!objc_msgSend_isSecureTextEntry(unchanged, v16, v17))
  {
    return 0;
  }

  CellDictForCellAtIndexPath = objc_msgSend_getCellDictForCellAtIndexPath_(self, v18, v15);
  InfoForItemOfType_atItemTypeIndex_inCell = objc_msgSend_getInfoForItemOfType_atItemTypeIndex_inCell_(self, v20, @"editTextView", 0, CellDictForCellAtIndexPath);
  v24 = objc_msgSend_text(unchanged, v22, v23);
  v26 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v25, @"startValue");
  if (!objc_msgSend_isEqualToString_(v24, v27, v26))
  {
    return 0;
  }

  v30 = objc_msgSend_text(unchanged, v28, v29);
  v33 = objc_msgSend_objectForKey_(InfoForItemOfType_atItemTypeIndex_inCell, v31, @"currentValue");

  return objc_msgSend_isEqualToString_(v30, v32, v33);
}

- (void)deferedTouchInCellAtIndexPath:(id)path
{
  if (path)
  {
    if (objc_msgSend_delegate(self, a2, path))
    {
      objc_msgSend_delegate(self, v5, v6);
      if (objc_opt_respondsToSelector())
      {
        v9 = objc_msgSend_delegate(self, v7, v8);

        objc_msgSend_touchInCellAtIndexPath_(v9, v10, path);
      }
    }
  }
}

- (id)getCellDictForCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_row(path, a2, path);
  v8 = objc_msgSend_section(path, v6, v7);
  RowArrayForSection = objc_msgSend_getRowArrayForSection_(self, v9, v8);
  if (!RowArrayForSection)
  {
    return 0;
  }

  v13 = RowArrayForSection;
  if (v5 >= objc_msgSend_count(RowArrayForSection, v11, v12))
  {
    return 0;
  }

  return objc_msgSend_objectAtIndex_(v13, v14, v5);
}

- (void)reloadSection:(unint64_t)section
{
  if (!self->_handlingBulkUpdate)
  {
    if (dword_27E382CC8 <= 800 && (dword_27E382CC8 != -1 || sub_23EB74AC8(&dword_27E382CC8, 0x320u)))
    {
      v6 = objc_msgSend_managedTableView(self, a2, section);
      sub_23EB75374(&dword_27E382CC8, "[TableViewManager(private) reloadSection:]", 800, "managedTableView %@\n", v7, v8, v9, v10, v6);
    }

    managedTableView = self->_managedTableView;
    v13 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, section);

    objc_msgSend_reloadSections_withRowAnimation_(managedTableView, v12, v13, 0);
  }
}

- (id)getSectionDictForSection:(int64_t)section
{
  v4 = objc_msgSend_objectForKey_(self->_tableDescriptorDict, a2, @"tableSectionArray");
  if (objc_msgSend_count(v4, v5, v6) <= section)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndex_(v4, v7, section);
}

- (id)getDescriptorObjectForKey:(id)key inSection:(int64_t)section
{
  result = objc_msgSend_getSectionDictForSection_(self, a2, section);
  if (result)
  {

    return objc_msgSend_objectForKey_(result, v6, key);
  }

  return result;
}

- (void)setDescriptorObject:(id)object forKey:(id)key inSection:(int64_t)section
{
  SectionDictForSection = objc_msgSend_getSectionDictForSection_(self, a2, section);
  if (SectionDictForSection)
  {
    if (object)
    {

      objc_msgSend_setObject_forKey_(SectionDictForSection, v8, object, key);
    }

    else
    {

      objc_msgSend_removeObjectForKey_(SectionDictForSection, v8, key);
    }
  }
}

- (void)setImageViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setImageViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v36);
  }

  objc_msgSend_frame(value, a2, value);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = objc_msgSend_objectForKey_(info, v16, @"currentValue");
  objc_msgSend_setImage_(value, v18, v17);
  if (v17)
  {
    v21 = objc_msgSend_image(value, v19, v20);
    objc_msgSend_size(v21, v22, v23);
    v25 = v24;
    v28 = objc_msgSend_image(value, v26, v27);
    objc_msgSend_size(v28, v29, v30);
    v15 = v33;
  }

  else
  {
    v34 = objc_msgSend_objectForKey_(info, v19, @"defaultHeight");
    v25 = 0.0;
    if (v34)
    {
      objc_msgSend_floatValue(v34, v31, v32);
      v15 = v35;
    }
  }

  objc_msgSend_setFrame_(value, v31, v32, v11, v13, v25, v15);
}

- (id)imageView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) imageView:]", 800, "\n", v3, v4, v5, v6, v12);
  }

  v9 = objc_alloc_init(MEMORY[0x277D755E8]);
  objc_msgSend_setImageViewValue_usingItemInfo_(self, v10, v9, view);
  return v9;
}

- (void)setLabelViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setLabelViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v19);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  objc_msgSend_setText_(value, v11, v10);
  if (v10 && (v14 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v12, v13), (v16 = objc_msgSend_componentsSeparatedByCharactersInSet_(v10, v15, v14)) != 0))
  {
    v18 = objc_msgSend_count(v16, v12, v17);
  }

  else
  {
    v18 = 1;
  }

  objc_msgSend_setNumberOfLines_(value, v12, v18);
}

- (id)labelView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) labelView:]", 800, "\n", v3, v4, v5, v6, v51);
  }

  v9 = objc_alloc_init(MEMORY[0x277D756B8]);
  v12 = objc_msgSend_clearColor(MEMORY[0x277D75348], v10, v11);
  objc_msgSend_setBackgroundColor_(v9, v13, v12);
  objc_msgSend_setLabelViewValue_usingItemInfo_(self, v14, v9, view);
  v16 = objc_msgSend_objectForKey_(view, v15, @"font");
  if (!v16)
  {
    v16 = objc_msgSend_boldSystemLabelFont(TableViewManager, v17, v18);
  }

  objc_msgSend_setFont_(v9, v17, v16);
  v20 = objc_msgSend_valueForKey_(view, v19, @"itemEnabled");
  if (v20)
  {
    v23 = objc_msgSend_BOOLValue(v20, v21, v22);
    v25 = objc_msgSend_objectForKey_(view, v24, @"color");
    if ((v23 & 1) == 0)
    {
      objc_msgSend_setTextColor_(v9, v26, self->_subtitleColor);
      goto LABEL_14;
    }
  }

  else
  {
    v25 = objc_msgSend_objectForKey_(view, v21, @"color");
  }

  detailTextColor = v25;
  if (!v25)
  {
    detailTextColor = self->_detailTextColor;
  }

  objc_msgSend_setTextColor_(v9, v26, detailTextColor);
LABEL_14:
  v29 = objc_msgSend_objectForKey_(view, v27, @"alignment");
  if (v29)
  {
    v32 = objc_msgSend_integerValue(v29, v30, v31);
    objc_msgSend_setTextAlignment_(v9, v33, v32);
  }

  else
  {
    objc_msgSend_setTextAlignment_(v9, v30, 4);
  }

  objc_msgSend_setAdjustsFontSizeToFitWidth_(v9, v34, 1);
  v37 = objc_msgSend_font(v9, v35, v36);
  objc_msgSend_pointSize(v37, v38, v39);
  v41 = v40 + -4.0;
  v44 = objc_msgSend_font(v9, v42, v43);
  objc_msgSend_pointSize(v44, v45, v46);
  objc_msgSend_setMinimumScaleFactor_(v9, v48, v49, v41 / v47);
  return v9;
}

- (void)setMultilineLabelViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setMultilineLabelViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v12);
  }

  v11 = objc_msgSend_objectForKey_(info, a2, @"currentValue");

  objc_msgSend_setText_(value, v10, v11);
}

- (id)multilineLabelView:(id)view
{
  v3 = objc_msgSend_labelView_(self, a2, view);
  objc_msgSend_setNumberOfLines_(v3, v4, 0);
  return v3;
}

- (void)setEditTextViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setEditTextViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v12);
  }

  v11 = objc_msgSend_objectForKey_(info, a2, @"currentValue");

  objc_msgSend_setText_(value, v10, v11);
}

- (id)editTextView:(id)view
{
  v5 = objc_alloc(MEMORY[0x277D75BB8]);
  v8 = objc_msgSend_initWithFrame_(v5, v6, v7, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_setBorderStyle_(v8, v9, 0);
  v12 = objc_msgSend_clearColor(MEMORY[0x277D75348], v10, v11);
  objc_msgSend_setBackgroundColor_(v8, v13, v12);
  objc_msgSend_setAutocorrectionType_(v8, v14, 1);
  objc_msgSend_setAutocapitalizationType_(v8, v15, 0);
  objc_msgSend_setEnablesReturnKeyAutomatically_(v8, v16, 1);
  objc_msgSend_setDelegate_(v8, v17, self);
  v19 = objc_msgSend_objectForKey_(view, v18, @"placeholder");
  objc_msgSend_setPlaceholder_(v8, v20, v19);
  objc_msgSend_setEditTextViewValue_usingItemInfo_(self, v21, v8, view);
  v23 = objc_msgSend_objectForKey_(view, v22, @"secure");
  if (v23)
  {
    v26 = objc_msgSend_BOOLValue(v23, v24, v25);
    objc_msgSend_setSecureTextEntry_(v8, v27, v26);
  }

  else
  {
    objc_msgSend_setSecureTextEntry_(v8, v24, 0);
  }

  v29 = objc_msgSend_objectForKey_(view, v28, @"textFieldViewMode");
  if (v29)
  {
    v32 = objc_msgSend_integerValue(v29, v30, v31);
    objc_msgSend_setClearButtonMode_(v8, v33, v32);
  }

  else
  {
    objc_msgSend_setClearButtonMode_(v8, v30, 0);
  }

  v35 = objc_msgSend_objectForKey_(view, v34, @"font");
  if (!v35)
  {
    v35 = objc_msgSend_systemLabelFont(TableViewManager, v36, v37);
  }

  objc_msgSend_setFont_(v8, v36, v35);
  v39 = objc_msgSend_objectForKey_(view, v38, @"color");
  if (v39)
  {
    objc_msgSend_setTextColor_(v8, v40, v39);
  }

  else
  {
    objc_msgSend_setTextColor_(v8, v40, self->_editTextColor);
  }

  v42 = objc_msgSend_objectForKey_(view, v41, @"keyboardType");
  if (v42)
  {
    v45 = objc_msgSend_integerValue(v42, v43, v44);
    objc_msgSend_setKeyboardType_(v8, v46, v45);
  }

  v47 = objc_msgSend_objectForKey_(view, v43, @"returnKeyType");
  if (v47)
  {
    v50 = objc_msgSend_integerValue(v47, v48, v49);
    objc_msgSend_setReturnKeyType_(v8, v51, v50);
  }

  v52 = objc_msgSend_objectForKey_(view, v48, @"alignment");
  if (v52)
  {
    v56 = objc_msgSend_integerValue(v52, v53, v54);
  }

  else
  {
    v57 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], v53, v54);
    v56 = 2 * (objc_msgSend_userInterfaceLayoutDirection(v57, v58, v59) == 0);
  }

  objc_msgSend_setTextAlignment_(v8, v55, v56);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(v8, v60, 1);
  v63 = objc_msgSend_font(v8, v61, v62);
  objc_msgSend_pointSize(v63, v64, v65);
  objc_msgSend_setMinimumFontSize_(v8, v67, v68, v66 + -4.0);
  return v8;
}

- (void)setSwitchViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setSwitchViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v14);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  v13 = objc_msgSend_BOOLValue(v10, v11, v12);

  MEMORY[0x2821F9670](value, sel_setOn_, v13);
}

- (id)switchView:(id)view
{
  v5 = objc_alloc(MEMORY[0x277D75AE8]);
  v8 = objc_msgSend_initWithFrame_(v5, v6, v7, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_addTarget_action_forControlEvents_(v8, v9, self, sel_switchAction_, 4096);
  v12 = objc_msgSend_clearColor(MEMORY[0x277D75348], v10, v11);
  objc_msgSend_setBackgroundColor_(v8, v13, v12);
  objc_msgSend_setSwitchViewValue_usingItemInfo_(self, v14, v8, view);
  return v8;
}

- (void)setActivityViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setActivityViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v15);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  if (objc_msgSend_BOOLValue(v10, v11, v12))
  {

    objc_msgSend_startAnimating(value, v13, v14);
  }

  else
  {

    objc_msgSend_stopAnimating(value, v13, v14);
  }
}

- (id)activityView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) activityView:]", 800, "\n", v3, v4, v5, v6, v15);
  }

  v9 = objc_alloc(MEMORY[0x277D750E8]);
  v11 = objc_msgSend_initWithActivityIndicatorStyle_(v9, v10, 100);
  objc_msgSend_setHidesWhenStopped_(v11, v12, 1);
  objc_msgSend_setActivityViewValue_usingItemInfo_(self, v13, v11, view);
  return v11;
}

- (void)setButtonViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setButtonViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v12);
  }

  v11 = objc_msgSend_objectForKey_(info, a2, @"currentValue");

  objc_msgSend_setTitle_forState_(value, v10, v11, 0);
}

- (id)buttonView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) buttonView:]", 800, "\n", v3, v4, v5, v6, v22);
  }

  v9 = objc_msgSend_objectForKey_(view, a2, @"buttonImage");
  v11 = objc_msgSend_objectForKey_(view, v10, @"buttonSelectedImage");
  v14 = objc_msgSend_buttonWithType_(MEMORY[0x277D75220], v12, (v9 | v11) == 0);
  if (v9)
  {
    v15 = objc_msgSend_imageNamed_(MEMORY[0x277D755B8], v13, v9);
    objc_msgSend_setImage_forState_(v14, v16, v15, 0);
  }

  if (v11)
  {
    v17 = objc_msgSend_imageNamed_(MEMORY[0x277D755B8], v13, v11);
    objc_msgSend_setImage_forState_(v14, v18, v17, 1);
  }

  objc_msgSend_addTarget_action_forControlEvents_(v14, v13, self, sel_buttonAction_, 64);
  objc_msgSend_setButtonViewValue_usingItemInfo_(self, v19, v14, view);
  objc_msgSend_setTitleColor_forState_(v14, v20, self->_detailTextColor, 0);
  return v14;
}

- (id)segmentedControlView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) segmentedControlView:]", 800, "\n", v3, v4, v5, v6, v28);
  }

  v9 = objc_msgSend_valueForKey_(view, a2, @"segmentedControlItems");
  if (!v9)
  {
    return 0;
  }

  v11 = v9;
  v12 = objc_msgSend_valueForKey_(view, v10, @"currentValue");
  v14 = objc_msgSend_valueForKey_(view, v13, @"itemEnabled");
  v15 = objc_alloc(MEMORY[0x277D75A08]);
  v17 = objc_msgSend_initWithItems_(v15, v16, v11);
  objc_msgSend_addTarget_action_forControlEvents_(v17, v18, self, sel_segmentedControlValueChanged_, 4096);
  v21 = objc_msgSend_integerValue(v12, v19, v20);
  objc_msgSend_setSelectedSegmentIndex_(v17, v22, v21);
  if (v14)
  {
    v25 = objc_msgSend_BOOLValue(v14, v23, v24);
    objc_msgSend_setEnabled_(v17, v26, v25);
  }

  else
  {
    objc_msgSend_setEnabled_(v17, v23, 1);
  }

  return v17;
}

- (void)setProgressViewValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setProgressViewValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v14);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  if (v10)
  {
    objc_msgSend_floatValue(v10, v11, v12);

    MEMORY[0x2821F9670](value, sel_setProgress_, v13);
  }
}

- (id)progressView:(id)view
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) progressView:]", 800, "\n", v3, v4, v5, v6, v14);
  }

  v9 = objc_alloc(MEMORY[0x277D758F0]);
  v11 = objc_msgSend_initWithProgressViewStyle_(v9, v10, 0);
  objc_msgSend_setProgressViewValue_usingItemInfo_(self, v12, v11, view);
  return v11;
}

- (void)setDatePickerValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setDatePickerValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v22);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  if (v10)
  {
    objc_msgSend_setDate_(value, v11, v10);
  }

  v12 = objc_msgSend_valueForKey_(info, v11, @"datePickerMode");
  v15 = objc_msgSend_integerValue(v12, v13, v14);
  objc_msgSend_setDatePickerMode_(value, v16, v15);
  v18 = objc_msgSend_valueForKey_(info, v17, @"minValue");
  objc_msgSend_setMinimumDate_(value, v19, v18);
  v21 = objc_msgSend_valueForKey_(info, v20, @"maxValue");

  MEMORY[0x2821F9670](value, sel_setMaximumDate_, v21);
}

- (id)datePicker:(id)picker
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) datePicker:]", 800, "\n", v3, v4, v5, v6, v16);
  }

  v9 = objc_alloc(MEMORY[0x277D753E8]);
  v12 = objc_msgSend_initWithFrame_(v9, v10, v11, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_addTarget_action_forControlEvents_(v12, v13, self, sel_selectedDateChanged_, 4096);
  objc_msgSend_setDatePickerValue_usingItemInfo_(self, v14, v12, picker);
  return v12;
}

- (void)setVerifierAccessoryView:(int)view forCell:(id)cell
{
  isEditing = objc_msgSend_isEditing(cell, a2, *&view);
  if (dword_27E382D08 <= 800)
  {
    if (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u))
    {
      v13 = "is NOT";
      if (isEditing)
      {
        v13 = "is";
      }

      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell %s editing\n", v8, v9, v10, v11, v13);
    }

    if (dword_27E382D08 <= 800)
    {
      if (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u))
      {
        v14 = objc_msgSend_editingAccessoryView(cell, v6, v7);
        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell.editingAccessoryView = %@\n", v15, v16, v17, v18, v14);
      }

      if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
      {
        v19 = objc_msgSend_accessoryView(cell, v6, v7);
        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "cell.accessoryView = %@\n", v20, v21, v22, v23, v19);
      }
    }
  }

  if (view <= 1)
  {
    if (view)
    {
      if (view != 1)
      {
        return;
      }

      if (dword_27E382D08 <= 800)
      {
        if (dword_27E382D08 == -1)
        {
          v24 = @"NotVerifiedFlat.png";
          if (!sub_23EB74AC8(&dword_27E382D08, 0x320u))
          {
            goto LABEL_62;
          }
        }

        else
        {
          v24 = @"NotVerifiedFlat.png";
        }

        v26 = "verifier accessory type = kVerifierAccessoryTypeInvalid for cell %@\n";
LABEL_61:
        sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, v26, v8, v9, v10, v11, cell);
LABEL_62:
        v27 = MEMORY[0x277CCA8D8];
        v28 = objc_opt_class();
        v30 = objc_msgSend_bundleForClass_(v27, v29, v28);
        v32 = objc_msgSend_imageNamed_inBundle_(ImageStore, v31, v24, v30);
        if (v32)
        {
          v33 = v32;
          v34 = objc_alloc(MEMORY[0x277D755E8]);
          v39 = objc_msgSend_initWithImage_(v34, v35, v33);
          if (isEditing)
          {
            objc_msgSend_setEditingAccessoryType_(cell, v36, 0);
            objc_msgSend_setEditingAccessoryView_(cell, v37, v39);
          }

          else
          {
            objc_msgSend_setAccessoryType_(cell, v36, 0);
            objc_msgSend_setAccessoryView_(cell, v38, v39);
          }
        }

        return;
      }

LABEL_39:
      v24 = @"NotVerifiedFlat.png";
      goto LABEL_62;
    }

    if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeNone for cell %@\n", v8, v9, v10, v11, cell);
    }

    if (isEditing && objc_msgSend_editingAccessoryView(cell, v6, v7))
    {

      objc_msgSend_setEditingAccessoryView_(cell, v6, 0);
    }

    else if (objc_msgSend_accessoryView(cell, v6, v7))
    {

      objc_msgSend_setAccessoryView_(cell, v25, 0);
    }
  }

  else
  {
    if (view != 2)
    {
      if (view != 3)
      {
        if (view != 4)
        {
          return;
        }

        if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeSmartValid for cell %@\n", v8, v9, v10, v11, cell);
        }

        if ((!isEditing || !objc_msgSend_editingAccessoryView(cell, v6, v7)) && !objc_msgSend_accessoryView(cell, v6, v7))
        {
          return;
        }

        goto LABEL_43;
      }

      if (dword_27E382D08 > 800)
      {
LABEL_43:
        v24 = @"VerifiedFlat.png";
        goto LABEL_62;
      }

      if (dword_27E382D08 == -1)
      {
        v24 = @"VerifiedFlat.png";
        if (!sub_23EB74AC8(&dword_27E382D08, 0x320u))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v24 = @"VerifiedFlat.png";
      }

      v26 = "verifier accessory type = kVerifierAccessoryTypeValid for cell %@\n";
      goto LABEL_61;
    }

    if (dword_27E382D08 <= 800 && (dword_27E382D08 != -1 || sub_23EB74AC8(&dword_27E382D08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382D08, "[TableViewManager(private) setVerifierAccessoryView:forCell:]", 800, "verifier accessory type = kVerifierAccessoryTypeSmartInvalid for cell %@\n", v8, v9, v10, v11, cell);
    }

    if (isEditing && objc_msgSend_editingAccessoryView(cell, v6, v7) || objc_msgSend_accessoryView(cell, v6, v7))
    {
      goto LABEL_39;
    }
  }
}

- (void)setUnreadBubbleCountValue:(id)value usingItemInfo:(id)info
{
  if (dword_27E382D88 <= 800 && (dword_27E382D88 != -1 || sub_23EB74AC8(&dword_27E382D88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382D88, "[TableViewManager(private) setUnreadBubbleCountValue:usingItemInfo:]", 800, "\n", v4, v5, v6, v7, v15);
  }

  v10 = objc_msgSend_objectForKey_(info, a2, @"currentValue");
  if (v10)
  {
    v14 = objc_msgSend_integerValue(v10, v11, v12);

    objc_msgSend_setCount_(value, v13, v14);
  }
}

- (id)unreadBubbleCount:(id)count
{
  if (dword_27E382C88 <= 800 && (dword_27E382C88 != -1 || sub_23EB74AC8(&dword_27E382C88, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C88, "[TableViewManager(private) unreadBubbleCount:]", 800, "\n", v3, v4, v5, v6, v15);
  }

  v9 = [UnreadBubbleCount alloc];
  v12 = objc_msgSend_initWithFrame_(v9, v10, v11, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
  objc_msgSend_setUnreadBubbleCountValue_usingItemInfo_(self, v13, v12, count);
  return v12;
}

@end