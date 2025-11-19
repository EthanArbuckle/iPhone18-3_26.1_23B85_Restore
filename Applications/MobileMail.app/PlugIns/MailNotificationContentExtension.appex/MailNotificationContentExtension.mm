void sub_10000277C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v12;

  _Unwind_Resume(a1);
}

UIFont *__cdecl sub_10000480C(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:32770 options:0];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

UIFont *__cdecl sub_100004894(id a1)
{
  v1 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 addingSymbolicTraits:2 options:0];
  v2 = [UIFont fontWithDescriptor:v1 size:0.0];

  return v2;
}

void *sub_100004F5C(void *result, uint64_t a2)
{
  v2 = result[4];
  if ((*(v2 + 8) & a2) != 0)
  {
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24);
    if (v4 >= result[6])
    {
      *(v2 + 24) |= a2;
    }

    else
    {
      *(v3 + 24) = v4 + 1;
    }
  }

  return result;
}

void sub_100005714(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1000425A0;
  qword_1000425A0 = v1;
}

id sub_1000059F0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) contactForContext:*(a1 + 40) handler:a2];

  return v2;
}

void sub_100005BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100005C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005D30;
  v6[3] = &unk_100038A08;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];

  objc_destroyWeak(&v9);
}

void sub_100005CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v16;

  objc_destroyWeak((v17 + 48));
  _Unwind_Resume(a1);
}

void sub_100005D30(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = +[MFAvatarView log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] emailAddress];
    v5 = [v4 emailAddressValue];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 ef_publicDescription];
    }

    else
    {
      v8 = [v4 stringValue];
      v7 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v8];
    }

    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating avatar for %{public}@", &v17, 0xCu);
  }

  v9 = [a1[5] image];
  v10 = [WeakRetained avatarView];
  [v10 setImage:v9];

  v11 = a1[5];
  v12 = [WeakRetained avatarView];
  v13 = [v12 traitCollection];
  v14 = [v11 needsBorderFor:{objc_msgSend(v13, "userInterfaceStyle")}];

  v15 = [WeakRetained avatarView];
  [WeakRetained frame];
  [MUIAvatarImageGenerator roundAvatarView:v15 withBorder:v14 size:v16];
}

void sub_100006378(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [WeakRetained contactAvatarView];
  [v6 setContacts:v5];

  [WeakRetained setHidden:0];
}

void sub_10000643C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100006474(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHidden:1];
}

void sub_1000066B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAvatarView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000071F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1000425B0;
  qword_1000425B0 = v1;
}

void sub_1000073BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_10000A578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v10;

  _Unwind_Resume(a1);
}

void sub_10000A884(id a1, UIAction *a2)
{
  v5 = +[UIApplication sharedApplication];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"BIMI_KB_LINK" value:&stru_1000392E0 table:@"Main"];
  v4 = [NSURL URLWithString:v3];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

void sub_10000A950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10000B0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B1F4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusIndicators:v4];
  [WeakRetained _updateHorizontalStatusIndicators:v4];
}

void sub_10000B528(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, ...)
{
  va_start(va, a13);

  objc_destroyWeak(va);
  objc_destroyWeak((v20 - 88));

  _Unwind_Resume(a1);
}

id sub_10000B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B700;
  v9[3] = &unk_100038B60;
  objc_copyWeak(&v12, (a1 + 48));
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = v3;
  v7 = [v4 contactForContext:v5 handler:v9];

  objc_destroyWeak(&v12);

  return v7;
}

void sub_10000B700(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5 && [v5 avatarType] == 3)
  {
    v10 = [WeakRetained delegate];
    v11 = [v10 actualSenderFutureForConversationItemHeader:WeakRetained];
    v12 = +[EFScheduler mainThreadScheduler];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B888;
    v13[3] = &unk_100038B38;
    v13[4] = WeakRetained;
    v14 = *(a1 + 32);
    [v11 onScheduler:v12 addSuccessBlock:v13];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8);
}

void sub_10000B888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 emailAddressValue];
  v5 = [v4 domain];

  if ([*(a1 + 32) showsBIMILearnMoreButton])
  {
    v6 = [*(a1 + 32) bimiLearnMoreButton];

    if (!v6)
    {
      if (v5)
      {
        v7 = +[MFConversationItemHeaderBlock log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v5];
          v9 = *(a1 + 40);
          v10 = 138543618;
          v11 = v8;
          v12 = 2114;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding BIMI learn more button with domain %{public}@ for context: %{public}@", &v10, 0x16u);
        }

        [*(a1 + 32) _addBIMILearnMoreButtonWithSenderDomain:v5];
      }
    }
  }
}

void sub_10000BA10(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 setAddressAtomTarget:WeakRetained action:"_primaryAddressAtomWasTapped:"];
  v4 = [WeakRetained primaryAtomList];
  v5 = [v4 addressAtoms];
  [v6 setAddressAtomSeparatorStyle:{2 * (objc_msgSend(v5, "count") < 2)}];

  [v6 setAddressAtomsArePrimary:1];
}

void sub_10000C100(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_10000C170(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v9 frame];
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetWidth(v11);
  UIRoundToViewScale();
  x = v12.origin.x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetHeight(v12);
  UIRoundToViewScale();
  [v9 setFrame:{x, v7, width, height}];
  v8 = [v9 superview];

  if (!v8)
  {
    [*(a1 + 32) addSubview:v9];
  }
}

void sub_10000C47C(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  v5 = [v18 superview];

  if (!v5)
  {
    [*(a1 + 32) addSubview:v18];
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v6];
  v7 = objc_opt_new();
  if (a3)
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
    v9 = [v18 centerXAnchor];
    v10 = [v8 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:*(a1 + 48)];
    [v7 addObject:v11];
  }

  else
  {
    v8 = [v18 leadingAnchor];
    v9 = [*(a1 + 32) leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v7 addObject:v10];
  }

  if ([*(a1 + 40) count] - 1 == a3)
  {
    v12 = [v18 trailingAnchor];
    v13 = [*(a1 + 32) trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v7 addObject:v14];
  }

  v15 = [v18 firstBaselineAnchor];
  v16 = [*(a1 + 32) firstBaselineAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v7 addObject:v17];

  [NSLayoutConstraint activateConstraints:v7];
}

void sub_10000CE0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000CEE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CEFC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10000CF5C(uint64_t a1, void *a2)
{
  v3 = [a2 localizedDescription];
  NSLog(@"Retrieving future attachment data failed with error: %@", v3);

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_10000CFE0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_10000D040(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFConversationItemHeaderBlock log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrieving future rich link data failed with error: %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000D154(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfMessagesInConversationForConversationItemHeaderBlock:*(a1 + 40)];
  v3 = [MFMessageInfoViewController alloc];
  v9 = [*(a1 + 40) viewModel];
  v4 = [*(a1 + 40) contactStore];
  v5 = [(MFMessageInfoViewController *)v3 initWithViewModel:v9 contactsStore:v4 attachmentURLs:*(*(*(a1 + 56) + 8) + 40) richLinkURLs:*(*(*(a1 + 64) + 8) + 40) numberOfMessagesInConversation:v2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = [*(*(*(a1 + 48) + 8) + 40) view];
  [v10 frame];
  [*(*(*(a1 + 48) + 8) + 40) setPreferredContentSize:{320.0, v8}];

  v11 = [*(a1 + 40) delegate];
  [v11 conversationItemHeader:*(a1 + 40) presentViewController:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_10000D890(uint64_t a1)
{
  if ([*(a1 + 32) _hasConversationLayout])
  {
    v2 = [*(a1 + 32) usingLargeTextLayout];
    v3 = *(a1 + 40);
    if (v2)
    {
      v8 = [*(a1 + 32) primaryStackView];
      v4 = *(a1 + 32);
      if (v3)
      {
        v5 = [v4 timestampLabel];
        [v8 removeArrangedSubview:v5];

        v9 = [*(a1 + 32) timestampLabel];
        [v9 removeFromSuperview];
      }

      else
      {
        v7 = [v4 timestampLabel];
        [v8 insertArrangedSubview:v7 atIndex:2];
      }
    }

    else
    {
      if (*(a1 + 40))
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }

      v10 = [*(a1 + 32) timestampLabel];
      [v10 setAlpha:v6];
    }
  }

  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 32) updateConstraintsIfNeeded];
  [*(a1 + 32) _updateStackViewSpacing];
  v11 = [*(a1 + 32) superview];
  [v11 layoutIfNeeded];
}

NSString *__cdecl sub_10000DE34(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [(NSString *)v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [(NSString *)v2 stringValue];
  }

  return v11;
}

void sub_10000EC7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10000ED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFExpandableCaptionView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000F700(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _atomListLineSpacing];
  [v3 setLineSpacing:?];
}

id sub_10000FF24(uint64_t a1)
{
  [*(a1 + 32) _reattachBottomConstraint];
  [*(a1 + 32) updateConstraintsIfNeeded];
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) captionLabel];
  [v3 setAlpha:v2];

  if (*(a1 + 48))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) atomListStackView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 40);

  return [v6 playAnimations];
}

id sub_10000FFE4(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _setRecipientDetailsVisible:0];
  }

  v4 = *(a1 + 40);

  return [v4 playCompletions:a2];
}

void sub_100011230(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) isEqualToString:@"FromAtomsKey"];
  v4 = [*(a1 + 32) isEqualToString:@"ReplyToAtomsKey"];
  v5 = "_recipientAtomPressed:";
  if (v3)
  {
    v5 = "_senderAtomPressed:";
  }

  if (v4)
  {
    v6 = "_replyToAtomPressed:";
  }

  else
  {
    v6 = v5;
  }

  [v11 setAddressAtomTarget:*(a1 + 40) action:v6];
  v7 = [*(a1 + 40) font];

  if (v7)
  {
    v8 = [*(a1 + 40) font];
    [v11 setOverrideFont:v8];
  }

  if (+[UIDevice mf_isPadIdiom])
  {
    v9 = [*(a1 + 40) delegate];
    v10 = [v9 popoverManagerForExpandableCaptionView:*(a1 + 40)];

    [v10 addPassthroughViewProvider:v11];
  }
}

void sub_100011350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1000121C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001228C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1000425C8;
  qword_1000425C8 = v1;
}

void sub_100012E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  objc_destroyWeak(&a35);

  objc_destroyWeak(&a40);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100013090(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v6 = a4;
  v7 = [v18 avatarView];
  v8 = [v6 emailAddress];
  v9 = [*(a1 + 32) contactStore];
  v10 = [v7 displayPersonForEmailAddress:v8 usingContactStore:v9];

  v11 = [v6 emailAddress];
  v12 = [v11 emailAddressValue];
  v13 = [v12 displayName];

  v14 = [v18 contactLabel];
  v15 = [v6 emailAddress];
  v16 = [v15 emailAddressValue];
  if (v13)
  {
    [v16 displayName];
  }

  else
  {
    [v16 stringValue];
  }
  v17 = ;
  [v14 setText:v17];
}

void sub_10001321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10001328C(uint64_t a1, void *a2)
{
  v4 = [a2 subjectLabel];
  v3 = [*(a1 + 32) _subjectToDisplay];
  [v4 setText:v3];
}

void sub_100013318(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v32 nameLabel];
  v10 = [v8 attachment];
  v11 = [v10 displayName];
  [v9 setText:v11];

  v12 = [v32 dateLabel];
  v13 = [*(a1 + 32) dateFormatter];
  v14 = *(a1 + 32);
  v15 = [v8 attachment];
  v16 = [v15 url];
  v17 = [v14 _dateToDisplayForURL:v16];
  v18 = [v13 stringFromDate:v17];
  [v12 setText:v18];

  v19 = [*(a1 + 32) imageCache];
  v20 = [v8 attachment];
  v21 = [v20 url];
  v22 = [v19 objectForKey:v21];
  v23 = [v22 first];

  if (v23)
  {
    v24 = [v32 imageView];
    [v24 setImage:v23];
  }

  else
  {
    [*(a1 + 32) _generateQuickLookThumbnail:v32 indexPath:v7 item:v8];
  }

  if ([*(a1 + 32) _shouldDisplayContact])
  {
    v25 = [v32 avatarView];
    v26 = *(a1 + 32);
    v27 = [v8 attachment];
    v28 = [v27 url];
    v29 = [v26 _contactToDisplayForURL:v28];
    v30 = [*(a1 + 32) contactStore];
    v31 = [v25 displayPersonForEmailAddress:v29 usingContactStore:v30];
  }

  else
  {
    v25 = [v32 avatarView];
    [v25 setHidden:1];
  }
}

void sub_1000135AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v12;

  _Unwind_Resume(a1);
}

void sub_10001367C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v6 = a4;
  v7 = [v6 attachment];
  v8 = [v7 url];
  v9 = [NSData dataWithContentsOfURL:v8];
  v10 = [UIImage imageWithData:v9];

  v11 = [v19 imageView];
  [v11 setImage:v10];

  if ([*(a1 + 32) _shouldDisplayContact])
  {
    v12 = [v19 avatarView];
    v13 = *(a1 + 32);
    v14 = [v6 attachment];
    v15 = [v14 url];
    v16 = [v13 _contactToDisplayForURL:v15];
    v17 = [*(a1 + 32) contactStore];
    v18 = [v12 displayPersonForEmailAddress:v16 usingContactStore:v17];
  }

  else
  {
    v12 = [v19 avatarView];
    [v12 setHidden:1];
  }
}

void sub_10001380C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v13;

  _Unwind_Resume(a1);
}

void sub_10001389C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = +[UIColor tableCellGroupedBackgroundColor];
  v8 = [v9 contentView];
  [v8 setBackgroundColor:v7];

  [*(a1 + 32) _generateRichLink:v9 item:v6];
}

id sub_10001396C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 subject];
  if (v10)
  {
    v11 = _os_feature_enabled_impl();

    if (v11)
    {
      v12 = 32;
LABEL_31:
      v28 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v12) forIndexPath:v8 item:v9];
      goto LABEL_32;
    }
  }

  v13 = [v9 attachment];

  if (!v13)
  {
    v29 = [v9 richLink];

    v12 = 56;
    if (!v29)
    {
      v12 = 64;
    }

    goto LABEL_31;
  }

  v14 = [v9 attachment];
  v15 = [v14 url];
  v16 = [v15 lastPathComponent];
  v17 = [v9 attachment];
  v18 = [v17 url];
  v19 = [UTType em_contentTypeForFilename:v16 fileURL:v18];

  v20 = v19 == UTTypeJPEG || v19 == UTTypePNG;
  v26 = v20 || v19 == UTTypeImage || v19 == UTTypeLivePhoto || v19 == UTTypeMP3 || v19 == UTTypeMPEG4Movie || v19 == UTTypeMovie;
  v20 = (v26 & 1) == 0;
  v27 = 48;
  if (!v20)
  {
    v27 = 40;
  }

  v28 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v27) forIndexPath:v8 item:v9];

LABEL_32:

  return v28;
}

void sub_100013C04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = v14;
    v9 = [WeakRetained sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v11 = [v10 sectionName];

    v12 = [v8 contentConfiguration];
    [v12 setText:v11];
    [v8 setContentConfiguration:v12];
    v13 = [v8 seeAllButton];
    [v13 setHidden:1];
  }
}

void sub_100013D14(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_100013D74(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = v15;
    v9 = [WeakRetained sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v11 = [v10 sectionName];

    v12 = [v8 contentConfiguration];
    [v12 setText:v11];
    v13 = [v12 textProperties];
    [v13 setAlignment:0];

    [v8 setContentConfiguration:v12];
    v14 = [v8 seeAllButton];
    [v14 setHidden:1];
  }
}

void sub_100013EA0(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_100013F04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 identifier];
  if ([v8 isEqual:@"Documents"])
  {
    goto LABEL_4;
  }

  v18 = [*(a1 + 32) sections];
  v9 = [v18 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v10 = [v9 identifier];
  if ([v10 isEqual:@"Photos"])
  {

LABEL_4:
    v11 = 48;
    goto LABEL_7;
  }

  v17 = [*(a1 + 32) sections];
  v12 = [v17 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v13 = [v12 identifier];
  v14 = [v13 isEqual:@"Links"];

  v11 = 56;
  if (v14)
  {
    v11 = 48;
  }

LABEL_7:
  v15 = [*(a1 + 40) dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v11) forIndexPath:v5];

  return v15;
}

void sub_100014140(void *a1)
{
  if (a1)
  {
    v80 = objc_alloc_init(NSMutableArray);
    v1 = objc_alloc_init(NSMutableArray);
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_100017B28;
    v94[3] = &unk_100038FF0;
    v81 = v80;
    v95 = v81;
    v82 = v1;
    v96 = v82;
    v83 = objc_retainBlock(v94);
    if (_os_feature_enabled_impl())
    {
      v2 = [a1 viewModel];
      v3 = [v2 subject];
      v4 = [v3 subjectString];
      v5 = [v4 isEqualToString:&stru_1000392E0];

      if ((v5 & 1) == 0)
      {
        v6 = [MFMessageInfoHeaderItem alloc];
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"Subject" value:&stru_1000392E0 table:0];
        v9 = [(MFMessageInfoHeaderItem *)v6 initWithName:v8 identifier:@"Subject"];
        [v81 addObject:v9];

        v10 = [MFMessageInfoItem alloc];
        v11 = [a1 viewModel];
        v12 = [v11 subject];
        v13 = [(MFMessageInfoItem *)v10 initWithSubject:v12];
        v98 = v13;
        v14 = [NSArray arrayWithObjects:&v98 count:1];
        [v82 addObject:v14];
      }
    }

    if (_os_feature_enabled_impl() && ([a1 _isConversation] & 1) != 0)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = [a1 viewModel];
      v17 = [v16 senderList];
      [v15 addObjectsFromArray:v17];

      v18 = [a1 viewModel];
      v19 = [v18 toList];
      [v15 addObjectsFromArray:v19];

      v20 = [a1 viewModel];
      v21 = [v20 replyToList];
      [v15 addObjectsFromArray:v21];

      v22 = [a1 viewModel];
      v23 = [v22 ccList];
      [v15 addObjectsFromArray:v23];

      v24 = [a1 viewModel];
      v25 = [v24 bccList];
      [v15 addObjectsFromArray:v25];

      v26 = [NSSet setWithArray:v15];
      v27 = [v26 allObjects];
      [a1 setParticipants:v27];

      v28 = [a1 participants];
      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"Participants" value:&stru_1000392E0 table:0];
      (v83[2])(v83, v28, v30);
    }

    else
    {
      v31 = [a1 viewModel];
      v32 = [v31 senderList];
      (v83[2])(v83, v32, @"From");

      v33 = [a1 viewModel];
      v34 = [v33 toList];
      (v83[2])(v83, v34, @"To");

      v35 = [a1 viewModel];
      v36 = [v35 replyToList];
      (v83[2])(v83, v36, @"Reply To");

      v37 = [a1 viewModel];
      v38 = [v37 ccList];
      (v83[2])(v83, v38, @"CC");

      v15 = [a1 viewModel];
      v28 = [v15 bccList];
      (v83[2])(v83, v28, @"BCC");
    }

    if (_os_feature_enabled_impl())
    {
      v39 = [a1 conversationAttachmentURLs];
      v40 = v39 == 0;

      if (!v40)
      {
        v87 = objc_alloc_init(NSMutableArray);
        v88 = objc_alloc_init(NSMutableArray);
        v41 = [a1 conversationAttachmentURLs];
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_100017CD8;
        v93[3] = &unk_100039018;
        v93[4] = a1;
        v42 = [v41 ef_map:v93];
        [a1 setConversationAttachmentURLs:v42];

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [a1 conversationAttachmentURLs];
        v43 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
        if (v43)
        {
          v86 = *v90;
          do
          {
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v90 != v86)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v89 + 1) + 8 * i);
              v46 = [v45 url];
              v47 = [v46 lastPathComponent];
              v48 = [v45 url];
              v49 = [UTType em_contentTypeForFilename:v47 fileURL:v48];

              if (v49 == UTTypeJPEG || v49 == UTTypePNG || v49 == UTTypeImage || v49 == UTTypeLivePhoto || v49 == UTTypeMP3 || v49 == UTTypeMPEG4Movie || v49 == UTTypeMovie)
              {
                v57 = v87;
              }

              else
              {
                v57 = v88;
              }

              [v57 addObject:v45];
            }

            v43 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
          }

          while (v43);
        }

        if ([v88 count])
        {
          v58 = [MFMessageInfoHeaderItem alloc];
          v59 = +[NSBundle mainBundle];
          v60 = [v59 localizedStringForKey:@"Documents" value:&stru_1000392E0 table:0];
          v61 = [(MFMessageInfoHeaderItem *)v58 initWithName:v60 identifier:@"Documents"];
          [v81 addObject:v61];

          v62 = [v88 ef_map:&stru_100039058];
          [v82 addObject:v62];
        }

        if ([v87 count])
        {
          v63 = [MFMessageInfoHeaderItem alloc];
          v64 = +[NSBundle mainBundle];
          v65 = [v64 localizedStringForKey:@"Photos" value:&stru_1000392E0 table:0];
          v66 = [(MFMessageInfoHeaderItem *)v63 initWithName:v65 identifier:@"Photos"];
          [v81 addObject:v66];

          v67 = [v87 ef_map:&stru_100039078];
          [v82 addObject:v67];
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      v68 = [a1 richLinkURLs];
      v69 = [v68 count] == 0;

      if (!v69)
      {
        v70 = [MFMessageInfoHeaderItem alloc];
        v71 = +[NSBundle mainBundle];
        v72 = [v71 localizedStringForKey:@"Links" value:&stru_1000392E0 table:0];
        v73 = [(MFMessageInfoHeaderItem *)v70 initWithName:v72 identifier:@"Links"];
        [v81 addObject:v73];

        v74 = [NSSet alloc];
        v75 = [a1 richLinkURLs];
        v76 = [v74 initWithArray:v75];
        v77 = [v76 allObjects];
        [a1 setRichLinkURLs:v77];

        v78 = [a1 richLinkURLs];
        v79 = [v78 ef_map:&stru_1000390B8];

        [v82 addObject:v79];
      }
    }

    [a1 setItems:v82];
    [a1 setSections:v81];
  }
}

id sub_1000150DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!_os_feature_enabled_impl())
  {
    v11 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 40) layoutEnvironment:v5];
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) sections];
  v7 = [v6 objectAtIndexedSubscript:a2];
  v8 = [v7 identifier];
  v9 = [v8 isEqual:@"Documents"];

  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10 _attachmentSectionLayout];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  v14 = [v10 sections];
  v15 = [v14 objectAtIndexedSubscript:a2];
  v16 = [v15 identifier];
  v17 = [v16 isEqual:@"Photos"];

  v18 = *(a1 + 32);
  if (v17)
  {
    v11 = [v18 _photoSectionLayout];
    goto LABEL_5;
  }

  v19 = [v18 sections];
  v20 = [v19 objectAtIndexedSubscript:a2];
  v21 = [v20 identifier];
  v22 = [v21 isEqual:@"Links"];

  if (v22)
  {
    v11 = [*(a1 + 32) _linkSectionLayout];
    goto LABEL_5;
  }

  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 40) layoutEnvironment:v5];
  [v12 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  [v12 _setPostBoundaryPadding:20.0];
  v23 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:@"section-background-element-kind"];
  [v23 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  v25 = v23;
  v24 = [NSArray arrayWithObjects:&v25 count:1];
  [v12 setDecorationItems:v24];

LABEL_6:

  return v12;
}

void sub_1000156D4(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_100015B0C(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_100015F54(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1000166F4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([a1[4] imageCache], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[5], "attachment"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "url"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7, !v10))
  {
    v12 = [v5 UIImage];
    v13 = [v12 imageByPreparingForDisplay];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000168D4;
    block[3] = &unk_100038F38;
    v16 = a1[6];
    v17 = a1[5];
    v18 = v13;
    v19 = a1[4];
    v14 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v11 = [v6 localizedDescription];
    NSLog(@"Thumbnail generation failed with error: %@", v11);
  }
}

void sub_1000168D4(uint64_t a1)
{
  v14 = [*(a1 + 32) nameLabel];
  v2 = [v14 text];
  v3 = [*(a1 + 40) attachment];
  v4 = [v3 displayName];

  if (v2 == v4)
  {
    [*(a1 + 48) size];
    v6 = v5;
    [*(a1 + 48) size];
    v8 = v6 / v7;
    [*(a1 + 32) setImage:*(a1 + 48) withAspectRatio:v8];
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 56) + 144);
    v15 = [NSNumber numberWithDouble:v8];
    v11 = [EFPair pairWithFirst:v9 second:?];
    v12 = [*(a1 + 40) attachment];
    v13 = [v12 url];
    [v10 setObject:v11 forKey:v13];
  }
}

void sub_100016A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

void sub_10001703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

BOOL sub_1000170FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 emailAddressValue];

  if (v5)
  {
    v6 = [v3 value];
    v7 = [v6 emailAddressValue];
    v8 = [v7 compare:*(a1 + 32)] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100017B28(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = *(a1 + 32);
    v7 = [MFMessageInfoHeaderItem alloc];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:v5 value:&stru_1000392E0 table:0];
    v10 = [(MFMessageInfoHeaderItem *)v7 initWithName:v9 identifier:v5];
    [v6 addObject:v10];

    v11 = [v12 ef_map:&stru_100038FC8];
    [*(a1 + 40) addObject:v11];
  }
}

id sub_100017C74(id a1, ECEmailAddressConvertible *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithEmail:v2];

  return v3;
}

id sub_100017CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 url];
  v6 = [v4 _URLForAttachmentURL:v5];
  v7 = [v3 displayName];
  v8 = [EMAttachmentData attachmentWithURL:v6 displayName:v7];

  return v8;
}

id sub_100017DBC(id a1, EMAttachmentData *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithAttachment:v2];

  return v3;
}

id sub_100017E20(id a1, EMAttachmentData *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithAttachment:v2];

  return v3;
}

id sub_100017E84(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithRichLink:v2];

  return v3;
}

void sub_1000188C0(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1000425D8;
  qword_1000425D8 = v1;
}

void sub_100018D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_100018E04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MUIContactStoreProvider alloc];
    v3 = [WeakRetained contactStore];
    v4 = [v2 initWithContactStore:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100019460(void *a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000195A0;
    block[3] = &unk_100039108;
    v3 = a1[6];
    block[4] = a1[4];
    block[5] = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device is locked, creating unlock context policy", buf, 2u);
    }

    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v6 + 96);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000195AC;
    v9[3] = &unk_100039158;
    v8 = a1[6];
    v9[4] = v6;
    v9[5] = v8;
    [v7 evaluatePolicy:2 options:v5 reply:v9];
  }
}

void sub_1000195AC(uint64_t a1, void *a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019674;
  v8[3] = &unk_100039130;
  v9 = a2;
  v10 = a3;
  v5 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_100019674(uint64_t a1)
{
  v2 = MSUserNotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v15 = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Policy evaluation finshed with results: %@. Error: %@", &v15, 0x16u);
  }

  v5 = *(a1 + 48);
  if (*(a1 + 40))
  {
    [v5 setError:?];
    v6 = +[MFNotificationViewController signpostLog];
    v7 = v6;
    v8 = *(a1 + 56);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = [*(a1 + 40) code];
      v15 = 134349056;
      v16 = v9;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "MFNotificationPreview", "Authentication Failure %{public, name=errorCode}lu", &v15, 0xCu);
    }

    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Policy evaluation failed with error: %@", &v15, 0xCu);
    }

    v13 = *(a1 + 48);
    v12 = a1 + 48;
    [v13 _resetMessageListAndPromise];
    v14 = *(*v12 + 96);
    *(*v12 + 96) = 0;
  }

  else
  {
    [v5 _configureMessageRequestWithSignPostID:*(a1 + 56)];
  }
}

void sub_100019A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id sub_100019A80(uint64_t a1, uint64_t a2)
{
  v3 = [EMMessage predicateForMessageWithObjectID:a2];
  v4 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v3 sortDescriptors:&__NSArray0__struct queryOptions:8 label:@"MFMessageNotificationPreview"];
  v5 = *(a1 + 32);
  v6 = [v5 daemonInterface];
  v7 = [v6 messageRepository];
  v8 = [v5 _configureMessageListAndPromiseForQuery:v4 repository:v7];

  v9 = [v8 future];

  return v9;
}

void sub_100019B78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100019BBC(uint64_t a1, void *a2)
{
  v52 = a2;
  v3 = MSUserNotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v52 ef_publicDescription];
    *buf = 138412290;
    v54 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Retreived message. Launching notification view: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setProgressUIVisible:0 animated:1];
  v6 = [WeakRetained view];
  [v6 frame];
  v8 = v7;
  [WeakRetained screenHeight];
  v10 = v9;

  [WeakRetained setPreferredContentSize:{v8, v10}];
  [WeakRetained setActionsForMessage:v52];
  v51 = objc_alloc_init(CNContactStore);
  v11 = [MFConversationItemHeaderBlock alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v15 = [(MFConversationItemHeaderBlock *)v11 initWithFrame:v51 contactStore:CGRectZero.origin.x, y, width, height];
  [(MFConversationItemHeaderBlock *)v15 setDisplayOptions:12];
  v50 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  v16 = [[MFMessageContentView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v16 setDelegate:WeakRetained];
  v17 = [WeakRetained daemonInterface];
  [v16 setDaemonInterface:v17];

  v57[0] = v15;
  v57[1] = v50;
  v18 = [NSArray arrayWithObjects:v57 count:2];
  v19 = [v16 headerView];
  [v19 setHeaderBlocks:v18];

  [v16 setShowsBanners:1];
  v20 = [WeakRetained avatarGenerator];
  [v16 setAvatarGenerator:v20];

  v21 = [[MessageContentRepresentationRequest alloc] initWithMessage:v52];
  [v16 setContentRequest:v21];
  v22 = [v16 contentRequest];
  v23 = [v22 waitForResult];

  if (v23)
  {
    v24 = [v16 headerView];
    [v24 layoutIfNeeded];

    v25 = [WeakRetained traitCollection];
    [WeakRetained minMargins];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [v16 safeAreaInsets];
    v38 = [MFMessageDisplayMetrics displayMetricsWithTraitCollection:v25 layoutMargins:0 safeAreaInsets:v27 interfaceOrientation:v29, v31, v33, v34, v35, v36, v37];

    [WeakRetained screenHeight];
    [v16 setFrame:{0.0, 0.0, v8, v39 + v39}];
    [v16 setDisplayMetrics:v38];
    v40 = MSUserNotificationsLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [WeakRetained messageList];
      v42 = [WeakRetained messageReferenceURL];
      *buf = 134218242;
      v54 = v41;
      v55 = 2112;
      v56 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "NotificationPreview: %p: successfully displayed message for URL %@", buf, 0x16u);
    }

    v43 = [WeakRetained view];
    [v43 addSubview:v16];

    v44 = +[MFNotificationViewController signpostLog];
    v45 = v44;
    v46 = *(a1 + 40);
    if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_END, v46, "MFNotificationPreview", "Success", buf, 2u);
    }

    [WeakRetained _resetMessageListAndPromise];
    v47 = WeakRetained[12];
    WeakRetained[12] = 0;
  }

  else
  {
    v48 = [v52 itemID];
    v49 = [NSError em_itemNotFoundErrorWithItemID:v48];
    [WeakRetained setError:v49];

    v38 = [WeakRetained error];
    [WeakRetained _notificationPreviewFailedWithError:v38 singpostID:*(a1 + 40)];
  }
}

void sub_10001AB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_10001B174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10001B6E8(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

id sub_10001C20C()
{
  v0 = qword_1000425F0;
  if (!qword_1000425F0)
  {
    v4[0] = SwipeActionNone;
    v4[1] = SwipeActionRead;
    v5[0] = &off_100039E98;
    v5[1] = &off_100039EB0;
    v4[2] = SwipeActionFlag;
    v4[3] = SwipeActionMove;
    v5[2] = &off_100039EC8;
    v5[3] = &off_100039EE0;
    v4[4] = SwipeActionTrash;
    v4[5] = SwipeActionArchive;
    v5[4] = &off_100039EF8;
    v5[5] = &off_100039F10;
    v4[6] = SwipeActionAlternateDestructiveAction;
    v5[6] = &off_100039F28;
    v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];
    v2 = qword_1000425F0;
    qword_1000425F0 = v1;

    v0 = qword_1000425F0;
  }

  return v0;
}

void sub_10001C3FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id MFConversationReferenceFromHash(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSString stringWithFormat:@"%@://conversation/%lld", EMAppleMailURLScheme, a1];
    v2 = [NSURL URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MFDocumentReferenceFromDocumentID(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSURLComponents);
  [v2 setScheme:EMAppleMailURLScheme];
  [v2 setHost:@"document"];
  v3 = [NSString stringWithFormat:@"/%@", v1];
  [v2 setPath:v3];

  v4 = [v2 URL];

  return v4;
}

void sub_10001C594(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10001C71C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10001CA3C(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = qword_1000425F8;
  qword_1000425F8 = v1;
}

id getMailPreferenceValueWithDefault(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSUserDefaults em_userDefaults];
  v6 = [v5 valueForKey:v3];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

id rightSwipeSetting(int a1)
{
  os_unfair_lock_lock(&unk_100042610);
  v2 = qword_100042608;
  v3 = v2;
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = getMailPreferenceValueWithDefault(RightSwipeActionKey, SwipeActionRead);

    if (qword_100042608 != v5)
    {
      objc_storeStrong(&qword_100042608, v5);
    }
  }

  os_unfair_lock_unlock(&unk_100042610);

  return v5;
}

id sub_10001D138(uint64_t a1)
{
  result = [*(a1 + 32) effectiveUserInterfaceLayoutDirection];
  byte_100042618 = result == 1;
  return result;
}

void sub_10001D474(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerator %p", &v3, 0x16u);
}

void sub_10001D4FC(uint64_t a1, id a2, NSObject *a3)
{
  v5 = objc_retainBlock(a2);
  v6 = 134218240;
  v7 = a1;
  v8 = 2048;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerationBlock %p", &v6, 0x16u);
}

id sub_10001D5B0(void *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return [a1 _addMessageInfoButton];
  }

  return result;
}

void sub_10001D5F0(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find contact: %@, using key descriptors: %@", buf, 0x16u);
}

void sub_10001D658(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "NotificationPreview: self.systemMinimumLayoutMargins is not correct. what we got is %@", buf, 0xCu);
}

void sub_10001D6B0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "NotificationPreview: %@", buf, 0xCu);
}