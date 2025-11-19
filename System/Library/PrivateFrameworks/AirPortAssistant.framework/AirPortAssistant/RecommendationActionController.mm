@interface RecommendationActionController
+ (RecommendationActionController)recommendationActionControllerWithTableManager:(id)a3 andAssistantUIViewController:(id)a4;
- (BOOL)isPrimaryRecommendation;
- (id)getSectionInfoWithLongStrings:(BOOL)a3;
- (void)selectPrimaryRecommendation;
@end

@implementation RecommendationActionController

+ (RecommendationActionController)recommendationActionControllerWithTableManager:(id)a3 andAssistantUIViewController:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v4 = objc_alloc_init(RecommendationActionController);
    objc_msgSend_setSectionIdentifier_(v4, v7, @"ActionTableSection");
    objc_msgSend_setTableManager_(v4, v8, a3);
    v11 = objc_msgSend_recommendationParamDict(a4, v9, v10);
    v13 = objc_msgSend_objectForKey_(v11, v12, @"actionKey");
    objc_msgSend_setActionKey_(v4, v14, v13);
  }

  return v4;
}

- (id)getSectionInfoWithLongStrings:(BOOL)a3
{
  v3 = a3;
  valid = sub_23EB6CD3C(self->actionKey, qword_27E383800);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  if (v3)
  {
    v11 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v12 = MEMORY[0x277CCACA8];
    v13 = sub_23EB6CD3C(@"RecommendedInParens", qword_27E383800);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v12, v14, v11, @"%@%@", 0, valid, v13);
  }

  v15 = objc_msgSend_tableManager(self, v8, v9);
  RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v15, v16, 0, valid, 0, 1349675373);
  objc_msgSend_addObject_(v10, v18, RowStyleBasicWithImage_text1_text2_withTag);
  v21 = objc_msgSend_tableManager(self, v19, v20);
  v22 = sub_23EB6CD3C(@"OtherOptionsEllipsis", qword_27E383800);
  v24 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v21, v23, 0, v22, 0, 1299149413);
  objc_msgSend_addObject_(v10, v25, v24);
  v26 = MEMORY[0x277CBEB38];
  v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, 1);
  v30 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, 1349675373);
  return objc_msgSend_dictionaryWithObjectsAndKeys_(v26, v31, v10, @"sectionRows", v28, @"sectionIsMenu", v30, @"selectedMenuItemTag", self->sectionIdentifier, @"identifier", 0);
}

- (BOOL)isPrimaryRecommendation
{
  tableManager = self->tableManager;
  v3 = objc_msgSend_indexOfSectionWithIdentifier_(tableManager, a2, self->sectionIdentifier);
  return objc_msgSend_tagOfSelectedRowInMenuSection_(tableManager, v4, v3) == 1349675373;
}

- (void)selectPrimaryRecommendation
{
  tableManager = self->tableManager;
  v4 = objc_msgSend_indexPathOfCellWithTag_(tableManager, a2, 1349675373);

  objc_msgSend_selectMenuCellAtIndexPath_(tableManager, v3, v4);
}

@end