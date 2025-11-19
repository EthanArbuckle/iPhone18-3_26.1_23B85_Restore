@interface CKMessagesComplicationDataContext
- (BOOL)isEqual:(id)a3;
- (CGPoint)bubbleTextOrigin;
- (CGRect)_scaledImageFramePerAspectRatioForFamily:(int64_t)a3 specs:(id)a4 imageSize:(CGSize)a5;
- (CGRect)backgroundFrame;
- (CGRect)bubbleFrame;
- (CGRect)imageFrame;
- (CGRect)textFrame;
- (CKMessagesComplicationDataContext)initWithUnreadCount:(unint64_t)a3 family:(int64_t)a4 template:(id)a5 specs:(id)a6 imageSize:(CGSize)a7;
@end

@implementation CKMessagesComplicationDataContext

- (CKMessagesComplicationDataContext)initWithUnreadCount:(unint64_t)a3 family:(int64_t)a4 template:(id)a5 specs:(id)a6 imageSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v199 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v190.receiver = self;
  v190.super_class = CKMessagesComplicationDataContext;
  v15 = [(CKMessagesComplicationDataContext *)&v190 init];
  if (v15)
  {
    v16 = os_log_create("com.apple.Messages", "CKMessagesComplicationDataContext");
    *(v15 + 1) = a4;
    *(v15 + 2) = a3;
    if ((objc_msgSend_unreadCountShouldBeDrawnOnBubbleForFamily_(v14, v17, v18, v19, v20, v21, a4) & 1) == 0)
    {
      *(v15 + 2) = 0;
    }

    objc_msgSend_canvasSizeForFamily_andTemplate_(v14, v22, v23, v24, v25, v26, a4, v13);
    v31 = v30;
    v32 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    if (v28 == *MEMORY[0x277CBF3A8] && v31 == v33)
    {
      sub_23BD2116C();
    }

    *(v15 + 7) = 0;
    *(v15 + 8) = 0;
    v35 = v15 + 56;
    *(v15 + 9) = v28;
    *(v15 + 10) = v31;
    objc_msgSend_imageFramePaddingForFamily_(v14, v27, v28, v32, v33, v29, a4);
    if (v37 <= 0.0)
    {
      v43 = *(v15 + 72);
      *(v15 + 88) = *v35;
      *(v15 + 104) = v43;
    }

    else
    {
      v40 = floor(v31 * v37);
      *(&v38 - 2) = CGRectInset(*(v15 + 56), v40, v40);
      *(v15 + 11) = v41;
      *(v15 + 12) = v42;
      *(v15 + 13) = v38;
      *(v15 + 14) = v39;
    }

    objc_msgSend__scaledImageFramePerAspectRatioForFamily_specs_imageSize_(v15, v36, width, height, v38, v39, a4, v14);
    *(v15 + 11) = v44;
    *(v15 + 12) = v45;
    v46 = v15 + 88;
    *(v15 + 13) = v47;
    *(v15 + 14) = v48;
    if (objc_msgSend_needToScaleToFillForFamily_(v14, v49, v44, v45, v47, v48, a4))
    {
      v50 = *(v15 + 104);
      *v35 = *v46;
      *(v15 + 72) = v50;
    }

    if (*(v15 + 2))
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349312;
        v196 = a3;
        v197 = 2050;
        v198 = a4;
        _os_log_impl(&dword_23BD1C000, v16, OS_LOG_TYPE_DEFAULT, "drawing unread count %{public}lu onto image for family %{public}lu", buf, 0x16u);
      }

      if (a3 >= 0x63)
      {
        objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v51, v52, v53, v54, v55, 99);
      }

      else
      {
        objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v51, v52, v53, v54, v55, a3);
      }
      v56 = ;
      v188 = v56;
      if (a3 < 0x64)
      {
        v92 = objc_msgSend_localizedStringFromNumber_numberStyle_(MEMORY[0x277CCABB8], v57, v58, v59, v60, v61, v56, 0);
        v82 = *(v15 + 3);
        *(v15 + 3) = v92;
      }

      else
      {
        v62 = MEMORY[0x277CCACA8];
        v63 = MEMORY[0x277CCA8D8];
        v64 = objc_opt_class();
        v70 = objc_msgSend_bundleForClass_(v63, v65, v66, v67, v68, v69, v64);
        v76 = objc_msgSend_localizedStringForKey_value_table_(v70, v71, v72, v73, v74, v75, @"99+_UNREAD", &stru_284E7EA48, @"MessagesComplication");
        v82 = objc_msgSend_stringWithFormat_(v62, v77, v78, v79, v80, v81, v76, 99);

        v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v83, v84, v85, v86, v87, @"\u200E%@", v82);
        v89 = *(v15 + 3);
        *(v15 + 3) = v88;
      }

      v189 = v13;

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v96 = *(v15 + 3);
        *buf = 138543362;
        v196 = v96;
        _os_log_impl(&dword_23BD1C000, v16, OS_LOG_TYPE_DEFAULT, "got formatted unread count: %{public}@", buf, 0xCu);
      }

      v97 = *MEMORY[0x277D74420];
      v98 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v93, 12.0, *MEMORY[0x277D74420], v94, v95);
      v99 = v16;
      v193 = *MEMORY[0x277D740A8];
      v100 = v193;
      v194 = v98;
      v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v101, v102, v103, v104, v105, &v194, &v193, 1);
      objc_msgSend_sizeWithAttributes_(*(v15 + 3), v107, v108, v109, v110, v111, v106);
      v113 = 12.0 / v112;
      v114 = CGRectGetHeight(*(v15 + 88));
      v118 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v115, ceil(v113 * v114 * 0.5), v97, v116, v117);

      objc_msgSend_pointSize(v118, v119, v120, v121, v122, v123);
      v192[0] = v118;
      v125 = *MEMORY[0x277D740D0];
      v191[0] = v100;
      v191[1] = v125;
      v129 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v126, v124 * -30.0 / 1000.0, 1000.0, v127, v128);
      v192[1] = v129;
      v191[2] = *MEMORY[0x277D740C0];
      v135 = objc_msgSend_blackColor(MEMORY[0x277D75348], v130, v131, v132, v133, v134);
      v192[2] = v135;
      v141 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v136, v137, v138, v139, v140, v192, v191, 3);
      v142 = *(v15 + 4);
      *(v15 + 4) = v141;

      v16 = v99;
      v143 = *v46;
      *(v15 + 136) = *(v15 + 104);
      *(v15 + 120) = v143;
      v144 = *(v15 + 17);
      v145 = *(v15 + 18);
      *&v143 = floor(v145 / 1.12);
      *(v15 + 18) = v143;
      objc_msgSend_boundingRectWithSize_options_attributes_context_(*(v15 + 3), v146, v144, *&v143, v145, v147, 1, *(v15 + 4), 0);
      v153 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v148, v149, v150, v151, v152);
      objc_msgSend_scale(v153, v154, v155, v156, v157, v158);
      UIRectIntegralWithScale();
      v160 = v159;
      v162 = v161;
      v164 = v163;
      v166 = v165;

      v172 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v167, v168, v169, v170, v171);
      objc_msgSend_scale(v172, v173, v174, v175, v176, v177);
      v187 = v178;
      UIRectCenteredIntegralRectScale();
      *(v15 + 19) = v179;
      *(v15 + 20) = v180;
      *(v15 + 21) = v181;
      *(v15 + 22) = v182;

      v91 = *(v15 + 19);
      v183 = *(v15 + 20);
      objc_msgSend_verticalTextOffsetForFamily_withTextBounds_(v14, v184, v160, v162, v164, v166, a4, v187);
      v90 = v183 + v185;

      v13 = v189;
    }

    else
    {
      v91 = *(v15 + 11);
      v90 = *(v15 + 12);
    }

    *(v15 + 5) = v91;
    *(v15 + 6) = v90;
  }

  return v15;
}

- (CGRect)_scaledImageFramePerAspectRatioForFamily:(int64_t)a3 specs:(id)a4 imageSize:(CGSize)a5
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  v11 = a5.width / a5.height;
  if (a5.width / a5.height > 1.0)
  {
    if (objc_msgSend_needToScaleToFillForFamily_(a4, a2, 1.0, a5.height, v5, v6, a3))
    {
      width = ceil(v11 * self->_imageFrame.size.width);
    }

    else
    {
      v13 = self->_imageFrame.size.height;
      height = floor(v13 / v11);
      y = self->_imageFrame.origin.y + (v13 - height) * 0.5;
    }
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    family = self->_family;
    if (family == objc_msgSend_family(v5, v7, v8, v9, v10, v11) && (unreadCount = self->_unreadCount, unreadCount == objc_msgSend_unreadCount(v5, v12, v13, v14, v15, v16)) && (objc_msgSend_backgroundFrame(v5, v18, v19, v20, v21, v22), v47.origin.x = v23, v47.origin.y = v24, v47.size.width = v25, v47.size.height = v26, CGRectEqualToRect(self->_backgroundFrame, v47)) && (objc_msgSend_bubbleFrame(v5, v27, v28, v29, v30, v31), v48.origin.x = v32, v48.origin.y = v33, v48.size.width = v34, v48.size.height = v35, CGRectEqualToRect(self->_bubbleFrame, v48)))
    {
      objc_msgSend_imageFrame(v5, v36, v37, v38, v39, v40);
      v49.origin.x = v41;
      v49.origin.y = v42;
      v49.size.width = v43;
      v49.size.height = v44;
      v45 = CGRectEqualToRect(self->_imageFrame, v49);
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (CGRect)backgroundFrame
{
  x = self->_backgroundFrame.origin.x;
  y = self->_backgroundFrame.origin.y;
  width = self->_backgroundFrame.size.width;
  height = self->_backgroundFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageFrame
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bubbleFrame
{
  x = self->_bubbleFrame.origin.x;
  y = self->_bubbleFrame.origin.y;
  width = self->_bubbleFrame.size.width;
  height = self->_bubbleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)textFrame
{
  x = self->_textFrame.origin.x;
  y = self->_textFrame.origin.y;
  width = self->_textFrame.size.width;
  height = self->_textFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)bubbleTextOrigin
{
  x = self->_bubbleTextOrigin.x;
  y = self->_bubbleTextOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end