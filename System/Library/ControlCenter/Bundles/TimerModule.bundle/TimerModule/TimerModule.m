void sub_29C9FB15C(uint64_t a1, void *a2)
{
  v29 = a2;
  v5 = *(a1 + 32);
  if (*(v5 + 73) == 1)
  {
    v6 = *(v5 + 104);
    *(v5 + 104) = 0;

    v5 = *(a1 + 32);
  }

  v7 = *(v5 + 104);
  if (v7)
  {
    v8 = objc_msgSend_timerID(v7, v3, v4);

    v5 = *(a1 + 32);
    if (v8)
    {
      v9 = objc_msgSend_timerID(*(v5 + 104), v3, v4);
      v11 = objc_msgSend_firstThatMatches_fromTimers_(MTCCTimerModule, v10, v9, v29);

      if (v11)
      {
        v12 = [MTCCTimer alloc];
        v14 = objc_msgSend_initWithMTTimer_(v12, v13, v11);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 32);
      v16 = *(v15 + 104);
      *(v15 + 104) = v14;

      v5 = *(a1 + 32);
    }
  }

  if (!*(v5 + 104))
  {
    v17 = objc_msgSend_firstActiveTimerFromTimers_(MEMORY[0x29EDC5DA8], v3, v29);
    v18 = [MTCCTimer alloc];
    v21 = v18;
    if (v17)
    {
      v22 = objc_msgSend_initWithMTTimer_(v18, v19, v17);
    }

    else
    {
      objc_msgSend_defaultDuration(*(a1 + 32), v19, v20);
      v22 = objc_msgSend_initWithState_duration_(v21, v23, 1);
    }

    v24 = *(a1 + 32);
    v25 = *(v24 + 104);
    *(v24 + 104) = v22;

    v5 = *(a1 + 32);
  }

  if (*(a1 + 40) == 1)
  {
    objc_msgSend_duration(*(v5 + 104), v3, v4);
    objc_msgSend_setDefaultDuration_(v5, v26, v27);
    v5 = *(a1 + 32);
  }

  objc_msgSend_setTimer_(*(v5 + 88), v3, *(v5 + 104));
  objc_msgSend_setTimer_(*(*(a1 + 32) + 96), v28, *(*(a1 + 32) + 104));
}

void sub_29C9FB528(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_timerBackgroundViewController(*(a1 + 32), v4, v5);
  objc_msgSend_setTimer_(v6, v7, v3);

  v8 = *(a1 + 32);
  v9 = *(v8 + 104);
  *(v8 + 104) = v3;
}

void sub_29C9FB77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_timerViewController(*(a1 + 32), v4, v5);
  objc_msgSend_setTimer_(v6, v7, v3);

  v10 = objc_msgSend_timerBackgroundViewController(*(a1 + 32), v8, v9);
  objc_msgSend_setTimer_(v10, v11, v3);

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  *(v12 + 104) = v3;
}

uint64_t sub_29C9FBAAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_state(v3, v4, v5) == 3 || objc_msgSend_state(v3, v6, v7) == 2)
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_timerID(v3, v6, v7);
    isEqual = objc_msgSend_isEqual_(v8, v10, v9);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

id sub_29C9FBC40(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_timers(*(*(a1 + 32) + 80), v4, v5);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C9FBD34;
  v13[3] = &unk_29F33F868;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = v3;
  v9 = v3;
  v11 = objc_msgSend_flatMap_(v6, v10, v13);

  return v11;
}

id sub_29C9FBD34(void **a1, void *a2)
{
  v105 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v6 = objc_msgSend_timerID(a1[4], v4, v5);
  v8 = objc_msgSend_firstThatMatches_fromTimers_(MTCCTimerModule, v7, v6, v3);

  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[5];
    v13 = objc_msgSend_sound(a1[6], v10, v11);
    v101 = 138543618;
    v102 = v12;
    v103 = 2114;
    v104 = v13;
    _os_log_impl(&dword_29C9FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched latest duration sound: %{public}@", &v101, 0x16u);
  }

  if (v8)
  {
    v16 = objc_msgSend_mutableCopy(v8, v14, v15);
    v19 = objc_msgSend_state(v8, v17, v18);
    v22 = objc_msgSend_state(a1[4], v20, v21);
    v23 = v22;
    if (v19 == 1 && v22 == 3)
    {
      v24 = MTLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a1[5];
        v101 = 138543362;
        v102 = v25;
        _os_log_impl(&dword_29C9FA000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ current state is stopped and new state is running", &v101, 0xCu);
      }

      v27 = a1[5];
      v26 = a1 + 5;
      objc_msgSend_duration(*(v26 - 1), v28, v29);
      objc_msgSend_setDefaultDuration_(v27, v30, v31);
      v32 = MEMORY[0x29EDC5DB8];
      objc_msgSend_duration(*(v26 - 1), v33, v34);
      objc_msgSend_setDefaultDuration_(v32, v35, v36);
      objc_msgSend_duration(*(v26 - 1), v37, v38);
      objc_msgSend_setDuration_(v16, v39, v40);
      v44 = objc_msgSend_sound(v26[1], v41, v42);
      if (v44)
      {
        objc_msgSend_setSound_(v16, v43, v44);
      }

      else
      {
        v83 = objc_msgSend_defaultSoundForCategory_(MEMORY[0x29EDC5DA0], v43, 1);
        objc_msgSend_setSound_(v16, v84, v83);
      }

      objc_msgSend_setState_(v16, v85, 3);
    }

    else
    {
      if ((v19 & 0xFFFFFFFFFFFFFFFELL) != 2 || v19 == v22)
      {
        goto LABEL_28;
      }

      v77 = MTLogForCategory();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = a1[5];
        v101 = 138543362;
        v102 = v78;
        _os_log_impl(&dword_29C9FA000, v77, OS_LOG_TYPE_DEFAULT, "%{public}@ current state is paused or running and does not equal new state", &v101, 0xCu);
      }

      objc_msgSend_setState_(v16, v79, v23);
      v26 = a1 + 5;
    }

    v86 = objc_msgSend_timerManager(*v26, v80, v81);
    v88 = objc_msgSend_updateTimer_(v86, v87, v16);
  }

  else
  {
    if (objc_msgSend_state(a1[4], v14, v15) != 3)
    {
      v82 = objc_msgSend_futureWithResult_(MEMORY[0x29EDC5E50], v45, a1[4]);
      goto LABEL_29;
    }

    v47 = objc_msgSend_editingTimer(a1[4], v45, v46);

    if (v47)
    {
      v50 = objc_msgSend_editingTimer(a1[4], v48, v49);
      v53 = objc_msgSend_timerID(v50, v51, v52);
      v55 = objc_msgSend_firstThatMatches_fromTimers_(MTCCTimerModule, v54, v53, v3);

      if (v55)
      {
        v56 = objc_msgSend_timerManager(a1[5], v48, v49);
        v58 = objc_msgSend_removeTimer_(v56, v57, v55);
      }
    }

    v59 = MEMORY[0x29EDC5DB8];
    objc_msgSend_duration(a1[4], v48, v49);
    objc_msgSend_setDefaultDuration_(v59, v60, v61);
    v62 = objc_alloc(MEMORY[0x29EDC5DA8]);
    objc_msgSend_duration(a1[4], v63, v64);
    v66 = objc_msgSend_initWithState_duration_(v62, v65, 3);
    v16 = objc_msgSend_mutableCopy(v66, v67, v68);

    v71 = objc_msgSend_timerLabel(a1[4], v69, v70);
    objc_msgSend_setTitle_(v16, v72, v71);

    v76 = objc_msgSend_sound(a1[6], v73, v74);
    if (v76)
    {
      objc_msgSend_setSound_(v16, v75, v76);
    }

    else
    {
      v89 = objc_msgSend_defaultSoundForCategory_(MEMORY[0x29EDC5DA0], v75, 1);
      objc_msgSend_setSound_(v16, v90, v89);
    }

    v86 = objc_msgSend_timerManager(a1[5], v91, v92);
    v94 = objc_msgSend_addTimer_(v86, v93, v16);
  }

LABEL_28:
  v95 = [MTCCTimer alloc];
  v97 = objc_msgSend_initWithMTTimer_(v95, v96, v16);
  v82 = objc_msgSend_futureWithResult_(MEMORY[0x29EDC5E50], v98, v97);

LABEL_29:
  v99 = *MEMORY[0x29EDCA608];

  return v82;
}

void sub_29C9FD98C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isEnabled(*(a1 + 32), a2, a3))
  {
    v6 = 1.0;
    objc_msgSend_colorWithWhite_alpha_(MEMORY[0x29EDC7A00], v4, v5, 1.0, 1.0);
  }

  else
  {
    v6 = 0.75;
    objc_msgSend_colorWithWhite_alpha_(MEMORY[0x29EDC7A00], v4, v5, 1.0, 0.75);
  }
  v7 = ;
  v10 = objc_msgSend_titleLabel(*(a1 + 32), v8, v9);
  objc_msgSend_setTextColor_(v10, v11, v7);

  isSelected = objc_msgSend_isSelected(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_selectedStateBackgroundView(*(a1 + 32), v15, v16);
  v20 = v17;
  if (isSelected)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0.0;
  }

  if (isSelected)
  {
    v6 = 0.0;
  }

  objc_msgSend_setAlpha_(v17, v18, v19, v21);

  v24 = objc_msgSend_normalStateBackgroundView(*(a1 + 32), v22, v23);
  objc_msgSend_setAlpha_(v24, v25, v26, v6);

  if (objc_msgSend_isHighlighted(*(a1 + 32), v27, v28))
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v34 = objc_msgSend_highlightView(*(a1 + 32), v29, v30);
  objc_msgSend_setAlpha_(v34, v32, v33, v31);
}

uint64_t sub_29CA01EB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sliderView(*(a1 + 32), a2, a3);
  objc_msgSend_sliderValueFromRemainingTime_(*(a1 + 32), v5, v6, *(a1 + 40));
  *&v7 = v7;
  objc_msgSend_setValue_animated_(v4, v8, *(a1 + 48), v7);

  v11 = objc_msgSend_timer(*(a1 + 32), v9, v10);
  v14 = objc_msgSend_state(v11, v12, v13) != 3;
  v17 = objc_msgSend_sliderView(*(a1 + 32), v15, v16);
  objc_msgSend_setFirstStepIsDisabled_(v17, v18, v14);

  if (*(a1 + 49))
  {
    v19 = @"timing";
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 32);

  return MEMORY[0x2A1C70FE8](v20, sel_setGlyphState_, v19);
}