@interface CKUploadRequestManagerStateMachine
+ (id)nameFromFunction:(int64_t)a3;
+ (id)nameFromResponseAction:(int64_t)a3;
+ (id)nameFromState:(int64_t)a3;
+ (id)nameFromStateEvent:(int64_t)a3;
- (BOOL)canPerformFunction:(int64_t)a3;
- (CKUploadRequestManagerStateMachine)initWithActionHandler:(id)a3;
- (id)createStateMachine;
- (id)eventHandlerForState:(id)a3 withEnterBlock:(id)a4 exitBlock:(id)a5 eventBlock:(id)a6;
- (void)dealloc;
- (void)dispatchEvent:(int64_t)a3 userInfo:(id)a4;
- (void)start;
- (void)transitionToState:(id)a3 withEvent:(id)a4;
@end

@implementation CKUploadRequestManagerStateMachine

- (id)createStateMachine
{
  v158[12] = *MEMORY[0x1E69E9840];
  v97 = objc_alloc_init(MEMORY[0x1E6999538]);
  v3 = objc_alloc(MEMORY[0x1E6999528]);
  v5 = objc_msgSend_initWithName_parent_(v3, v4, @"Global", 0);
  v6 = objc_alloc(MEMORY[0x1E6999528]);
  v8 = objc_msgSend_initWithName_parent_(v6, v7, @"Root Unregistered", v5);
  v9 = objc_alloc(MEMORY[0x1E6999528]);
  v11 = objc_msgSend_initWithName_parent_(v9, v10, @"Initial", v8);
  v12 = objc_alloc(MEMORY[0x1E6999528]);
  v99 = v8;
  v14 = objc_msgSend_initWithName_parent_(v12, v13, @"Cleared", v8);
  v15 = objc_alloc(MEMORY[0x1E6999528]);
  v17 = objc_msgSend_initWithName_parent_(v15, v16, @"Root Registered", v5);
  v18 = objc_alloc(MEMORY[0x1E6999528]);
  v20 = objc_msgSend_initWithName_parent_(v18, v19, @"Fetching Initial Data", v17);
  v21 = objc_alloc(MEMORY[0x1E6999528]);
  v98 = v17;
  v23 = objc_msgSend_initWithName_parent_(v21, v22, @"Root Initialized", v17);
  v24 = objc_alloc(MEMORY[0x1E6999528]);
  v26 = objc_msgSend_initWithName_parent_(v24, v25, @"Fetching Account ID", v23);
  v27 = objc_alloc(MEMORY[0x1E6999528]);
  v29 = objc_msgSend_initWithName_parent_(v27, v28, @"System Not Ready", v23);
  v30 = objc_alloc(MEMORY[0x1E6999528]);
  v32 = objc_msgSend_initWithName_parent_(v30, v31, @"Root Ready", v23);
  v33 = objc_alloc(MEMORY[0x1E6999528]);
  v94 = objc_msgSend_initWithName_parent_(v33, v34, @"Pending Repair", v32);
  v35 = objc_alloc(MEMORY[0x1E6999528]);
  v93 = objc_msgSend_initWithName_parent_(v35, v36, @"Repairing", v32);
  v38 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v37, v5, &unk_1EFA2F668, &unk_1EFA2F688, &unk_1EFA2F6A8);
  objc_msgSend_setEventHandler_(v5, v39, v38);

  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = sub_188638D78;
  v156[3] = &unk_1E70BF780;
  v40 = v20;
  v157 = v40;
  v42 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v41, v99, &unk_1EFA2F6C8, &unk_1EFA2F6E8, v156);
  objc_msgSend_setEventHandler_(v99, v43, v42);

  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = sub_188638E74;
  v154[3] = &unk_1E70BF780;
  v44 = v14;
  v155 = v44;
  v46 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v45, v11, &unk_1EFA2F708, &unk_1EFA2F728, v154);
  objc_msgSend_setEventHandler_(v11, v47, v46);

  v49 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v48, v44, &unk_1EFA2F748, &unk_1EFA2F768, &unk_1EFA2F788);
  objc_msgSend_setEventHandler_(v44, v50, v49);

  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = sub_188638FF8;
  v151[3] = &unk_1E70BF7A8;
  v96 = v11;
  v152 = v96;
  v51 = v44;
  v153 = v51;
  v53 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v52, v98, &unk_1EFA2F7A8, &unk_1EFA2F7C8, v151);
  objc_msgSend_setEventHandler_(v98, v54, v53);

  v149[0] = 0;
  v149[1] = v149;
  v149[2] = 0x2020000000;
  v150 = 0;
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x2020000000;
  v148 = 0;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v146 = 0;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x2020000000;
  v144 = 0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x2020000000;
  v142 = 0;
  v140[0] = MEMORY[0x1E69E9820];
  v140[1] = 3221225472;
  v140[2] = sub_18863913C;
  v140[3] = &unk_1E70BF7D0;
  v140[4] = v149;
  v140[5] = v147;
  v140[6] = v145;
  v140[7] = v143;
  v140[8] = v141;
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = sub_1886391F8;
  v132[3] = &unk_1E70BF7F8;
  v135 = v149;
  v136 = v147;
  v137 = v145;
  v138 = v143;
  v139 = v141;
  v55 = v26;
  v133 = v55;
  v56 = v29;
  v134 = v56;
  v58 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v57, v40, v140, &unk_1EFA2F7E8, v132);
  objc_msgSend_setEventHandler_(v40, v59, v58);

  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x2020000000;
  v131 = 0;
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = sub_188639618;
  v129[3] = &unk_1E70BF820;
  v129[4] = v130;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = sub_1886396B4;
  v128[3] = &unk_1E70BF820;
  v128[4] = v130;
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = sub_188639770;
  v123[3] = &unk_1E70BF848;
  v127 = v130;
  v60 = v40;
  v124 = v60;
  v61 = v56;
  v125 = v61;
  v95 = v51;
  v126 = v95;
  v63 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v62, v23, v129, v128, v123);
  objc_msgSend_setEventHandler_(v23, v64, v63);

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = sub_188639BEC;
  v120[3] = &unk_1E70BF7A8;
  v65 = v61;
  v121 = v65;
  v66 = v94;
  v122 = v66;
  v68 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v67, v55, &unk_1EFA2F808, &unk_1EFA2F828, v120);
  objc_msgSend_setEventHandler_(v55, v69, v68);

  v118[0] = 0;
  v118[1] = v118;
  v118[2] = 0x2020000000;
  v119 = 0;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x2020000000;
  v117 = 0;
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = sub_188639DE8;
  v112[3] = &unk_1E70BF870;
  v114 = v116;
  v115 = v118;
  v70 = v55;
  v113 = v70;
  v72 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v71, v65, &unk_1EFA2F848, &unk_1EFA2F868, v112);
  objc_msgSend_setEventHandler_(v65, v73, v72);

  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = sub_18863A0E4;
  v109[3] = &unk_1E70BF7A8;
  v74 = v65;
  v110 = v74;
  v75 = v66;
  v111 = v75;
  v77 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v76, v32, &unk_1EFA2F888, &unk_1EFA2F8A8, v109);
  objc_msgSend_setEventHandler_(v32, v78, v77);

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = sub_18863A400;
  v107[3] = &unk_1E70BF780;
  v79 = v93;
  v108 = v79;
  v81 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v80, v75, &unk_1EFA2F8C8, &unk_1EFA2F8E8, v107);
  objc_msgSend_setEventHandler_(v75, v82, v81);

  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v106 = 0;
  v103[4] = v105;
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = sub_18863A5E0;
  v104[3] = &unk_1E70BF820;
  v104[4] = v105;
  v102 = v105;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = sub_18863A664;
  v103[3] = &unk_1E70BF820;
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = sub_18863A718;
  v100[3] = &unk_1E70BF898;
  v83 = v75;
  v101 = v83;
  v85 = objc_msgSend_eventHandlerForState_withEnterBlock_exitBlock_eventBlock_(self, v84, v79, v104, v103, v100);
  objc_msgSend_setEventHandler_(v79, v86, v85);

  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v116, 8);
  _Block_object_dispose(v118, 8);

  _Block_object_dispose(v130, 8);
  _Block_object_dispose(v141, 8);
  _Block_object_dispose(v143, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v147, 8);
  _Block_object_dispose(v149, 8);
  v158[0] = v5;
  v158[1] = v99;
  v158[2] = v96;
  v158[3] = v95;
  v158[4] = v98;
  v158[5] = v60;
  v158[6] = v23;
  v158[7] = v70;
  v158[8] = v74;
  v158[9] = v32;
  v158[10] = v83;
  v158[11] = v79;
  v88 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v87, v158, 12);
  objc_msgSend_setStates_(v97, v89, v88);

  objc_msgSend_setInitialState_(v97, v90, v96);
  v91 = *MEMORY[0x1E69E9840];

  return v97;
}

+ (id)nameFromState:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF928[a3];
  }
}

+ (id)nameFromFunction:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF948[a3];
  }
}

+ (id)nameFromStateEvent:(int64_t)a3
{
  if (a3 > 0x12)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF960[a3];
  }
}

+ (id)nameFromResponseAction:(int64_t)a3
{
  if (a3 > 0x1C)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BF9F8[a3];
  }
}

- (void)dealloc
{
  objc_msgSend_invalidate(self->_stateMachine, a2, v2);
  v4.receiver = self;
  v4.super_class = CKUploadRequestManagerStateMachine;
  [(CKUploadRequestManagerStateMachine *)&v4 dealloc];
}

- (CKUploadRequestManagerStateMachine)initWithActionHandler:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKUploadRequestManagerStateMachine;
  v7 = [(CKUploadRequestManagerStateMachine *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    actionHandler = v7->_actionHandler;
    v7->_actionHandler = v8;

    v12 = objc_msgSend_createStateMachine(v7, v10, v11);
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v12;
  }

  return v7;
}

- (void)start
{
  v5 = objc_msgSend_stateMachine(self, a2, v2);
  objc_msgSend_start(v5, v3, v4);
}

- (void)dispatchEvent:(int64_t)a3 userInfo:(id)a4
{
  v6 = objc_msgSend_mutableCopy(a4, a2, a3);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
  }

  v27 = v10;

  v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v11, v12);
  v16 = objc_msgSend_UUIDString(v13, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v27, v17, v16, @"uuid");

  v18 = objc_alloc(MEMORY[0x1E6999530]);
  v20 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v19, a3);
  v22 = objc_msgSend_initWithName_userInfo_(v18, v21, v20, v27);

  v25 = objc_msgSend_stateMachine(self, v23, v24);
  objc_msgSend_dispatchEvent_(v25, v26, v22);
}

- (BOOL)canPerformFunction:(int64_t)a3
{
  v4 = self;
  v22[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18863AE08;
  v14[3] = &unk_1E70BF8C0;
  objc_copyWeak(v15, &location);
  v15[1] = a3;
  v14[4] = &v16;
  objc_msgSend_setInternalActionHandler_(v4, v5, v14);
  v21 = @"function";
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, a3);
  v22[0] = v7;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v22, &v21, 1);
  objc_msgSend_dispatchEvent_userInfo_(v4, v10, 18, v9);

  objc_msgSend_setInternalActionHandler_(v4, v11, 0);
  LOBYTE(v4) = *(v17 + 24);
  objc_destroyWeak(v15);
  _Block_object_dispose(&v16, 8);
  objc_destroyWeak(&location);
  v12 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

- (id)eventHandlerForState:(id)a3 withEnterBlock:(id)a4 exitBlock:(id)a5 eventBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v13);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_18863B0C8;
  aBlock[3] = &unk_1E70BF500;
  objc_copyWeak(&v30, &location);
  v14 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_18863B2A0;
  v22[3] = &unk_1E70BF908;
  objc_copyWeak(&v27, &location);
  objc_copyWeak(&v28, &from);
  v23 = v10;
  v24 = v14;
  v25 = v11;
  v26 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v14;
  v18 = v10;
  v19 = _Block_copy(v22);
  v20 = _Block_copy(v19);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v20;
}

- (void)transitionToState:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  if (a4)
  {
    objc_msgSend_setEventCausingTransition_(self, v6, a4);
  }

  else
  {
    objc_msgSend_setEventCausingTransition_(self, v6, 0);
  }

  v11 = objc_msgSend_stateMachine(self, v8, v9);
  objc_msgSend_transitionToState_(v11, v10, v7);
}

@end