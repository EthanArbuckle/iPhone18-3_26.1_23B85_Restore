@interface AUSetupCodeUIAlert
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)dealloc;
- (void)formatSetupCodeWithSender:(id)a3;
- (void)prepareToShow;
@end

@implementation AUSetupCodeUIAlert

- (void)dealloc
{
  self->_selectionRange = 0;
  v3.receiver = self;
  v3.super_class = AUSetupCodeUIAlert;
  [(AUUIAlert *)&v3 dealloc];
}

- (void)prepareToShow
{
  v12.receiver = self;
  v12.super_class = AUSetupCodeUIAlert;
  [(AUTextFieldUIAlert *)&v12 prepareToShow];
  self->_selectionRange = 0;
  v5 = objc_msgSend_textField(self, v3, v4);
  objc_msgSend_setKeyboardType_(v5, v6, 4);
  v7 = sub_23EB6CD3C(@"kSetupCodePlaceholder", @"SetupRecommendations");
  objc_msgSend_setPlaceholder_(v5, v8, v7);
  objc_msgSend_setDelegate_(v5, v9, self);
  objc_msgSend_addTarget_action_forControlEvents_(v5, v10, self, sel_formatSetupCodeWithSender_, 0x20000);
  objc_msgSend_enableOKAction_(self, v11, 0);
}

- (void)formatSetupCodeWithSender:(id)a3
{
  v5 = MEMORY[0x277CCAB68];
  v6 = objc_msgSend_text(a3, a2, a3);
  v9 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v7, v8);
  v12 = objc_msgSend_invertedSet(v9, v10, v11);
  v14 = objc_msgSend_componentsSeparatedByCharactersInSet_(v6, v13, v12);
  v16 = objc_msgSend_componentsJoinedByString_(v14, v15, &stru_285145FE8);
  v18 = objc_msgSend_stringWithString_(v5, v17, v16);
  if (objc_msgSend_length(v18, v19, v20) >= 9)
  {
    v23 = MEMORY[0x277CCAB68];
    v24 = objc_msgSend_substringToIndex_(v18, v21, 7);
    v18 = objc_msgSend_stringWithString_(v23, v25, v24);
  }

  v26 = objc_msgSend_length(v18, v21, v22) == 8;
  objc_msgSend_enableOKAction_(self, v27, v26);
  if (objc_msgSend_length(v18, v28, v29) == 3)
  {
    objc_msgSend_appendFormat_(v18, v30, @"-");
  }

  else if (objc_msgSend_length(v18, v30, v31) >= 4)
  {
    objc_msgSend_insertString_atIndex_(v18, v32, @"-", 3);
  }

  if (objc_msgSend_length(v18, v32, v33) == 6)
  {
    objc_msgSend_appendFormat_(v18, v34, @"-");
  }

  else if (objc_msgSend_length(v18, v34, v35) >= 7)
  {
    objc_msgSend_insertString_atIndex_(v18, v36, @"-", 6);
  }

  objc_msgSend_setText_(a3, v36, v18);
  selectionRange = self->_selectionRange;
  if (selectionRange)
  {

    MEMORY[0x2821F9670](a3, sel_setSelectedTextRange_, selectionRange);
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  location = a4.location;
  v9 = objc_msgSend_text(a3, a2, a3, a4.location, a4.length);

  self->_selectionRange = 0;
  if (objc_msgSend_isEqualToString_(a5, v10, &stru_285145FE8))
  {
    v13 = objc_msgSend_selectedTextRange(a3, v11, v12);
    v16 = objc_msgSend_start(v13, v14, v15);
    v18 = objc_msgSend_positionFromPosition_offset_(a3, v17, v16, -1);
    v21 = objc_msgSend_selectedTextRange(a3, v19, v20);
    v24 = objc_msgSend_start(v21, v22, v23);
    v26 = objc_msgSend_positionFromPosition_offset_(a3, v25, v24, -1);
    v28 = objc_msgSend_textRangeFromPosition_toPosition_(a3, v27, v18, v26);
    self->_selectionRange = objc_msgSend_copy(v28, v29, v30);
    LOBYTE(v31) = 1;
    return v31;
  }

  if (location != objc_msgSend_length(v9, v11, v12))
  {
    v34 = objc_msgSend_substringFromIndex_(v9, v32, location);
    v35 = 1;
    v37 = objc_msgSend_substringToIndex_(v34, v36, 1);
    if (objc_msgSend_isEqualToString_(v37, v38, @"-"))
    {
      if (location + 1 == objc_msgSend_length(v9, v32, v33))
      {
        v39 = 0;
LABEL_9:
        self->_selectionRange = v39;
        goto LABEL_10;
      }

      v35 = 2;
    }

    v40 = objc_msgSend_selectedTextRange(a3, v32, v33);
    v43 = objc_msgSend_start(v40, v41, v42);
    v45 = objc_msgSend_positionFromPosition_offset_(a3, v44, v43, v35);
    v48 = objc_msgSend_selectedTextRange(a3, v46, v47);
    v51 = objc_msgSend_end(v48, v49, v50);
    v53 = objc_msgSend_positionFromPosition_offset_(a3, v52, v51, v35);
    v55 = objc_msgSend_textRangeFromPosition_toPosition_(a3, v54, v45, v53);
    v39 = objc_msgSend_copy(v55, v56, v57);
    goto LABEL_9;
  }

LABEL_10:
  v58 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v32, v33);
  v61 = objc_msgSend_invertedSet(v58, v59, v60);
  v63 = objc_msgSend_componentsSeparatedByCharactersInSet_(v9, v62, v61);
  v65 = objc_msgSend_componentsJoinedByString_(v63, v64, &stru_285145FE8);
  v68 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v66, v67);
  v71 = objc_msgSend_invertedSet(v68, v69, v70);
  v73 = objc_msgSend_componentsSeparatedByCharactersInSet_(a5, v72, v71);
  v75 = objc_msgSend_componentsJoinedByString_(v73, v74, &stru_285145FE8);
  v31 = objc_msgSend_length(v75, v76, v77);
  if (v31)
  {
    v80 = objc_msgSend_length(v65, v78, v79);
    LOBYTE(v31) = (objc_msgSend_length(v75, v81, v82) + v80) < 9;
  }

  return v31;
}

@end