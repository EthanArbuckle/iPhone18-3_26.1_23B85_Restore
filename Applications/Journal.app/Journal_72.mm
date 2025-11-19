id sub_1007C8348()
{
  result = [objc_opt_self() whiteColor];
  qword_100AF1E60 = result;
  return result;
}

id sub_1007C8384()
{
  result = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:13.0];
  qword_100AF1E68 = result;
  return result;
}

id sub_1007C83CC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18MediaIndicatorView_mediaImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MediaIndicatorView();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setCornerRadius:3.0];

  [v10 setClipsToBounds:1];
  sub_1007C8568();

  return v10;
}

void sub_1007C8568()
{
  v1 = v0;
  v2 = [objc_opt_self() effectWithStyle:16];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  [v1 addSubview:v3];
  sub_100013178(0.0);

  v4 = *&v1[OBJC_IVAR____TtC7Journal18MediaIndicatorView_mediaImageView];
  [v4 setContentMode:1];
  if (qword_100AD0AC8 != -1)
  {
    swift_once();
  }

  [v4 setTintColor:qword_100AF1E60];
  [v1 addSubview:v4];
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v6 centerXAnchor];
    v8 = [v4 centerXAnchor];
    v9 = [v8 constraintEqualToAnchor:v7];

    [v9 setConstant:0.0];
    if (v9)
    {
      [v9 setActive:1];
    }
  }

  v10 = [v4 superview];
  if (v10)
  {
    v15 = v10;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v4 centerYAnchor];
    v12 = [v15 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:0.0];
    if (v13)
    {
      [v13 setActive:1];

      v3 = v13;
    }

    v14 = v15;
  }

  else
  {
    v14 = v3;
  }
}

id sub_1007C8828()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1007C8890()
{
  v1 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView);
  }

  else
  {
    type metadata accessor for ResizableAttachmentView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1007C8908(uint64_t result, char a2, double a3, double a4)
{
  if (result)
  {
    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    if (a3 <= 0.25)
    {
      a3 = 0.25;
    }
  }

  if (a2)
  {
    if (a4 > 1.0)
    {
      a4 = 1.0;
    }

    if (a4 <= 0.25)
    {
      a4 = 0.25;
    }
  }

  v5 = (v4 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize);
  *v5 = a3;
  v5[1] = a4;
  return result;
}

void sub_1007C895C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = (v3 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  *(v7 + 16) = a3 & 1;
  v8 = sub_1007C8890();
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 16);
  v12 = &v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v13 = *&v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v14 = *&v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 8];
  v15 = v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16];
  *v12 = *v7;
  *(v12 + 1) = v10;
  v12[16] = v11;
  if (v15)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v11 & 1) != 0 || (v13 == v9 ? (v16 = v14 == v10) : (v16 = 0), !v16))
  {
LABEL_9:
    sub_1007CB788();
  }

LABEL_10:
}

void (*sub_1007C8A18(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1007C8AA0;
}

void sub_1007C8AA0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (v3[3] + v3[4]);
    v5 = sub_1007C8890();
    v6 = *v4;
    v7 = v4[1];
    v8 = *(v4 + 16);
    v9 = &v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
    v10 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
    v11 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 8];
    v12 = v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16];
    *v9 = *v4;
    *(v9 + 1) = v7;
    v9[16] = v8;
    if (v12)
    {
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else if ((v8 & 1) == 0 && v10 == v6 && v11 == v7)
    {
      goto LABEL_11;
    }

    sub_1007CB788();
LABEL_11:
  }

  free(v3);
}

void sub_1007C8B44()
{
  v1 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView];
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView);
      if (v4)
      {
        v8 = v4;
LABEL_7:
        v7 = v2;
        sub_1007C9DD0(v8);

        goto LABEL_8;
      }
    }
  }

  v5 = sub_1007C8890();
  v6 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  v8 = v6;

  if (!v6)
  {
    return;
  }

  v2 = *(v0 + v1);
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void *sub_1007C8C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_1007C8890();
    v3 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v6 = v3;
  }

  return v3;
}

unint64_t sub_1007C8CA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static UIView.Invalidating.subscript.getter();

    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
    v8 = v28;
    v9 = v29;
  }

  else
  {
    v10 = sub_1007C8890();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  v11 = v9 == 0;
  v12 = 0x10000000000;
  if (v11)
  {
    v12 = 0;
  }

  v11 = v8 == 0;
  v13 = &_mh_execute_header;
  if (v11)
  {
    v13 = 0;
  }

  v11 = v7 == 0;
  v14 = 0x1000000;
  if (v11)
  {
    v14 = 0;
  }

  v11 = v6 == 0;
  v15 = 0x10000;
  if (v11)
  {
    v15 = 0;
  }

  v11 = v5 == 0;
  v16 = 256;
  if (v11)
  {
    v16 = 0;
  }

  return v16 | v4 | v15 | v14 | v13 | v12;
}

uint64_t sub_1007C8E14(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1007C8890();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static UIView.Invalidating.subscript.setter();
  v8 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView] = a1;
  v9 = a1;
  sub_1007C9FD0(v8);

  [v9 setUserInteractionEnabled:HIDWORD(a2) & 1];
  v10 = v3 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(v3, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1007C8F34(char a1, double a2, double a3, double a4)
{
  if (a2 <= 1.0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider;
  v7 = *(v4 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (!v7)
  {
LABEL_11:
    v11 = 1;
    (*((swift_isaMask & *v4) + 0xB0))(1, 1, v5);
    return v11;
  }

  v9 = v5 * a4;
  v10 = a3 * a4;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v5 * a4;
  v16.size.height = a3 * a4;
  if (!CGRectEqualToRect(*(v7 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds), v16))
  {
    v12 = *(v4 + v6);
    if (v12)
    {
      *(v12 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_isFullWidth) = a1 & 1;
      v13 = *(v12 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView);
      if (v13)
      {
        *(v13 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isFullWidth) = a1 & 1;
      }

      v14 = v12 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
    }

    goto LABEL_11;
  }

  return 0;
}

void sub_1007C9058(void *a1, char a2)
{
  v3 = v2;
  v19 = [a1 view];
  if (v19)
  {
    if ([a1 state] == 1)
    {
      v6 = v2 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(v2, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }

    v9 = [v19 superview];
    [a1 translationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = v3 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      if (a2)
      {
        v11 = -v11;
      }

      v16 = swift_getObjectType();
      (*(v15 + 8))(v3, v16, v15, v11, v13);
      swift_unknownObjectRelease();
    }

    if ([a1 state] == 3 && swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v14 + 8);
      v18 = swift_getObjectType();
      (*(v17 + 24))(v3, v18, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1007C927C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView);
      if (v4)
      {
        v5 = v1;
        v6 = v4;
LABEL_7:
        [v6 removeInteraction:v10];

        goto LABEL_8;
      }
    }
  }

  v7 = v1;
  v8 = sub_1007C8890();
  v9 = *&v8[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  v6 = v9;

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
}

BOOL sub_1007C938C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = v7 == 0;
  v15 = 0x10000000000;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x10000000000;
  }

  v14 = v6 == 0;
  v17 = &_mh_execute_header;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = &_mh_execute_header;
  }

  v14 = v5 == 0;
  v19 = 0x1000000;
  if (v14)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x1000000;
  }

  v14 = v4 == 0;
  v21 = 0x10000;
  if (v14)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x10000;
  }

  v14 = v3 == 0;
  v23 = 256;
  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v24 = 256;
  }

  v25 = v24 | v2 | v22 | v20;
  v26 = v18 | v16;
  if (!v13)
  {
    v15 = 0;
  }

  if (!v12)
  {
    v17 = 0;
  }

  if (!v11)
  {
    v19 = 0;
  }

  if (!v10)
  {
    v21 = 0;
  }

  if (!v9)
  {
    v23 = 0;
  }

  return sub_1007CDBF0(v25 | v26, v23 | v8 | v21 | v19 | v17 | v15);
}

char *sub_1007C9488(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v5 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider;
  v6 = *(v3 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  v7 = v6;
  if (v6)
  {
    goto LABEL_24;
  }

  v10 = [a3 textLayoutManager];
  v7 = [objc_allocWithZone(type metadata accessor for ResizableTextAttachmentViewProvider()) initWithTextAttachment:v4 parentView:a1 textLayoutManager:v10 location:a2];
  v12 = sub_1007C8A18(v39);
  if (*(v11 + 16))
  {
    v12(v39, 0);
  }

  else
  {
    if (v10)
    {
      v13 = v11;
      v14 = [v10 textLayoutFragmentForLocation:a2];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 resolvedBaseWritingDirection];
      }

      else
      {
        v16 = -1;
      }

      v11 = v13;
    }

    else
    {
      v16 = -1;
    }

    *(v11 + 8) = v16;
    v12(v39, 0);
  }

  v17 = sub_1007C8890();
  v18 = (v4 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = &v17[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v23 = *&v17[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v24 = *&v17[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 8];
  v25 = v17[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16];
  *v22 = *v18;
  *(v22 + 1) = v20;
  v22[16] = v21;
  if (v25)
  {
    if (v21)
    {
      goto LABEL_20;
    }
  }

  else if ((v21 & 1) == 0 && v23 == v19 && v24 == v20)
  {
    goto LABEL_20;
  }

  sub_1007CB788();
LABEL_20:

  v27 = *(v4 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView);
  v28 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView;
  v29 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView];
  *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView] = v27;
  v30 = v27;

  v31 = &v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizeDelegate];
  *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizeDelegate + 8] = &off_100A7EA78;
  swift_unknownObjectWeakAssign();
  v32 = *&v7[v28];
  if (v32)
  {
    swift_unknownObjectWeakLoadStrong();
    v33 = *(v31 + 1);
    v34 = v32;

    *&v34[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate + 8] = v33;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v35 = *(v4 + v5);
  *(v4 + v5) = v7;
  v36 = v7;

LABEL_24:
  v37 = v6;
  return v7;
}

uint64_t sub_1007C98A0()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1007C9930()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 48))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1007C99C0()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1007C9A50()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 64))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1007C9AE0()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 72))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

id sub_1007C9B5C(void *a1, void *a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView] = 0;
  v9 = &v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 1) = xmmword_100968880;
  v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_isFullWidth] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ResizableTextAttachmentViewProvider();
  v10 = objc_msgSendSuper2(&v12, "initWithTextAttachment:parentView:textLayoutManager:location:", a1, a2, a3, a4);
  [v10 setTracksTextAttachmentViewBounds:1];

  swift_unknownObjectRelease();
  return v10;
}

id sub_1007C9CD4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ResizableTextAttachmentViewProvider();
  result = objc_msgSendSuper2(&v5, "loadView");
  v2 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView];
  if (v2)
  {
    v3 = v2;
    [v0 setView:v3];
    v4 = &v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizeDelegate];
    swift_unknownObjectWeakLoadStrong();
    *&v3[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate + 8] = *(v4 + 1);
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1007C9DD0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    static UIView.Invalidating.subscript.setter();
    v5 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView] = a1;
    v6 = a1;
    sub_1007C9FD0(v5);
  }
}

unint64_t sub_1007C9F54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1 | (v2 << 32);
}

void sub_1007C9FD0(id a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  if (!v3)
  {
    return;
  }

  v4 = v1;
  v50 = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  if (!a1)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_1000065A8(0, &qword_100ADC670);
  v5 = v50;
  a1 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
LABEL_7:
    sub_1007CB384();
    [a1 removeFromSuperview];
    [v4 addSubview:v50];
    v8 = [v50 superview];
    if (v8)
    {
      v9 = v8;
      [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [v50 topAnchor];
      v11 = [v9 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];

      [v12 setConstant:0.0];
      if (v12)
      {
        [v12 setActive:1];
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_topConstraint];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_topConstraint] = v12;

    v14 = sub_100028DA0(0, 1, 4.0);
    v16 = v14;
    if (v14)
    {
      LODWORD(v15) = 1148846080;
      [v14 setPriority:v15];
    }

    v17 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_bottomConstraint];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_bottomConstraint] = v16;

    v18 = [v50 superview];
    if (v18)
    {
      v19 = v18;
      [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v50 leadingAnchor];
      v21 = [v19 leadingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setConstant:4.0];
      if (v22)
      {
        [v22 setActive:1];
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint] = v22;

    v24 = [v50 superview];
    if (v24)
    {
      v25 = v24;
      [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
      v26 = [v50 trailingAnchor];
      v27 = [v25 trailingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      [v28 setConstant:-4.0];
      if (v28)
      {
        [v28 setActive:1];

        LODWORD(v29) = 1148846080;
        [v28 setPriority:v29];
      }

      else
      {
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint] = v28;

    v31 = [v50 layer];
    [v31 setMasksToBounds:1];

    v32 = [v50 layer];
    [v32 setCornerRadius:12.0];

    v33 = [v50 layer];
    [v33 setCornerCurve:kCACornerCurveContinuous];

    v34 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v34 trailingAnchor];
    v36 = [v50 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    v38 = v37;
    [v38 setConstant:4.0];
    [v38 setActive:1];

    v39 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint];
    *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint] = v38;

    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v34 bottomAnchor];
    v41 = [v50 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];

    [v42 setActive:1];
    v43 = *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v43 topAnchor];
    v45 = [v50 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:4.0];

    [v46 setActive:1];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [v43 trailingAnchor];
    v48 = [v50 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    [v49 setConstant:-4.0];
    [v49 setActive:1];

    sub_1007CB788();
  }
}

char *sub_1007CA698(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v9);
  v10 = sub_1000F24EC(&qword_100AF20E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizePanGestureRecognizer] = 0;
  v14 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView;
  type metadata accessor for ResizingHandleView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton;
  type metadata accessor for CanvasAssetDeleteView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_previewBorderLayer;
  *&v4[v16] = [objc_allocWithZone(CAShapeLayer) init];
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint] = 0;
  v17 = &v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isFullWidth] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_topConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer] = 0;
  v18 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView__configuration;
  v52 = 65537;
  v53 = 1;
  UIView.Invalidations.Layout.init()();
  sub_1007CD978();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v11 + 32))(&v4[v18], v13, v10);
  v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_hoverGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView] = 0;
  v19 = type metadata accessor for ResizableAttachmentView();
  v51.receiver = v4;
  v51.super_class = v19;
  v20 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  v21 = objc_allocWithZone(UIContextMenuInteraction);
  v22 = v20;
  v23 = [v21 initWithDelegate:v22];
  [v22 addInteraction:v23];

  v24 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v22 action:"viewPannedWithSender:"];
  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  [v25 setName:v26];

  [v25 setDelegate:v22];
  [v25 addTarget:v22 action:"updateCursor"];

  v27 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView;
  [*&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView] addGestureRecognizer:v25];
  v28 = *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizePanGestureRecognizer];
  *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizePanGestureRecognizer] = v25;
  v29 = v25;

  v30 = [v22 traitCollection];
  v31 = [v30 userInterfaceIdiom];

  if (v31 == 5)
  {
    v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v22 action:"selectAttachment:"];
    v33 = *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer];
    *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer] = v32;
    v34 = v32;

    if (!v34)
    {
LABEL_9:
      v48 = v22;
      goto LABEL_10;
    }

    [v34 setDelegate:v22];
    [v22 addGestureRecognizer:v34];
  }

  v35 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v22 action:"viewTappedWithSender:"];
  v36 = *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer];
  *&v22[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer] = v35;
  v37 = v35;

  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = [v22 traitCollection];

  v39 = [v38 userInterfaceIdiom];
  if (v39 == 5)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  [v37 setNumberOfTapsRequired:v40];
  v41 = v22;
  [v37 setDelegate:v41];
  [v41 addGestureRecognizer:v37];
  v42 = [objc_allocWithZone(UIHoverGestureRecognizer) initWithTarget:v41 action:"updateCursor"];

  [v41 addGestureRecognizer:v42];
  v43 = *&v41[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_hoverGestureRecognizer];
  *&v41[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_hoverGestureRecognizer] = v42;
  v44 = v42;

  v45 = *&v22[v27];
  v46 = objc_allocWithZone(UIPointerInteraction);
  v47 = v45;
  v48 = [v46 initWithDelegate:v41];
  [v47 addInteraction:v48];

  v29 = v47;
LABEL_10:

  return v22;
}

id sub_1007CAD08(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static UIView.Invalidating.subscript.modify();
    *(v4 + 5) = (*(v4 + 5) & 1) == 0;
    v3(v8, 0);

    sub_1007CB788();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    if (v8[5] == 1)
    {
      v5 = v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 40))(ObjectType, v6);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1007CAF7C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ResizableAttachmentView();
  v27.receiver = v4;
  v27.super_class = v9;
  objc_msgSendSuper2(&v27, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v26.receiver = v4;
  v26.super_class = v9;
  objc_msgSendSuper2(&v26, "setFrame:", a1, a2, a3, a4);
  [v4 frame];
  v30.origin.x = v18;
  v30.origin.y = v19;
  v30.size.width = v20;
  v30.size.height = v21;
  v28.origin.x = v11;
  v28.origin.y = v13;
  v28.size.width = v15;
  v28.size.height = v17;
  result = CGRectEqualToRect(v28, v30);
  if ((result & 1) == 0)
  {
    [v4 frame];
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = 0.0;
    v31.size.height = 0.0;
    result = CGRectEqualToRect(v29, v31);
    if (!result)
    {
      v23 = &v4[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v24 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        (*(v24 + 24))(v4, ObjectType, v24);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1007CB15C()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for ResizableAttachmentView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  sub_1007CB788();
  v1 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_previewBorderLayer];
    v3 = v1;
    v4 = [v2 superlayer];
    if (v4)
    {

      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [v2 setFrame:?];
      v13 = [v3 layer];
      [v13 cornerRadius];
      v15 = v14;

      v16 = [v3 layer];
      [v16 cornerRadius];
      v18 = v17;

      v19 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v6 cornerRadii:{v8, v10, v12, v15, v18}];
      v20 = [v19 CGPath];

      [v2 setPath:v20];
      [v2 setCornerCurve:kCACornerCurveContinuous];
      [v0 setUserInteractionEnabled:1];
    }
  }
}

void sub_1007CB384()
{
  v1 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView];
  v2 = [v1 superview];
  if (!v2)
  {
    [v0 addSubview:v1];
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 5)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = 50.0;
    }

    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v1 heightAnchor];
    v7 = [v6 constraintEqualToConstant:v5];

    [v7 setActive:1];
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v1 widthAnchor];
    v9 = [v8 constraintEqualToConstant:v5];

    [v9 setActive:1];
    v2 = v9;
  }

  v10 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton];
  v11 = [v10 superview];
  if (v11)
  {
  }

  else
  {
    [v0 addSubview:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v10 widthAnchor];
    v13 = [v12 constraintEqualToConstant:44.0];

    [v13 setActive:1];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v10 heightAnchor];
    v15 = [v14 constraintEqualToConstant:44.0];

    [v15 setActive:1];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = &v10[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
    *v17 = sub_1007CDC50;
    v17[1] = v16;
  }
}

void sub_1007CB694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4 && (v5 = v4 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate, v6 = v4, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v5 + 8), v6, v7))
      {
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(v3, ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_1007CB788()
{
  v1 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  if (v1)
  {
    v2 = v0;
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    static UIView.Invalidating.subscript.getter();

    if (BYTE3(v89.m11) == 1)
    {
      v4 = *&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_previewBorderLayer];
      [v4 setLineWidth:2.0];
      sub_1000F24EC(&unk_100AD4780);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100941D60;
      sub_1000065A8(0, &unk_100ADE730);
      *(v5 + 32) = NSNumber.init(integerLiteral:)(4);
      *(v5 + 40) = NSNumber.init(integerLiteral:)(2);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setLineDashPattern:isa];

      v7 = objc_opt_self();
      v8 = [v7 blackColor];
      v9 = [v8 CGColor];

      [v4 setStrokeColor:v9];
      v10 = [v7 clearColor];
      v11 = [v10 CGColor];

      [v4 setFillColor:v11];
      [v4 setMasksToBounds:1];
      v12 = [v3 layer];
      [v12 addSublayer:v4];

      [*&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView] setHidden:1];
      [*&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton] setHidden:1];
LABEL_4:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    if (BYTE5(v89.m11) == 1)
    {
      v13 = [v3 layer];
      v14 = [objc_opt_self() tintColor];
      v15 = [v14 CGColor];

      [v13 setBorderColor:v15];
      v16 = [v3 layer];
      [v16 setBorderWidth:4.0];

      p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIView.Invalidating.subscript.getter();

      if (BYTE1(v89.m11) == 1)
      {
        v18 = [objc_opt_self() systemGray3Color];
        v19 = [v3 layer];
        [v19 setBorderWidth:1.0];

        v20 = [v3 layer];
        v21 = [v18 CGColor];
        [v20 setBorderColor:v21];

        v22 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView];
        v23 = *&v22[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView];
        v24 = v18;
        [v23 removeFromSuperview];
        v25 = *&v22[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
        v26 = [v24 CGColor];
        [v25 setFillColor:v26];

        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        v27 = [v22 traitCollection];
        v28 = [v27 userInterfaceStyle];

        sub_100135D14(v28 == 2);
      }

      else
      {
        [*&v0[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_previewBorderLayer] removeFromSuperlayer];
        v29 = [v3 layer];
        v30 = objc_opt_self();
        v31 = [v30 clearColor];
        v32 = [v31 CGColor];

        [v29 setBorderColor:v32];
        v33 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView];
        v34 = OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView;
        [v33 addSubview:*&v33[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView]];
        v35 = *&v33[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
        v36 = [v30 clearColor];
        v37 = [v36 CGColor];

        [v35 setFillColor:v37];
        [v33 sendSubviewToBack:*&v33[v34]];
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        v38 = [v33 traitCollection];
        v39 = [v38 userInterfaceStyle];

        sub_100135D14(v39 == 2);
      }
    }

    v40 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView];
    v41 = [v40 layer];
    v42 = &v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
    if ((v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16] & 1) != 0 || ((v47 = *(v42 + 1), *v42 != 2) || v47) && (*v42 || v47 != 1))
    {
      v43 = *&CATransform3DIdentity.m33;
      *&v89.m31 = *&CATransform3DIdentity.m31;
      *&v89.m33 = v43;
      v44 = *&CATransform3DIdentity.m43;
      *&v89.m41 = *&CATransform3DIdentity.m41;
      *&v89.m43 = v44;
      v45 = *&CATransform3DIdentity.m13;
      *&v89.m11 = *&CATransform3DIdentity.m11;
      *&v89.m13 = v45;
      v46 = *&CATransform3DIdentity.m23;
      *&v89.m21 = *&CATransform3DIdentity.m21;
      *&v89.m23 = v46;
    }

    else
    {
      CATransform3DMakeRotation(&v89, 3.14159265, 0.0, 1.0, 0.0);
    }

    v88 = v89;
    [v41 setTransform:&v88];

    v48 = [v2 p_ivar_lyt[394]];
    v49 = [v48 layoutDirection];

    v50 = v49 != 1;
    if ((v42[16] & 1) == 0)
    {
      v52 = *v42;
      v51 = *(v42 + 1);
      if (*v42 != 2 || v51)
      {
        if (!v52 && v51 == 1 && v49 == 1)
        {
          v50 = 1;
        }

        else if (!v52 && v51 == 1)
        {
          v53 = &v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint];
          v54 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint];
          if (!v54)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v50 = v49 == 1;
      }
    }

    v53 = &v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint];
    v54 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint];
    if (!v54)
    {
      goto LABEL_29;
    }

    if (v50)
    {
      if ([v54 firstAttribute] != 6)
      {
        v50 = 1;
        v55 = *v53;
        if (!*v53)
        {
          goto LABEL_29;
        }

LABEL_36:
        [v55 setActive:0];
        if (v50)
        {
          goto LABEL_37;
        }

LABEL_38:
        [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
        v60 = [v40 leadingAnchor];
        v61 = [v3 leadingAnchor];
        v59 = [v60 constraintEqualToAnchor:v61];

        [v59 setConstant:-4.0];
        [v59 setActive:1];
        goto LABEL_39;
      }

      goto LABEL_40;
    }

LABEL_34:
    if ([v54 firstAttribute] != 5)
    {
      v50 = 0;
      v55 = *v53;
      if (!*v53)
      {
LABEL_29:
        if (!v50)
        {
          goto LABEL_38;
        }

LABEL_37:
        [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
        v56 = [v40 trailingAnchor];
        v57 = [v3 trailingAnchor];
        v58 = [v56 constraintEqualToAnchor:v57];

        v59 = v58;
        [v59 setConstant:4.0];
        [v59 setActive:1];

LABEL_39:
        v62 = *v53;
        *v53 = v59;

        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_40:
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v63 = "@0:8@16";
    if (LOBYTE(v88.m11) == 1 && (v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview] & 1) == 0)
    {
      sub_10080990C(v40, v2, DebugData.init(name:), 0);
    }

    else
    {
      v64 = objc_opt_self();
      v65 = swift_allocObject();
      *(v65 + 16) = v40;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_10043C168;
      *(v66 + 24) = v65;
      *&v88.m21 = sub_100028EF4;
      *&v88.m22 = v66;
      *&v88.m11 = _NSConcreteStackBlock;
      *&v88.m12 = 1107296256;
      *&v88.m13 = sub_10001A7D4;
      *&v88.m14 = &unk_100A7EB00;
      v67 = _Block_copy(&v88);
      v68 = v40;

      [v64 performWithoutAnimation:v67];
      _Block_release(v67);
      LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

      if (v67)
      {
        __break(1u);
        goto LABEL_52;
      }

      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *&v88.m21 = sub_10043C170;
      *&v88.m22 = v69;
      *&v88.m11 = _NSConcreteStackBlock;
      *&v88.m12 = 1107296256;
      *&v88.m13 = sub_100006C7C;
      *&v88.m14 = &unk_100A7EB50;
      v70 = _Block_copy(&v88);
      v71 = v68;

      v72 = swift_allocObject();
      v72[2] = sub_1007CC74C;
      v72[3] = 0;
      v72[4] = v2;
      *&v88.m21 = sub_10043C178;
      *&v88.m22 = v72;
      *&v88.m11 = _NSConcreteStackBlock;
      *&v88.m12 = 1107296256;
      *&v88.m13 = sub_10003264C;
      *&v88.m14 = &unk_100A7EBA0;
      v73 = _Block_copy(&v88);
      v74 = v2;

      [v64 animateWithDuration:4 delay:v70 options:v73 animations:0.0 completion:0.0];
      _Block_release(v73);
      _Block_release(v70);

      v63 = "d24@0:8@16" + 3;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    if (BYTE2(v88.m11) == 1 && (v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview] & 1) == 0)
    {
      sub_10080990C(*&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton], v2, DebugData.init(name:), 0);
      goto LABEL_4;
    }

    v75 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton];
    v76 = objc_opt_self();
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1007CE730;
    *(v78 + 24) = v77;
    *&v88.m21 = sub_100177C4C;
    *&v88.m22 = v78;
    *&v88.m11 = _NSConcreteStackBlock;
    v79 = *(v63 + 148);
    v88.m12 = v79;
    *&v88.m13 = sub_10001A7D4;
    *&v88.m14 = &unk_100A7EC18;
    v80 = _Block_copy(&v88);
    v81 = v75;

    [v76 performWithoutAnimation:v80];
    _Block_release(v80);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    if ((v80 & 1) == 0)
    {
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *&v88.m21 = sub_1007CE738;
      *&v88.m22 = v82;
      *&v88.m11 = _NSConcreteStackBlock;
      v88.m12 = v79;
      *&v88.m13 = sub_100006C7C;
      *&v88.m14 = &unk_100A7EC68;
      v83 = _Block_copy(&v88);
      v84 = v81;

      v85 = swift_allocObject();
      v85[2] = sub_1007CC7FC;
      v85[3] = 0;
      v85[4] = v2;
      *&v88.m21 = sub_1007CE728;
      *&v88.m22 = v85;
      *&v88.m11 = _NSConcreteStackBlock;
      v88.m12 = v79;
      *&v88.m13 = sub_10003264C;
      *&v88.m14 = &unk_100A7ECB8;
      v86 = _Block_copy(&v88);
      v87 = v2;

      [v76 animateWithDuration:4 delay:v83 options:v86 animations:0.0 completion:0.0];

      _Block_release(v86);
      _Block_release(v83);

      return;
    }

LABEL_52:
    __break(1u);
  }
}

id sub_1007CC74C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v3 != 1 || *(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) == 1)
  {
    return [*(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView) setHidden:1];
  }

  return result;
}

id sub_1007CC7FC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v3 != 1 || *(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) == 1)
  {
    return [*(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton) setHidden:1];
  }

  return result;
}

uint64_t sub_1007CC8AC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    v6 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition);
    v7 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 8);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 1;
    }

    v9 = v8;
    if (v6 == 2 && v7 == 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (*(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16))
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, v12, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1007CCA9C(double a1)
{
  if (v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isFullWidth] == 1)
  {
    v2 = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint];
    if (v2)
    {
      [v2 setConstant:4.0];
    }

    result = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint];
    if (result)
    {
      v4 = -4.0;
LABEL_34:

      return [result setConstant:v4];
    }

    return result;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 layoutDirection];

  v8 = &v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  if (v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16])
  {
    goto LABEL_7;
  }

  v10 = *v8;
  v9 = v8[1];
  if (v10 == 2 && v9 == 0)
  {
    if (v7 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9 == 1;
  }

  if (v12 && v7 != 1)
  {
    goto LABEL_27;
  }

  if (v10)
  {
LABEL_7:
    if (v7 != 1)
    {
      goto LABEL_30;
    }

LABEL_27:
    [*&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint] setConstant:a1];
    result = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint];
    if (!result)
    {
      return result;
    }

    v4 = 0.0;
    goto LABEL_34;
  }

  if (v9 != 1 && v7 == 1)
  {
    goto LABEL_27;
  }

LABEL_30:
  v15 = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint];
  if (v15)
  {
    [v15 setConstant:0.0];
  }

  result = *&v1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint];
  if (result)
  {
    v4 = -a1;
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1007CCC3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizePanGestureRecognizer];
  if (v6)
  {
    sub_1000065A8(0, &qword_100AD5338);
    v7 = v6;
    v8 = a1;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      return 1;
    }
  }

  v11 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer;
  v12 = *&v3[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer];
  if (v12)
  {
    sub_1000065A8(0, &qword_100AD5338);
    v13 = a1;
    v14 = v12;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      goto LABEL_8;
    }
  }

  v16 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer;
  v17 = *&v3[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer];
  if (!v17)
  {
    return 0;
  }

  sub_1000065A8(0, &qword_100AD5338);
  v18 = a1;
  v19 = v17;
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    v23 = *&v3[v16];
    if (v23)
    {
      v24 = v18;
      v25 = v23;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        v27 = *&v3[v11];
        if (v27)
        {
          v28 = v27;
          v29 = a2;
          v30 = static NSObject.== infix(_:_:)();

          if (v30)
          {
            v31 = [v3 traitCollection];
            v32 = [v31 userInterfaceIdiom];

            return v32 == 5;
          }
        }
      }
    }

    return 0;
  }

LABEL_8:
  result = [a2 view];
  if (result)
  {
    v21 = result;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass() != 0;

    return v22;
  }

  return result;
}

uint64_t sub_1007CD044(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview] = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v7[4] = sub_1007CE74C;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100006C7C;
  v7[3] = &unk_100A7EDD0;
  v4 = _Block_copy(v7);
  v5 = a1;

  [v3 animateWithDuration:6 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v4);
}

id sub_1007CD174(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v8)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v7)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  return [v4 setAlpha:v5];
}

id sub_1007CD324(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1007CDEF8();

  swift_unknownObjectRelease();

  return v9;
}

id sub_1007CD444(uint64_t a1, double a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  if (v15 == 1 && (v7 = *&v3[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView], ([v7 isHidden] & 1) == 0) && (objc_msgSend(v3, "convertPoint:toCoordinateSpace:", v7, a2, a3), v9 = v8, v11 = v10, objc_msgSend(v7, "bounds"), v17.x = v9, v17.y = v11, CGRectContainsPoint(v18, v17)))
  {
    v12 = [v7 hitTest:a1 withEvent:{v9, v11}];
  }

  else
  {
    v14.receiver = v3;
    v14.super_class = type metadata accessor for ResizableAttachmentView();
    v12 = objc_msgSendSuper2(&v14, "hitTest:withEvent:", a1, a2, a3);
  }

  return v12;
}

id sub_1007CD634(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ResizableAttachmentView()
{
  result = qword_100AF20B8;
  if (!qword_100AF20B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007CD818()
{
  sub_1007CD8F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007CD8F8()
{
  if (!qword_100AF20C8)
  {
    type metadata accessor for UIView.Invalidations.Layout();
    sub_1007CD978();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF20C8);
    }
  }
}

unint64_t sub_1007CD978()
{
  result = qword_100AF20D0;
  if (!qword_100AF20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF20D0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResizableAttachmentConfiguration(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResizableAttachmentConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResizableAttachmentConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1007CDA98@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return result;
}

uint64_t sub_1007CDB40(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

void sub_1007CDC58()
{
  *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView) = 0;
  v1 = v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007CDD08(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v15 = sub_1007CE6FC;
    v16 = v3;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_100006C7C;
    v14 = &unk_100A7ED80;
    v4 = _Block_copy(&v11);
    swift_unknownObjectRetain();
    v5 = v1;

    [a1 addCompletion:v4];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) = 0;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = objc_opt_self();
    v15 = sub_1007CE6F4;
    v16 = v7;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_100006C7C;
    v14 = &unk_100A7ED30;
    v9 = _Block_copy(&v11);
    v10 = v1;

    [v8 animateWithDuration:6 delay:v9 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:1.0 completion:0.0];
    _Block_release(v9);
  }
}

id sub_1007CDEF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 window];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(UIPreviewParameters) init];
      [v2 bounds];
      MidX = CGRectGetMidX(v12);
      [v2 bounds];
      [v2 convertPoint:v4 toCoordinateSpace:{MidX, CGRectGetMidY(v13)}];
      v9 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v4 center:{v7, v8}];
      v10 = [objc_allocWithZone(UITargetedPreview) initWithView:v2 parameters:v5 target:v9];

      return v10;
    }
  }

  return 0;
}

void *sub_1007CE038()
{
  v1 = v0;
  v2 = type metadata accessor for UIPointerAccessory.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF20E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UIPointerEffect();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000065A8(0, &qword_100AF20F0);
  *v12 = [objc_allocWithZone(UITargetedPreview) initWithView:*(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView)];
  (*(v10 + 104))(v12, enum case for UIPointerEffect.lift(_:), v9);
  v13 = type metadata accessor for UIPointerShape();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = UIPointerStyle.init(effect:shape:)();
  v15 = (v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition);
  if ((*(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16) & 1) != 0 || ((v20 = *v15, v19 = v15[1], v20 != 2) || v19) && (v20 || v19 != 1))
  {
    sub_1000F24EC(&unk_100AD4780);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100941D60;
    sub_1000065A8(0, &qword_100AF20F8);
    static UIPointerAccessory.Position.topRight.getter();
    v17 = static UIPointerAccessory.arrow(_:)();
    v18 = *(v3 + 8);
    v18(v5, v2);
    *(v16 + 32) = v17;
    static UIPointerAccessory.Position.bottomLeft.getter();
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100941D60;
    sub_1000065A8(0, &qword_100AF20F8);
    static UIPointerAccessory.Position.topLeft.getter();
    v21 = static UIPointerAccessory.arrow(_:)();
    v18 = *(v3 + 8);
    v18(v5, v2);
    *(v16 + 32) = v21;
    static UIPointerAccessory.Position.bottomRight.getter();
  }

  v22 = static UIPointerAccessory.arrow(_:)();
  v18(v5, v2);
  *(v16 + 40) = v22;
  sub_1000065A8(0, &qword_100AF20F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setAccessories:isa];

  return v14;
}

void sub_1007CE424()
{
  v1 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v1);
  v2 = sub_1000F24EC(&qword_100AF20E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizePanGestureRecognizer) = 0;
  v6 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleView;
  type metadata accessor for ResizingHandleView();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_deleteButton;
  type metadata accessor for CanvasAssetDeleteView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_previewBorderLayer;
  *(v0 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_resizeHandleSideConstraint) = 0;
  v9 = v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isFullWidth) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_primaryActionRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_selectAssetRecognizer) = 0;
  v10 = OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView__configuration;
  v11[2] = 65537;
  v12 = 1;
  UIView.Invalidations.Layout.init()();
  sub_1007CD978();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v3 + 32))(v0 + v10, v5, v2);
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_isShowingContextMenuPreview) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_hoverGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1007CE754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007CE83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  if (qword_100AD0AE0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = qword_100AF2118;
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D70;
  v7 = *(v5 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v7;
  v31 = inited + 32;
  v8 = *(v5 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  v29 = inited & 0xFFFFFFFFFFFFFF8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = 0;
  v30 = v10;
  do
  {
    v32 = v14;
    if (v10)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v29 + 16))
      {
        goto LABEL_30;
      }

      v15 = *(v31 + 8 * v14);
    }

    v33 = v15;
    v16 = [v15 operations];
    sub_1000065A8(0, &unk_100AF2190);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
LABEL_10:
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for ThumbnailCacheOperation();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v25 = *(v23 + qword_100AF0110) == a1 && *(v23 + qword_100AF0110 + 8) == a2;
            if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v26 = v21;

              swift_setDeallocating();
              swift_arrayDestroy();
              v27 = v26;
              [v24 setQueuePriority:v28];

              return;
            }
          }

          ++v19;
          if (v22 == v18)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v14 = v32 + 1;

    v10 = v30;
  }

  while (v32 != 2);
  swift_setDeallocating();
  swift_arrayDestroy();
}

uint64_t sub_1007CEB70(void *a1)
{
  if (qword_100AD0AE0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v1 = [*(qword_100AF2118 + *a1) operations];
    sub_1000065A8(0, &unk_100AF2190);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      break;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_19;
    }

LABEL_4:
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        a1 = *(v2 + 8 * v4 + 32);
      }

      v5 = a1;
      v6 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([a1 isCancelled])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a1 = specialized ContiguousArray._endMutation()();
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  a1 = _CocoaArrayWrapper.endIndex.getter();
  v3 = a1;
  if (a1)
  {
    goto LABEL_4;
  }

LABEL_19:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage[2];
  }

  return v8;
}

void sub_1007CEDAC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, const char *a5, void *a6)
{
  if (sub_1007CEB70(a4) >= 100)
  {
    if (qword_100AD0AD8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000617C(v17, qword_100AF2100);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100008458(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, oslog, v18, a5, v19, 0xCu);
      sub_10000BA7C(v20);
    }
  }

  else
  {
    if (qword_100AD0AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100AF2118;
    v13 = qword_100AF2118 + *a6;
    os_unfair_lock_lock(v13);
    v14 = *(v13 + 8);
    v15 = String._bridgeToObjectiveC()();
    [v14 setObject:a3 forKey:v15];

    os_unfair_lock_unlock(v13);
    v16 = *(v12 + *a4);

    [v16 addOperation:a3];
  }
}

id sub_1007CEFE8()
{
  if (qword_100AD0AD8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100AF2100);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "OperationsManager.cancelLowPriorityThumbnailOperations", v3, 2u);
  }

  if (qword_100AD0AE0 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100AF2118 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority);

  return [v4 cancelAllOperations];
}

id sub_1007CF134(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100AD0AE0 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v3 = qword_100AF2118 + *a3;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  os_unfair_lock_unlock(v3);
  if (v6 && [v6 isCancelled])
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1007CF214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1007CF278(void *a1)
{
  v2 = OBJC_IVAR____TtC7Journal24FadeNavigationTransition_preparedAnimator;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal24FadeNavigationTransition_preparedAnimator);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7Journal24FadeNavigationTransition_preparedAnimator);
  }

  else
  {
    sub_1007CF958();
    v6 = *(v1 + OBJC_IVAR____TtC7Journal24FadeNavigationTransition_timingParameters);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();
    v8 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDuration:v6 timingParameters:0.3];
    swift_unknownObjectRelease();
    v9 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (v11)
      {
        v12 = v11;
        [a1 finalFrameForViewController:v11];
        [v10 setFrame:?];
        [v10 setAlpha:0.0];
        v13 = [a1 containerView];
        [v13 addSubview:v10];

        v14 = swift_allocObject();
        *(v14 + 16) = v10;
        v35 = sub_1002D376C;
        v36 = v14;
        v31 = _NSConcreteStackBlock;
        v32 = 1107296256;
        v33 = sub_100006C7C;
        v34 = &unk_100A7EF10;
        v15 = _Block_copy(&v31);
        v16 = v10;

        [v8 addAnimations:v15];
        _Block_release(v15);
      }

      else
      {
      }
    }

    v17 = [a1 viewForKey:UITransitionContextFromViewKey];
    v18 = &selRef_sharedScheduler;
    if (v17)
    {
      v19 = v17;
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v35 = sub_10032E394;
      v36 = v20;
      v31 = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100006C7C;
      v34 = &unk_100A7EE70;
      v21 = _Block_copy(&v31);
      v22 = v19;

      [v8 addAnimations:v21];
      _Block_release(v21);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v35 = sub_1007CF9C0;
      v36 = v23;
      v31 = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1007CF214;
      v34 = &unk_100A7EEC0;
      v24 = _Block_copy(&v31);
      v25 = v22;
      v18 = &selRef_sharedScheduler;

      [v8 addCompletion:v24];
      _Block_release(v24);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    v35 = sub_1007CF9A4;
    v36 = v26;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1007CF214;
    v34 = &unk_100A7EE20;
    v27 = _Block_copy(&v31);
    swift_unknownObjectRetain();

    [v8 v18[45]];
    _Block_release(v27);
    v28 = *(v1 + v2);
    *(v1 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v29 = v3;
  return v4;
}

id sub_1007CF878(void *a1)
{
  if ([a1 userInterfaceIdiom] == 5)
  {
    v1 = [objc_allocWithZone(UICubicTimingParameters) initWithAnimationCurve:0];
  }

  else
  {
    v1 = [objc_allocWithZone(UISpringTimingParameters) initWithDuration:0.3 bounce:0.0];
  }

  v2 = v1;
  v3 = type metadata accessor for FadeNavigationTransition();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC7Journal24FadeNavigationTransition_preparedAnimator] = 0;
  *&v4[OBJC_IVAR____TtC7Journal24FadeNavigationTransition_duration] = 0x3FD3333333333333;
  *&v4[OBJC_IVAR____TtC7Journal24FadeNavigationTransition_timingParameters] = v2;
  v4[OBJC_IVAR____TtC7Journal24FadeNavigationTransition_crossFade] = 1;
  v6.receiver = v4;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_1007CF958()
{
  result = qword_100AF2248;
  if (!qword_100AF2248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF2248);
  }

  return result;
}

uint64_t sub_1007CF9E8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF22B0);
  sub_10000617C(v0, qword_100AF22B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007CFA68()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100006118(v4, qword_100AF22C8);
  sub_10000617C(v4, qword_100AF22C8);
  if (qword_100AD0AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000617C(v0, qword_100AF22B0);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t sub_1007CFBA4(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v5 = type metadata accessor for FileStoreConfiguration();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  sub_1000F24EC(&qword_100AF2410);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for FilePath();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for AssetType();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = sub_1000F24EC(&qword_100AD1420);
  v3[37] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[38] = v8;
  v3[39] = *(v8 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = sub_1000F24EC(&unk_100AD6DD0);
  v3[42] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v3[43] = v9;
  v3[44] = *(v9 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[53] = v10;
  v3[54] = *(v10 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v3[57] = v11;
  v3[58] = *(v11 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v3[61] = v12;
  v3[62] = v14;

  return _swift_task_switch(sub_1007D002C, v12, v14);
}

uint64_t sub_1007D002C()
{
  if (qword_100AD0AF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for OSSignposter();
  sub_10000617C(v2, qword_100AF22C8);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = v1;
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + qword_100AF22E0);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "AssetPostprocessingOperation", "%@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  v13 = *(v0 + 472);
  v12 = *(v0 + 480);
  v14 = *(v0 + 456);
  v15 = *(v0 + 464);
  v16 = *(v0 + 432);
  v38 = *(v0 + 448);
  v17 = *(v0 + 352);
  v34 = *(v0 + 344);
  v18 = *(v0 + 312);
  v36 = *(v0 + 304);
  v19 = *(v0 + 272);
  v35 = *(v0 + 264);
  v37 = *(v0 + 184);

  (*(v15 + 16))(v13, v12, v14);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 504) = OSSignpostIntervalState.init(id:isOpen:)();
  v20 = swift_allocObject();
  *(v0 + 512) = v20;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = swift_allocBox();
  *(v0 + 520) = v21;
  *(v0 + 528) = v22;
  (*(v17 + 56))(v22, 1, 1, v34);
  v23 = swift_allocObject();
  *(v0 + 536) = v23;
  *(v23 + 16) = 0;
  v24 = swift_allocBox();
  *(v0 + 544) = v24;
  *(v0 + 552) = v25;
  (*(v19 + 104))(v25, enum case for AssetType.unknown(_:), v35);
  v26 = swift_allocBox();
  *(v0 + 560) = v26;
  *(v0 + 568) = v27;
  (*(v18 + 56))(v27, 1, 1, v36);
  *(v0 + 576) = *&v37[qword_100AF22E8];
  v28 = swift_allocObject();
  *(v0 + 584) = v28;
  v28[2] = v37;
  v28[3] = v23;
  v28[4] = v26;
  v28[5] = v24;
  v28[6] = v20;
  v28[7] = v21;
  *(v0 + 904) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v29 = *(v16 + 104);
  *(v0 + 592) = v29;
  *(v0 + 600) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v29(v38);
  v30 = v37;

  v31 = swift_task_alloc();
  *(v0 + 608) = v31;
  *v31 = v0;
  v31[1] = sub_1007D0474;
  v32 = *(v0 + 448);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v31, v32, sub_1007D764C, v28, &type metadata for () + 8);
}

uint64_t sub_1007D0474()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
  }

  else
  {
    v4 = v2[56];
    v5 = v2[53];
    v6 = v2[54];
    v7 = *(v6 + 8);
    v2[78] = v7;
    v2[79] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[61];
    v9 = v2[62];

    return _swift_task_switch(sub_1007D061C, v8, v9);
  }
}

uint64_t sub_1007D061C()
{
  v74 = v0;
  v1 = v0[64];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[80] = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = v0[66];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[42];
  swift_beginAccess();
  sub_1000082B4(v4, v7, &unk_100AD6DD0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100004F84(v0[42], &unk_100AD6DD0);
LABEL_8:
    if (qword_100AD0AE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000617C(v20, qword_100AF22B0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "couldn't get info from Core Data", v23, 2u);
    }

    v24 = swift_task_alloc();
    v0[108] = v24;
    *v24 = v0;
    v25 = sub_1007D40F0;
LABEL_13:
    v24[1] = v25;
    v26 = v0[67];
    v27 = v0[23];

    return sub_1007D6944(v27, v26);
  }

  v8 = v0[67];
  v9 = v0[52];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  v13 = *(v11 + 32);
  v0[81] = v13;
  v0[82] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v9, v12, v10);
  swift_beginAccess();
  v14 = *(v8 + 16);
  v0[83] = v14;
  if (!v14)
  {
    (*(v0[44] + 8))(v0[52], v0[43]);
    goto LABEL_8;
  }

  v15 = v0[71];
  v16 = v0[38];
  v17 = v0[39];
  v18 = v0[37];
  swift_beginAccess();
  sub_1000082B4(v15, v18, &qword_100AD1420);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v19 = v0[37];
    (*(v0[44] + 8))(v0[52], v0[43]);
    sub_100004F84(v19, &qword_100AD1420);
    goto LABEL_8;
  }

  v29 = v0[77];
  (*(v0[39] + 32))(v0[40], v0[37], v0[38]);

  v30 = v14;
  static Task<>.checkCancellation()();
  if (v29)
  {
    v31 = v0[52];
    v33 = v0[43];
    v32 = v0[44];
    v35 = v0[39];
    v34 = v0[40];
    v36 = v0[38];

    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);

    v37 = v0[60];
    v39 = v0[57];
    v38 = v0[58];
    sub_1007D5CA0();

    (*(v38 + 8))(v37, v39);

    v40 = v0[1];

    return v40();
  }

  v41 = URL.pathExtension.getter();
  v43 = sub_100690EDC(v41, v42);

  if (v43)
  {
    v44 = swift_task_alloc();
    v0[84] = v44;
    *v44 = v0;
    v44[1] = sub_1007D0FAC;
    v45 = v0[50];
LABEL_24:

    return sub_1007D6E1C(v45, v3, v2);
  }

  URL.pathExtension.getter();
  v46 = sub_100690F5C();

  if (v46)
  {
    v47 = swift_task_alloc();
    v0[91] = v47;
    *v47 = v0;
    v47[1] = sub_1007D1CA0;
    v45 = v0[49];
    goto LABEL_24;
  }

  if (URL.pathExtension.getter() == 6709603 && v48 == 0xE300000000000000)
  {
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v49 & 1) == 0)
    {
      if (qword_100AD0AE8 != -1)
      {
        swift_once();
      }

      v55 = v0[52];
      v56 = v0[46];
      v57 = v0[43];
      v58 = v0[44];
      v59 = type metadata accessor for Logger();
      sub_10000617C(v59, qword_100AF22B0);
      (*(v58 + 16))(v56, v55, v57);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[46];
      v65 = v0[43];
      v64 = v0[44];
      if (v62)
      {
        v66 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = v72;
        *v66 = 136315138;
        sub_100209458();
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v70 = *(v64 + 8);
        v70(v63, v65);
        v71 = sub_100008458(v67, v69, &v73);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v60, v61, "unsupported asset type %s", v66, 0xCu);
        sub_10000BA7C(v72);
      }

      else
      {

        v70 = *(v64 + 8);
        v70(v63, v65);
      }

      v0[100] = v70;
      v24 = swift_task_alloc();
      v0[101] = v24;
      *v24 = v0;
      v25 = sub_1007D3648;
      goto LABEL_13;
    }
  }

  v50 = swift_task_alloc();
  v0[98] = v50;
  *v50 = v0;
  v50[1] = sub_1007D2BA4;
  v51 = v0[52];
  v52 = v0[48];
  v53 = v0[22];
  v54 = v0[21];

  return sub_1003DD8E4(v52, v54, v53, v51);
}

uint64_t sub_1007D0FAC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[85] = a2;
  v5[86] = v2;

  if (v2)
  {
    v6 = v5[61];
    v7 = v5[62];
    v8 = sub_1007D46A8;
  }

  else
  {
    v5[87] = a1;
    v6 = v5[61];
    v7 = v5[62];
    v8 = sub_1007D1120;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1007D1120()
{
  v1 = *(v0 + 552);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  (*(v0 + 648))(*(v0 + 408), *(v0 + 400), *(v0 + 344));
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v4);
  v5 = swift_task_alloc();
  *(v0 + 704) = v5;
  *v5 = v0;
  v5[1] = sub_1007D124C;
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v8 = *(v0 + 280);
  v9 = *(v0 + 176);
  v10 = *(v0 + 168);

  return sub_10023BBF4(v10, v9, v6, v7, v8);
}

uint64_t sub_1007D124C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  *(*v1 + 908) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 496);
  v7 = *(v2 + 488);

  return _swift_task_switch(sub_1007D1404, v7, v6);
}

uint64_t sub_1007D1404()
{
  v72 = v0;
  if (*(v0 + 908) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 688);
    v3 = *(v0 + 680);
    static Task<>.checkCancellation()();
    if (v2)
    {
      v4 = *(v0 + 664);
      v6 = *(v0 + 408);
      v5 = *(v0 + 416);
      v7 = *(v0 + 344);
      v8 = *(v0 + 352);
      v9 = *(v0 + 312);
      v10 = *(v0 + 320);
      v11 = *(v0 + 304);

      v12 = *(v8 + 8);
      v12(v6, v7);
      (*(v9 + 8))(v10, v11);
      v12(v5, v7);

      v13 = *(v0 + 480);
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      sub_1007D5CA0();

      (*(v14 + 8))(v13, v15);

      v16 = *(v0 + 8);

      return v16();
    }

    else
    {
      v70 = v1;
      v21 = URL.fileSize.getter();
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = URL.fileSize.getter();
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (qword_100AD0AE8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 416);
      v28 = *(v0 + 352);
      v29 = *(v0 + 360);
      v30 = *(v0 + 344);
      v31 = type metadata accessor for Logger();
      *(v0 + 824) = sub_10000617C(v31, qword_100AF22B0);
      (*(v28 + 16))(v29, v27, v30);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v26 / v23 * 100.0;
        v68 = v33;
        v66 = v23;
        v67 = v26;
        v36 = *(v0 + 352);
        v35 = *(v0 + 360);
        v63 = *(v0 + 344);
        v64 = *(v0 + 552);
        v69 = v3;
        v38 = *(v0 + 272);
        v37 = *(v0 + 280);
        v65 = *(v0 + 264);
        v39 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v39 = 136316162;
        v40 = URL.pathExtension.getter();
        v42 = v41;
        v43 = *(v36 + 8);
        v43(v35, v63);
        v44 = sub_100008458(v40, v42, v71);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        swift_beginAccess();
        (*(v38 + 16))(v37, v64, v65);
        v45 = AssetType.rawValue.getter();
        v47 = v46;
        (*(v38 + 8))(v37, v65);
        v3 = v69;
        v48 = sub_100008458(v45, v47, v71);

        *(v39 + 14) = v48;
        *(v39 + 22) = 2048;
        *(v39 + 24) = v66;
        *(v39 + 32) = 2048;
        *(v39 + 34) = v67;
        *(v39 + 42) = 2048;
        *(v39 + 44) = v34;
        _os_log_impl(&_mh_execute_header, v32, v68, "Resized %s file [%s] %{bytes}ld bytes -> %{bytes}ld bytes (%g%%)", v39, 0x34u);
        swift_arrayDestroy();
      }

      else
      {
        v50 = *(v0 + 352);
        v49 = *(v0 + 360);
        v51 = *(v0 + 344);

        v43 = *(v50 + 8);
        v43(v49, v51);
      }

      *(v0 + 832) = v43;
      v52 = *(v0 + 664);
      v53 = *(v0 + 592);
      v54 = *(v0 + 904);
      v55 = *(v0 + 440);
      v56 = *(v0 + 424);
      v57 = *(v0 + 184);
      v58 = swift_allocObject();
      *(v0 + 840) = v58;
      v58[2] = v52;
      v58[3] = v70;
      v58[4] = v3;
      v58[5] = v57;
      v53(v55, v54, v56);
      v59 = v57;
      v60 = v52;
      v61 = swift_task_alloc();
      *(v0 + 848) = v61;
      *v61 = v0;
      v61[1] = sub_1007D3A44;
      v62 = *(v0 + 440);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v61, v62, sub_1007D7670, v58, &type metadata for () + 8);
    }
  }

  else
  {

    v18 = swift_task_alloc();
    *(v0 + 712) = v18;
    *v18 = v0;
    v18[1] = sub_1007D1B38;
    v19 = *(v0 + 536);
    v20 = *(v0 + 184);

    return sub_1007D6944(v20, v19);
  }
}

uint64_t sub_1007D1B38()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D4908;
  }

  else
  {
    v5 = sub_1007D7714;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D1CA0(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[92] = a2;
  v5[93] = v2;

  if (v2)
  {
    v6 = v5[61];
    v7 = v5[62];
    v8 = sub_1007D4B80;
  }

  else
  {
    v5[94] = a1;
    v6 = v5[61];
    v7 = v5[62];
    v8 = sub_1007D1E14;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1007D1E14()
{
  (*(v0 + 648))(*(v0 + 408), *(v0 + 392), *(v0 + 344));
  v1 = swift_task_alloc();
  *(v0 + 760) = v1;
  *v1 = v0;
  v1[1] = sub_1007D1F04;
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);

  return sub_10047A274(v5, v4, v2, v3);
}

uint64_t sub_1007D1F04(char a1)
{
  v2 = *v1;
  *(*v1 + 909) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return _swift_task_switch(sub_1007D2060, v4, v3);
}

uint64_t sub_1007D2060()
{
  v72 = v0;
  if (*(v0 + 909) == 1)
  {
    v1 = *(v0 + 752);
    v2 = *(v0 + 744);
    v3 = *(v0 + 736);
    static Task<>.checkCancellation()();
    if (v2)
    {
      v4 = *(v0 + 664);
      v6 = *(v0 + 408);
      v5 = *(v0 + 416);
      v7 = *(v0 + 344);
      v8 = *(v0 + 352);
      v9 = *(v0 + 312);
      v10 = *(v0 + 320);
      v11 = *(v0 + 304);

      v12 = *(v8 + 8);
      v12(v6, v7);
      (*(v9 + 8))(v10, v11);
      v12(v5, v7);

      v13 = *(v0 + 480);
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      sub_1007D5CA0();

      (*(v14 + 8))(v13, v15);

      v16 = *(v0 + 8);

      return v16();
    }

    else
    {
      v70 = v1;
      v21 = URL.fileSize.getter();
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = URL.fileSize.getter();
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (qword_100AD0AE8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 416);
      v28 = *(v0 + 352);
      v29 = *(v0 + 360);
      v30 = *(v0 + 344);
      v31 = type metadata accessor for Logger();
      *(v0 + 824) = sub_10000617C(v31, qword_100AF22B0);
      (*(v28 + 16))(v29, v27, v30);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v26 / v23 * 100.0;
        v68 = v33;
        v66 = v23;
        v67 = v26;
        v36 = *(v0 + 352);
        v35 = *(v0 + 360);
        v63 = *(v0 + 344);
        v64 = *(v0 + 552);
        v69 = v3;
        v38 = *(v0 + 272);
        v37 = *(v0 + 280);
        v65 = *(v0 + 264);
        v39 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v39 = 136316162;
        v40 = URL.pathExtension.getter();
        v42 = v41;
        v43 = *(v36 + 8);
        v43(v35, v63);
        v44 = sub_100008458(v40, v42, v71);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        swift_beginAccess();
        (*(v38 + 16))(v37, v64, v65);
        v45 = AssetType.rawValue.getter();
        v47 = v46;
        (*(v38 + 8))(v37, v65);
        v3 = v69;
        v48 = sub_100008458(v45, v47, v71);

        *(v39 + 14) = v48;
        *(v39 + 22) = 2048;
        *(v39 + 24) = v66;
        *(v39 + 32) = 2048;
        *(v39 + 34) = v67;
        *(v39 + 42) = 2048;
        *(v39 + 44) = v34;
        _os_log_impl(&_mh_execute_header, v32, v68, "Resized %s file [%s] %{bytes}ld bytes -> %{bytes}ld bytes (%g%%)", v39, 0x34u);
        swift_arrayDestroy();
      }

      else
      {
        v50 = *(v0 + 352);
        v49 = *(v0 + 360);
        v51 = *(v0 + 344);

        v43 = *(v50 + 8);
        v43(v49, v51);
      }

      *(v0 + 832) = v43;
      v52 = *(v0 + 664);
      v53 = *(v0 + 592);
      v54 = *(v0 + 904);
      v55 = *(v0 + 440);
      v56 = *(v0 + 424);
      v57 = *(v0 + 184);
      v58 = swift_allocObject();
      *(v0 + 840) = v58;
      v58[2] = v52;
      v58[3] = v70;
      v58[4] = v3;
      v58[5] = v57;
      v53(v55, v54, v56);
      v59 = v57;
      v60 = v52;
      v61 = swift_task_alloc();
      *(v0 + 848) = v61;
      *v61 = v0;
      v61[1] = sub_1007D3A44;
      v62 = *(v0 + 440);

      return NSManagedObjectContext.perform<A>(schedule:_:)(v61, v62, sub_1007D7670, v58, &type metadata for () + 8);
    }
  }

  else
  {

    v18 = swift_task_alloc();
    *(v0 + 768) = v18;
    *v18 = v0;
    v18[1] = sub_1007D2794;
    v19 = *(v0 + 536);
    v20 = *(v0 + 184);

    return sub_1007D6944(v20, v19);
  }
}

uint64_t sub_1007D2794()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D4DE0;
  }

  else
  {
    v5 = sub_1007D28FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D28FC()
{
  v1 = v0[83];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[43];
  v4 = v0[44];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  sub_1003DDEB0();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();

  v10 = *(v4 + 8);
  v10(v3, v5);
  (*(v7 + 8))(v6, v8);
  v10(v2, v5);

  v11 = v0[60];
  v13 = v0[57];
  v12 = v0[58];
  sub_1007D5CA0();

  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1007D2BA4()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D5474;
  }

  else
  {
    v5 = sub_1007D2D0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D2D0C()
{
  v97 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(v0 + 648))(*(v0 + 408), *(v0 + 384), *(v0 + 344));
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.assetStorageDirectoryURL.getter();
  (*(v5 + 8))(v4, v6);
  FilePath.init(_:)();
  v7 = *(v2 + 48);
  if (v7(v3, 1, v1) == 1)
  {
    sub_100004F84(*(v0 + 224), &qword_100AF2410);
LABEL_11:
    sub_1003DDEB0();
    v40 = swift_allocError();
    *v41 = 1;
    swift_willThrow();
    *(v0 + 880) = v40;
    v42 = swift_task_alloc();
    *(v0 + 888) = v42;
    *v42 = v0;
    v42[1] = sub_1007D5058;
    v43 = *(v0 + 536);
    v44 = *(v0 + 184);

    return sub_1007D6944(v44, v43);
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 376);
  v10 = *(v0 + 344);
  v11 = *(v0 + 352);
  v12 = *(v0 + 232);
  v13 = *(v0 + 216);
  v94 = *(*(v0 + 240) + 32);
  v94(*(v0 + 256), *(v0 + 224), v12);
  (*(v11 + 16))(v9, v8, v10);
  FilePath.init(_:)();
  if (v7(v13, 1, v12) == 1)
  {
    v14 = *(v0 + 216);
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
    sub_100004F84(v14, &qword_100AF2410);
    goto LABEL_11;
  }

  v94(*(v0 + 248), *(v0 + 216), *(v0 + 232));
  v15 = FilePath.removePrefix(_:)();
  v16 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  if ((v15 & 1) == 0)
  {
    v39 = *(v18 + 8);
    v39(*(v0 + 248), *(v0 + 232));
    v39(v17, v19);
    goto LABEL_11;
  }

  v20 = FilePath.string.getter();
  v22 = v21;
  v23 = *(v18 + 8);
  v23(v16, v19);
  v23(v17, v19);
  v24 = *(v0 + 792);
  static Task<>.checkCancellation()();
  if (v24)
  {
    v25 = *(v0 + 664);
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    v30 = *(v0 + 312);
    v31 = *(v0 + 320);
    v32 = *(v0 + 304);

    v33 = *(v28 + 8);
    v33(v27, v29);
    (*(v30 + 8))(v31, v32);
    v33(v26, v29);

    v34 = *(v0 + 480);
    v36 = *(v0 + 456);
    v35 = *(v0 + 464);
    sub_1007D5CA0();

    (*(v35 + 8))(v34, v36);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v95 = v20;
    v45 = URL.fileSize.getter();
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v45;
    }

    v48 = URL.fileSize.getter();
    if (v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48;
    }

    if (qword_100AD0AE8 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 416);
    v52 = *(v0 + 352);
    v53 = *(v0 + 360);
    v54 = *(v0 + 344);
    v55 = type metadata accessor for Logger();
    *(v0 + 824) = sub_10000617C(v55, qword_100AF22B0);
    (*(v52 + 16))(v53, v51, v54);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v50 / v47 * 100.0;
      v92 = v57;
      v93 = v22;
      v60 = *(v0 + 352);
      v59 = *(v0 + 360);
      v87 = *(v0 + 344);
      v88 = *(v0 + 552);
      v91 = v50;
      v61 = *(v0 + 272);
      v62 = *(v0 + 280);
      v89 = *(v0 + 264);
      v63 = swift_slowAlloc();
      v96[0] = swift_slowAlloc();
      *v63 = 136316162;
      v90 = v47;
      v64 = URL.pathExtension.getter();
      v66 = v65;
      v67 = *(v60 + 8);
      v67(v59, v87);
      v22 = v93;
      v68 = sub_100008458(v64, v66, v96);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      swift_beginAccess();
      (*(v61 + 16))(v62, v88, v89);
      v69 = AssetType.rawValue.getter();
      v71 = v70;
      (*(v61 + 8))(v62, v89);
      v72 = sub_100008458(v69, v71, v96);

      *(v63 + 14) = v72;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v90;
      *(v63 + 32) = 2048;
      *(v63 + 34) = v91;
      *(v63 + 42) = 2048;
      *(v63 + 44) = v58;
      _os_log_impl(&_mh_execute_header, v56, v92, "Resized %s file [%s] %{bytes}ld bytes -> %{bytes}ld bytes (%g%%)", v63, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v74 = *(v0 + 352);
      v73 = *(v0 + 360);
      v75 = *(v0 + 344);

      v67 = *(v74 + 8);
      v67(v73, v75);
    }

    *(v0 + 832) = v67;
    v76 = *(v0 + 664);
    v77 = *(v0 + 592);
    v78 = *(v0 + 904);
    v79 = *(v0 + 440);
    v80 = *(v0 + 424);
    v81 = *(v0 + 184);
    v82 = swift_allocObject();
    *(v0 + 840) = v82;
    v82[2] = v76;
    v82[3] = v95;
    v82[4] = v22;
    v82[5] = v81;
    v77(v79, v78, v80);
    v83 = v81;
    v84 = v76;
    v85 = swift_task_alloc();
    *(v0 + 848) = v85;
    *v85 = v0;
    v85[1] = sub_1007D3A44;
    v86 = *(v0 + 440);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v85, v86, sub_1007D7670, v82, &type metadata for () + 8);
  }
}

uint64_t sub_1007D3648()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D57BC;
  }

  else
  {
    v5 = sub_1007D37B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D37B0()
{
  v1 = v0[100];
  v2 = v0[83];
  v3 = v0[52];
  v4 = v0[43];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  sub_1003DDEB0();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();

  (*(v5 + 8))(v6, v7);
  v1(v3, v4);

  v9 = v0[60];
  v11 = v0[57];
  v10 = v0[58];
  sub_1007D5CA0();

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007D3A44()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  (*(v2 + 624))(*(v2 + 440), *(v2 + 424));

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D5A24;
  }

  else
  {
    v5 = sub_1007D3C24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D3C24()
{
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[20] = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 20];

  v6 = v0[20];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v0[23];
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = v8;
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[23];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v13;
      *v15 = v13;
      *(v14 + 12) = 2112;
      v16 = v13;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      v15[1] = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "%@ error while deleting originalImageFileURL %@", v14, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v18 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFB8 != -1)
  {
    swift_once();
  }

  v19 = v0[104];
  v30 = v0[83];
  v33 = v0[60];
  v20 = v0[58];
  v32 = v0[57];
  v31 = v0[52];
  v29 = v0[51];
  v21 = v0[43];
  v23 = v0[39];
  v22 = v0[40];
  v28 = v0[38];
  v24 = qword_100B2FBA8;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v18 postNotificationName:v24 object:isa];

  v19(v29, v21);
  (*(v23 + 8))(v22, v28);
  v19(v31, v21);

  sub_1007D5CA0();

  (*(v20 + 8))(v33, v32);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1007D40F0()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D4498;
  }

  else
  {
    v5 = sub_1007D4258;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D4258()
{
  sub_1003DDEB0();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();

  v2 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  sub_1007D5CA0();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1007D4498()
{

  v1 = v0[60];
  v3 = v0[57];
  v2 = v0[58];
  sub_1007D5CA0();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007D46A8()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);

  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1007D4908()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);

  v8 = *(v3 + 8);
  v8(v2, v4);
  (*(v5 + 8))(v6, v7);
  v8(v1, v4);

  v9 = *(v0 + 480);
  v11 = *(v0 + 456);
  v10 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v10 + 8))(v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1007D4B80()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);

  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1007D4DE0()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);

  v8 = *(v3 + 8);
  v8(v2, v4);
  (*(v5 + 8))(v6, v7);
  v8(v1, v4);

  v9 = *(v0 + 480);
  v11 = *(v0 + 456);
  v10 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v10 + 8))(v9, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1007D5058()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1007D5540;
  }

  else
  {
    v5 = sub_1007D51C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007D51C0()
{
  v15 = v0[99];
  v1 = v0[83];
  v2 = v0[52];
  v3 = v0[43];
  v4 = v0[44];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  sub_1003DDEB0();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v9 = *(v4 + 8);
  v9(v2, v3);
  if (!v15)
  {
    v9(v0[51], v0[43]);
  }

  v10 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  sub_1007D5CA0();

  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1007D5474()
{
  v0[110] = v0[99];
  v1 = swift_task_alloc();
  v0[111] = v1;
  *v1 = v0;
  v1[1] = sub_1007D5058;
  v2 = v0[67];
  v3 = v0[23];

  return sub_1007D6944(v3, v2);
}

uint64_t sub_1007D5540()
{
  v1 = v0[99];
  v2 = v0[83];
  v3 = v0[52];
  v4 = v0[43];
  v5 = v0[44];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];

  (*(v7 + 8))(v6, v8);
  v9 = *(v5 + 8);
  v9(v3, v4);
  if (!v1)
  {
    v9(v0[51], v0[43]);
  }

  v10 = v0[60];
  v12 = v0[57];
  v11 = v0[58];
  sub_1007D5CA0();

  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1007D57BC()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 416);
  v3 = *(v0 + 344);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);

  (*(v4 + 8))(v5, v6);
  v1(v2, v3);

  v7 = *(v0 + 480);
  v9 = *(v0 + 456);
  v8 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1007D5A24()
{
  v1 = *(v0 + 832);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 304);

  v1(v3, v4);
  (*(v5 + 8))(v6, v7);
  v1(v2, v4);

  v8 = *(v0 + 480);
  v10 = *(v0 + 456);
  v9 = *(v0 + 464);
  sub_1007D5CA0();

  (*(v9 + 8))(v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1007D5CA0()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0AF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  sub_10000617C(v8, qword_100AF22C8);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "AssetPostprocessingOperation", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1007D5F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v84 = a2;
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v6 - 8);
  v93 = &v79 - v7;
  v8 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v8 - 8);
  v88 = &v79 - v9;
  v10 = type metadata accessor for AssetType();
  v90 = *(v10 - 8);
  v91 = v10;
  __chkstk_darwin(v10);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v79 - v16;
  v18 = type metadata accessor for FileStoreConfiguration();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for URL();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v94 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = swift_projectBox();
  v85 = swift_projectBox();
  v23 = swift_projectBox();
  v24 = [*(a1 + qword_100AF22E8) objectWithID:*(a1 + qword_100AF22E0)];
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v82 = v23;
    v27 = [v25 filePath];
    if (v27)
    {
      v79 = v17;
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      static FileStoreConfiguration.shared.getter();
      v81 = v29;
      v80 = v31;
      FileStoreConfiguration.getAttachmentURL(from:)();
      (*(v19 + 8))(v21, v18);
      v32 = v84;
      swift_beginAccess();
      v33 = *(v32 + 16);
      *(v32 + 16) = v26;
      v34 = v24;

      v35 = [v26 asset];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 id];

        v38 = v79;
        if (v37)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v39 = 0;
        }

        else
        {
          v39 = 1;
        }

        v63 = type metadata accessor for UUID();
        (*(*(v63 - 8) + 56))(v14, v39, 1, v63);
        sub_100024EC0(v14, v38);
      }

      else
      {
        v62 = type metadata accessor for UUID();
        v38 = v79;
        (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
      }

      v64 = v83;
      swift_beginAccess();
      sub_100014318(v38, v64, &qword_100AD1420);
      v65 = [v26 asset];
      v66 = v91;
      v67 = v89;
      if (v65)
      {
        v68 = v65;
        v69 = v88;
        JournalEntryAssetMO.type.getter();

        v70 = v90;
        if ((*(v90 + 48))(v69, 1, v66) != 1)
        {
          (*(v70 + 32))(v67, v69, v66);
LABEL_26:
          v71 = v85;
          swift_beginAccess();
          (*(v70 + 40))(v71, v67, v66);
          v72 = v92;
          swift_beginAccess();
          v73 = v80;
          *(v72 + 16) = v81;
          *(v72 + 24) = v73;

          v74 = v86;
          v75 = v93;
          v76 = v87;
          (*(v86 + 32))(v93, v94, v87);
          (*(v74 + 56))(v75, 0, 1, v76);
          v77 = v82;
          swift_beginAccess();
          sub_100014318(v75, v77, &unk_100AD6DD0);
          return;
        }
      }

      else
      {

        v70 = v90;
        v69 = v88;
        (*(v90 + 56))(v88, 1, 1, v66);
      }

      (*(v70 + 104))(v67, enum case for AssetType.unknown(_:), v66);
      if ((*(v70 + 48))(v69, 1, v66) != 1)
      {
        sub_100004F84(v69, &qword_100AE4290);
      }

      goto LABEL_26;
    }

    if (qword_100AD0AE8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000617C(v51, qword_100AF22B0);
    v52 = v24;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v95[0] = v56;
      *v55 = 136315138;
      v57 = [v26 filePath];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
      }

      else
      {
        v61 = 0xE300000000000000;
        v59 = 7104878;
      }

      v78 = sub_100008458(v59, v61, v95);

      *(v55 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v53, v54, "filePath is not valid path: %s", v55, 0xCu);
      sub_10000BA7C(v56);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100AD0AE8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000617C(v40, qword_100AF22B0);
    v41 = v24;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v95[0] = v45;
      *v44 = 136315138;
      v46 = [v41 CKDescription];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_100008458(v47, v49, v95);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "unable to get fileAttachmentMO from CoreData, instead fetched %s", v44, 0xCu);
      sub_10000BA7C(v45);
    }

    else
    {
    }
  }
}

uint64_t sub_1007D6944(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1007D6A04, 0, 0);
}

uint64_t sub_1007D6A04()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v7 = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1007D6B40;
  v9 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_1007D7690, v6, &type metadata for () + 8);
}

uint64_t sub_1007D6B40()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1007D6D38;
  }

  else
  {
    v5 = sub_1007D6CD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007D6CD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007D6D38()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1007D6D9C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    [v3 setNeedsProcessing:0];
    sub_1007D72CC();
  }
}

uint64_t sub_1007D6E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = type metadata accessor for FileStoreConfiguration();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1007D6F0C, 0, 0);
}

uint64_t sub_1007D6F0C()
{
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:v2];

  v4 = [v3 lastPathComponent];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v0[2] = v5;
  v0[3] = v7;
  v0[4] = 46;
  v0[5] = 0xE100000000000000;
  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v0[6] = 0x64657A697365725FLL;
  v0[7] = 0xE800000000000000;
  v29 = sub_1000777B4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v30 = v3;
  v9 = [v3 stringByDeletingLastPathComponent];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v13 = [objc_allocWithZone(NSString) initWithString:v9];

  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 stringByAppendingPathComponent:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.getAttachmentURL(from:)();
  (*(v11 + 8))(v10, v12);
  v19 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v0[8] = 0;
  v23 = [v19 removeItemAtURL:v21 error:v0 + 8];

  v24 = v0[8];
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v26 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v27 = v0[1];

  return v27(v16, v18);
}

id sub_1007D7258(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setFilePath:v2];

  [a1 setNeedsProcessing:0];
  return sub_1007D72CC();
}

id sub_1007D72CC()
{
  v1 = *(v0 + qword_100AF22E8);
  v10 = 0;
  if ([v1 save:&v10])
  {
    return v10;
  }

  v3 = v10;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100AD0AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AF22B0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "error saving context: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  return swift_willThrow();
}

void sub_1007D74D8()
{
  v1 = *(v0 + qword_100AF22E8);
}

id sub_1007D7518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetPostprocessingOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007D7550(uint64_t a1)
{
  v2 = *(a1 + qword_100AF22E8);
}

uint64_t sub_1007D759C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10007E510;

  return sub_1007CFBA4(a2, a3);
}

unint64_t sub_1007D76C0()
{
  result = qword_100AF2418;
  if (!qword_100AF2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2418);
  }

  return result;
}

uint64_t sub_1007D7714()
{

  return sub_1007D28FC();
}

void sub_1007D7788()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 id];
  if (v6)
  {
    v7 = v6;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100ACFCB0 != -1)
    {
      swift_once();
    }

    sub_10044BE48(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_100AD0AF8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AF2420);
    v13 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v13, v9, "(purgeCache) unable to get assetId from an asset", v10, 2u);
    }

    v11 = v13;
  }
}

uint64_t sub_1007D7984()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF2420);
  v1 = sub_10000617C(v0, qword_100AF2420);
  if (qword_100AD01B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1007D7A4C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v77 = a3;
  v90 = type metadata accessor for URL.DirectoryHint();
  v100 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for URL();
  v95 = *(v88 - 8);
  v9 = __chkstk_darwin(v88);
  v99 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v103 = 0x2D626D756874;
  v104 = 0xE600000000000000;
  v13 = type metadata accessor for UUID();
  v14 = sub_100500278();
  v83 = a5;
  v81 = v13;
  v80 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v102._countAndFlagsBits = 0;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  LODWORD(v98) = a1;
  v19 = 0xE500000000000000;
  v20 = 0x657263536C6C7566;
  if (a1 == 6)
  {
    v20 = 0x6C6C616D73;
  }

  else
  {
    v19 = 0xEA00000000006E65;
  }

  v21 = 0xE600000000000000;
  v22 = 0x61546D756964656DLL;
  if (a1 == 4)
  {
    v22 = 0x6D756964656DLL;
  }

  else
  {
    v21 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 5u)
  {
    v20 = v22;
    v19 = v21;
  }

  v23 = 0xE500000000000000;
  v24 = 0x69576D756964656DLL;
  if (a1 != 2)
  {
    v24 = 0x656772616CLL;
  }

  v76 = 0xEA00000000006564;
  if (a1 == 2)
  {
    v23 = 0xEA00000000006564;
  }

  v25 = 0x6154656772614C78;
  if (a1)
  {
    v25 = 0x656772614C78;
    v26 = 0xE600000000000000;
  }

  else
  {
    v26 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v24 = v25;
    v23 = v26;
  }

  if (a1 <= 3u)
  {
    v27 = v24;
  }

  else
  {
    v27 = v20;
  }

  if (a1 <= 3u)
  {
    v28 = v23;
  }

  else
  {
    v28 = v19;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30 = v104;
  v31 = a4;
  v84 = v12;
  if (a4)
  {
    v32 = v103;
  }

  else
  {
    v102._countAndFlagsBits = 45;
    v102._object = 0xE100000000000000;
    v101 = v77;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    String.append(_:)(v102);
    v31 = a4;

    v32 = v103;
    v30 = v104;
  }

  v34 = v89;
  v35 = v90;
  v36 = v99;
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  v87 = objc_opt_self();
  v37 = v32;
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for FileStoreConfiguration();
  v38 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v39 = v100;
  v40 = (v100 + 104);
  v41 = (v100 + 8);
  v85 = (v95 + 8);
  v100 = 1;
  v79 = v98;
  v82 = v31;
  v97 = (v39 + 104);
  v96 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v78 = v41;
  do
  {
    v94 = sub_10000617C(v86, qword_100B2FC48);
    FileStoreConfiguration.cachesDirectoryURL.getter();
    v103 = v37;
    v104 = v30;
    v98 = v30;
    v95 = *v40;
    (v95)(v34, v38, v35);
    v43 = sub_1000777B4();
    v44 = v84;
    v93 = v43;
    URL.appending<A>(path:directoryHint:)();
    v92 = *v41;
    v92(v34, v35);
    v45 = *v85;
    v46 = v36;
    v47 = v37;
    v48 = v88;
    (*v85)(v46, v88);
    v49 = [v87 defaultManager];
    URL.path.getter();
    v50 = String._bridgeToObjectiveC()();

    v51 = [v49 fileExistsAtPath:v50];

    v52 = v44;
    v91 = v45;
    v45(v44, v48);
    if ((v51 & 1) == 0)
    {

      return;
    }

    v53 = *(*(qword_100B2F850 + 16) + qword_100AEC680);
    v54 = objc_allocWithZone(NSString);
    v55 = v98;
    v56 = String._bridgeToObjectiveC()();
    v57 = [v54 initWithString:v56];

    [v53 removeObjectForKey:v57];
    v58 = v99;
    FileStoreConfiguration.cachesDirectoryURL.getter();
    v103 = v47;
    v104 = v55;
    v59 = v90;
    (v95)(v34, v96, v90);
    URL.appending<A>(path:directoryHint:)();
    v60 = v78;
    v92(v34, v59);
    v61 = v91;
    v91(v58, v48);

    sub_1007D861C();
    v61(v52, v48);
    v62 = 0xE600000000000000;
    v103 = 0x2D626D756874;
    v104 = 0xE600000000000000;
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    v64._countAndFlagsBits = 45;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    v102._countAndFlagsBits = v100;
    v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v65);

    v66._countAndFlagsBits = 45;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    v67 = v59;
    if (v79 > 3)
    {
      v68 = v82;
      if (v79 > 5)
      {
        v34 = v89;
        v41 = v60;
        if (v79 == 6)
        {
          v62 = 0xE500000000000000;
          v69 = 0x6C6C616D73;
        }

        else
        {
          v62 = 0xEA00000000006E65;
          v69 = 0x657263536C6C7566;
        }
      }

      else
      {
        v34 = v89;
        v41 = v60;
        if (v79 == 4)
        {
          v69 = 0x6D756964656DLL;
        }

        else
        {
          v69 = 0x61546D756964656DLL;
          v62 = 0xEA00000000006C6CLL;
        }
      }

      goto LABEL_49;
    }

    v68 = v82;
    if (v79 > 1)
    {
      v34 = v89;
      v41 = v60;
      if (v79 == 2)
      {
        v69 = 0x69576D756964656DLL;
        v62 = v76;
      }

      else
      {
        v62 = 0xE500000000000000;
        v69 = 0x656772616CLL;
      }

LABEL_49:
      v40 = v97;
      goto LABEL_50;
    }

    v69 = 0x656772614C78;
    v34 = v89;
    v40 = v97;
    v41 = v60;
    if (!v79)
    {
      v69 = 0x6154656772614C78;
      v62 = 0xEA00000000006C6CLL;
    }

LABEL_50:
    v70 = v62;
    String.append(_:)(*&v69);

    v30 = v104;
    v35 = v67;
    if (v68)
    {
      v36 = v99;
      v37 = v103;
    }

    else
    {
      v102._countAndFlagsBits = 45;
      v102._object = 0xE100000000000000;
      v101 = v77;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      String.append(_:)(v102);

      v37 = v103;
      v30 = v104;
      v36 = v99;
    }

    v38 = v96;
    ++v100;
  }

  while (v100 != 102);

  if (qword_100AD0AF8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_10000617C(v71, qword_100AF2420);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "(purgeCache) Infinite loop, exiting", v74, 2u);
  }
}

void sub_1007D8468(uint64_t a1)
{
  for (i = 0; i != 8; ++i)
  {
    v3 = *(&off_100A5A148 + i + 32);
    if (v3 <= 3 || *(&off_100A5A148 + i + 32) <= 5u || v3 == 6)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        sub_1007D7A4C(v3, a1, 0, 1, a1);
        sub_1007D7A4C(v3, a1, 1, 0, a1);
        sub_1007D7A4C(v3, a1, 2, 0, a1);
      }
    }

    else
    {
    }
  }
}

void sub_1007D861C()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v14 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v14];

  v5 = v14;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFA68 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AD6DE8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Delete data from url error: %@", v11, 0xCu);
      sub_10012B714(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1007D889C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x8000000100909D30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1007D8930(uint64_t a1)
{
  v2 = sub_1007D8AD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007D896C(uint64_t a1)
{
  v2 = sub_1007D8AD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SettingsData.encode(to:)(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF2438);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1007D8AD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1007D8AD8()
{
  result = qword_100AF2440;
  if (!qword_100AF2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2440);
  }

  return result;
}

uint64_t SettingsData.init(from:)(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF2448);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000CA14(a1, a1[3]);
  sub_1007D8AD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BA7C(a1);
  return v7 & 1;
}

unint64_t sub_1007D8C84()
{
  result = qword_100AF2450;
  if (!qword_100AF2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2450);
  }

  return result;
}

unint64_t sub_1007D8CDC()
{
  result = qword_100AF2458;
  if (!qword_100AF2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2458);
  }

  return result;
}

uint64_t sub_1007D8D7C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AF2448);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1007D8AD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000BA7C(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1007D8EE0(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF2438);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1007D8AD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1007D903C()
{
  result = qword_100AF2460;
  if (!qword_100AF2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2460);
  }

  return result;
}

unint64_t sub_1007D9094()
{
  result = qword_100AF2468;
  if (!qword_100AF2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2468);
  }

  return result;
}

unint64_t sub_1007D90EC()
{
  result = qword_100AF2470;
  if (!qword_100AF2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2470);
  }

  return result;
}

uint64_t sub_1007D920C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_100006118(v6, a3);
  v7 = sub_10000617C(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1007D9308()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100006118(v0, static AppSessionStartEvent.timeDurationGranularity);
  sub_10000617C(v0, static AppSessionStartEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t sub_1007D938C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_10000617C(v4, a3);
}

uint64_t sub_1007D9424@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000617C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t AppSessionStartEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD0EB8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD0EB8);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000F24EC(&qword_100AD0EB8);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppSessionStartEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EventData();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionStartEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1007D972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007D97BC(uint64_t a1)
{
  v2 = sub_1007D9998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007D97F8(uint64_t a1)
{
  v2 = sub_1007D9998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF2478);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1007D9998();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for EventData();
  sub_1007D9C78(&qword_100AF2488);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1007D9998()
{
  result = qword_100AF2480;
  if (!qword_100AF2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2480);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for EventData();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AF2490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  __chkstk_darwin(started - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_1007D9998();
  v12 = v19;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v17;
    sub_1007D9C78(&qword_100AF2498);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1007D9CBC(v11, v16);
  }

  return sub_10000BA7C(a1);
}

uint64_t sub_1007D9C78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007D9CBC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1007D9DE4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000617C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void sub_1007D9EEC()
{
  if (!qword_100AF2508)
  {
    type metadata accessor for EventData();
    sub_1007D9C78(&qword_100AF2498);
    sub_1007D9C78(&qword_100AF2488);
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2508);
    }
  }
}

uint64_t sub_1007D9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1007DA060()
{
  result = qword_100AF25C8;
  if (!qword_100AF25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF25C8);
  }

  return result;
}

unint64_t sub_1007DA0B8()
{
  result = qword_100AF25D0;
  if (!qword_100AF25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF25D0);
  }

  return result;
}

unint64_t sub_1007DA110()
{
  result = qword_100AF25D8;
  if (!qword_100AF25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF25D8);
  }

  return result;
}

uint64_t sub_1007DA1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1007DA23C(uint64_t a1)
{
  v2 = sub_1007DA3F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DA278(uint64_t a1)
{
  v2 = sub_1007DA3F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF25E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1007DA3F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1007DA3F4()
{
  result = qword_100AF25E8;
  if (!qword_100AF25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF25E8);
  }

  return result;
}

uint64_t DebugData.init(from:)(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF25F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000CA14(a1, a1[3]);
  sub_1007DA3F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BA7C(a1);
  return v7;
}

unint64_t sub_1007DA5A8()
{
  result = qword_100AF25F8;
  if (!qword_100AF25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF25F8);
  }

  return result;
}

unint64_t sub_1007DA600()
{
  result = qword_100AF2600;
  if (!qword_100AF2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2600);
  }

  return result;
}

uint64_t sub_1007DA654@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AF25F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1007DA3F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000BA7C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1007DA7D0(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF25E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1007DA3F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1007DA930()
{
  result = qword_100AF2608;
  if (!qword_100AF2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2608);
  }

  return result;
}

unint64_t sub_1007DA988()
{
  result = qword_100AF2610;
  if (!qword_100AF2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2610);
  }

  return result;
}

unint64_t sub_1007DA9E0()
{
  result = qword_100AF2618;
  if (!qword_100AF2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2618);
  }

  return result;
}

void __swiftcall DeviceData.init(deviceModel:devicePlatform:osBundleVersion:osInstallVariant:osVersion:)(Journal::DeviceData *__return_ptr retstr, Swift::String deviceModel, Journal::DevicePlatform devicePlatform, Swift::String osBundleVersion, Journal::OsInstallVariant osInstallVariant, Swift::String osVersion)
{
  retstr->deviceModel = deviceModel;
  retstr->devicePlatform = devicePlatform;
  retstr->osBundleVersion = osBundleVersion;
  retstr->osInstallVariant = osInstallVariant;
  retstr->osVersion = osVersion;
}

uint64_t DeviceData.osBundleVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DeviceData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SessionData.productType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SessionData.productType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1007DABC0()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0x656C646E7542736FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6F6973726556736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007DAC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007DB088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007DACAC(uint64_t a1)
{
  v2 = sub_1007DAF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DACE8(uint64_t a1)
{
  v2 = sub_1007DAF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AF2620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_1007DAF30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 16);
    v10[13] = 1;
    sub_1007DAF84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = *(v3 + 40);
    v10[10] = 3;
    sub_1007DAFD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[9] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1007DAF30()
{
  result = qword_100AF2628;
  if (!qword_100AF2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2628);
  }

  return result;
}

unint64_t sub_1007DAF84()
{
  result = qword_100AF2630;
  if (!qword_100AF2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2630);
  }

  return result;
}

unint64_t sub_1007DAFD8()
{
  result = qword_100AF2638;
  if (!qword_100AF2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2638);
  }

  return result;
}

double DeviceData.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1007DB25C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1007DB088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100909D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1007DB25C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AF2668);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1007DAF30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v31 = v9;
  LOBYTE(v32) = 1;
  sub_1007DB7F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = LOBYTE(v36[0]);
  LOBYTE(v36[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v12;
  v29 = v13;
  v30 = v14;
  LOBYTE(v32) = 3;
  sub_1007DB848();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = LOBYTE(v36[0]);
  v44 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v15;
  v28 = v15;
  v21 = v31;
  *&v32 = v31;
  *(&v32 + 1) = v11;
  v22 = v43;
  LOBYTE(v33) = v43;
  v23 = v29;
  *(&v33 + 1) = v29;
  *&v34 = v30;
  BYTE8(v34) = v20;
  *&v35 = v16;
  *(&v35 + 1) = v19;
  sub_1007DB89C(&v32, v36);
  sub_10000BA7C(a1);
  v36[0] = v21;
  v36[1] = v11;
  v37 = v22;
  v38 = v23;
  v39 = v30;
  v40 = v28;
  v41 = v16;
  v42 = v19;
  result = sub_1007DB8D4(v36);
  v25 = v33;
  *a2 = v32;
  a2[1] = v25;
  v26 = v35;
  a2[2] = v34;
  a2[3] = v26;
  return result;
}

unint64_t sub_1007DB588()
{
  result = qword_100AF2640;
  if (!qword_100AF2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2640);
  }

  return result;
}

unint64_t sub_1007DB5E0()
{
  result = qword_100AF2648;
  if (!qword_100AF2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2648);
  }

  return result;
}

uint64_t sub_1007DB634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007DB67C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007DB6F0()
{
  result = qword_100AF2650;
  if (!qword_100AF2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2650);
  }

  return result;
}

unint64_t sub_1007DB748()
{
  result = qword_100AF2658;
  if (!qword_100AF2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2658);
  }

  return result;
}

unint64_t sub_1007DB7A0()
{
  result = qword_100AF2660;
  if (!qword_100AF2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2660);
  }

  return result;
}

unint64_t sub_1007DB7F4()
{
  result = qword_100AF2670;
  if (!qword_100AF2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2670);
  }

  return result;
}

unint64_t sub_1007DB848()
{
  result = qword_100AF2678;
  if (!qword_100AF2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2678);
  }

  return result;
}

uint64_t OsInstallVariant.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C616E7265747865;
  }

  if (a1 == 1)
  {
    return 0x6C616E7265746E69;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1007DB954(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6E776F6E6B6E75;
  if (v3 == 1)
  {
    v6 = 0x6C616E7265746E69;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C616E7265747865;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1007DBA38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007DBAD0()
{
  String.hash(into:)();
}

Swift::Int sub_1007DBB54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007DBBE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal16OsInstallVariantO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1007DBC18(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E7265746E69;
  v3 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

unint64_t _s7Journal16OsInstallVariantO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AED0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007DBD6C()
{
  result = qword_100AF2680;
  if (!qword_100AF2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2680);
  }

  return result;
}

unint64_t sub_1007DBDD0()
{
  result = qword_100AF2688;
  if (!qword_100AF2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2688);
  }

  return result;
}

uint64_t sub_1007DBF60()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100006118(v0, static AppSessionEndEvent.timeDurationGranularity);
  sub_10000617C(v0, static AppSessionEndEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t AppSessionEndEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1000F24EC(&qword_100AD0EC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1000F24EC(&qword_100AD0EC0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000F24EC(&qword_100AD0EB8);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v5 = sub_1000F24EC(&qword_100AD0EC0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppSessionEndEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 20);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EventData();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 20);
  v8 = type metadata accessor for TimedData();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_1007DC3D8()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_1007DC410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007DC4F4(uint64_t a1)
{
  v2 = sub_1007DC76C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DC530(uint64_t a1)
{
  v2 = sub_1007DC76C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF2690);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_1007DC76C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for EventData();
  sub_1007DCBE0(&qword_100AF2488, &type metadata accessor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AppSessionEndEvent.Model(0);
    v8[14] = 1;
    type metadata accessor for TimedData();
    sub_1007DCBE0(&qword_100AF26A0, &type metadata accessor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1007DC76C()
{
  result = qword_100AF2698;
  if (!qword_100AF2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2698);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for TimedData();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EventData();
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000F24EC(&qword_100AF26A8);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AppSessionEndEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_1007DC76C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_1007DCBE0(&qword_100AF2498, &type metadata accessor for EventData);
  v15 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_1007DCBE0(&qword_100AF26B0, &type metadata accessor for TimedData);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_1007DCC28(v17, v22);
  sub_10000BA7C(a1);
  return sub_1007DCC8C(v17);
}

uint64_t sub_1007DCBE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007DCC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007DCC8C(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007DCDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1000F24EC(&qword_100AD0EB8);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1000F24EC(&qword_100AD0EC0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_1007DCEEC()
{
  if (!qword_100AF2720)
  {
    type metadata accessor for TimedData();
    sub_1007DCBE0(&qword_100AF26B0, &type metadata accessor for TimedData);
    sub_1007DCBE0(&qword_100AF26A0, &type metadata accessor for TimedData);
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2720);
    }
  }
}

uint64_t sub_1007DD00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1007DD0B0()
{
  result = qword_100AF27E0;
  if (!qword_100AF27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF27E0);
  }

  return result;
}

unint64_t sub_1007DD108()
{
  result = qword_100AF27E8;
  if (!qword_100AF27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF27E8);
  }

  return result;
}

unint64_t sub_1007DD160()
{
  result = qword_100AF27F0;
  if (!qword_100AF27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF27F0);
  }

  return result;
}

uint64_t ICloudAccountState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E49646567676F6CLL;
  }

  if (a1 == 1)
  {
    return 0x754F646567676F6CLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1007DD214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x754F646567676F6CLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E49646567676F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x754F646567676F6CLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E49646567676F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1007DD320()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007DD3C8()
{
  String.hash(into:)();
}

Swift::Int sub_1007DD45C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007DD500@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal18ICloudAccountStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1007DD530(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x754F646567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E49646567676F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s7Journal18ICloudAccountStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AF38, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007DD694()
{
  result = qword_100AF27F8;
  if (!qword_100AF27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF27F8);
  }

  return result;
}

unint64_t sub_1007DD6F8()
{
  result = qword_100AF2800;
  if (!qword_100AF2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2800);
  }

  return result;
}

uint64_t DevicePlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 5459817;
  v2 = 0x534F63616DLL;
  v3 = 0x6E776F6E6B6E75;
  if (a1 != 3)
  {
    v3 = 0x534F6E6F69736976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x534F64615069;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1007DD7E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007DD8BC()
{
  String.hash(into:)();
}

Swift::Int sub_1007DD97C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007DDA4C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal14DevicePlatformO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1007DDA7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  if (v2 != 3)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F64615069;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s7Journal14DevicePlatformO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AFA0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007DDC0C()
{
  result = qword_100AF2808;
  if (!qword_100AF2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2808);
  }

  return result;
}

unint64_t sub_1007DDC70()
{
  result = qword_100AF2810;
  if (!qword_100AF2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2810);
  }

  return result;
}

void __swiftcall SessionData.init(cellularRadioAccessTechnology:countryCode:iCloudAccountState:isLocationAccessEnabled:isSystemNotificationsEnabled:languageCode:productType:utcOffset:)(Journal::SessionData *__return_ptr retstr, Journal::CellularRadioAccessTechnology cellularRadioAccessTechnology, Swift::String countryCode, Journal::ICloudAccountState iCloudAccountState, Swift::Bool isLocationAccessEnabled, Swift::Bool isSystemNotificationsEnabled, Swift::String languageCode, Swift::String productType, Swift::Int32 utcOffset)
{
  retstr->cellularRadioAccessTechnology = cellularRadioAccessTechnology;
  retstr->countryCode = countryCode;
  retstr->iCloudAccountState = iCloudAccountState;
  retstr->isLocationAccessEnabled = isLocationAccessEnabled;
  retstr->isSystemNotificationsEnabled = isSystemNotificationsEnabled;
  retstr->languageCode = languageCode;
  retstr->productType = productType;
  retstr->utcOffset = utcOffset;
}

uint64_t SessionData.countryCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SessionData.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SessionData.languageCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SessionData.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1007DDEB4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x54746375646F7270;
    if (v1 != 6)
    {
      v5 = 0x657366664F637475;
    }

    v6 = 0xD00000000000001CLL;
    if (v1 != 4)
    {
      v6 = 0x65676175676E616CLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x437972746E756F63;
    v3 = 0xD000000000000017;
    if (v1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    if (!*v0)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1007DDFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007DE474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007DDFFC(uint64_t a1)
{
  v2 = sub_1007DE30C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DE038(uint64_t a1)
{
  v2 = sub_1007DE30C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AF2818);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_1007DE30C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1007DE360();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = v3[24];
    v10[11] = 2;
    sub_1007DE3B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[9] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[8] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[6] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1007DE30C()
{
  result = qword_100AF2820;
  if (!qword_100AF2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2820);
  }

  return result;
}

unint64_t sub_1007DE360()
{
  result = qword_100AF2828;
  if (!qword_100AF2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2828);
  }

  return result;
}

unint64_t sub_1007DE3B4()
{
  result = qword_100AF2830;
  if (!qword_100AF2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2830);
  }

  return result;
}

__n128 SessionData.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007DE71C(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1007DE474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x80000001008E6D50 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E6D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100909D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100909DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657366664F637475 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1007DE71C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AF2860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1007DE30C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  LOBYTE(v34) = 0;
  sub_1007DEE58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v39[0];
  v39[0] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v33 = v10;
  LOBYTE(v34) = 2;
  sub_1007DEEAC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v12;
  LODWORD(v12) = v39[0];
  v39[0] = 3;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v12;
  v39[0] = 4;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v39[0] = 5;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v32;
  v31 = v15;
  v28 = v13;
  v39[0] = 6;
  *&v27 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v27 + 1) = v16;
  v50 = 7;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v30 & 1;
  v30 = v29 & 1;
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v34) = v9;
  v19 = v33;
  *(&v34 + 1) = v33;
  *&v35 = v14;
  LOBYTE(v14) = v49;
  BYTE8(v35) = v49;
  BYTE9(v35) = v26;
  BYTE10(v35) = v30;
  v20 = v28;
  v21 = v31;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v37 = v27;
  v38 = v18;
  sub_1007DEF00(&v34, v39);
  sub_10000BA7C(a1);
  v39[0] = v9;
  v40 = v19;
  v41 = v32;
  v42 = v14;
  v43 = v26;
  v44 = v30;
  v45 = v20;
  v46 = v21;
  v47 = v27;
  v48 = v18;
  result = sub_1007DEF38(v39);
  v23 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v23;
  *(a2 + 64) = v38;
  v24 = v35;
  *a2 = v34;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_1007DEBC4()
{
  result = qword_100AF2838;
  if (!qword_100AF2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2838);
  }

  return result;
}

unint64_t sub_1007DEC1C()
{
  result = qword_100AF2840;
  if (!qword_100AF2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2840);
  }

  return result;
}

__n128 sub_1007DEC70(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1007DEC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007DECDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007DED54()
{
  result = qword_100AF2848;
  if (!qword_100AF2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2848);
  }

  return result;
}

unint64_t sub_1007DEDAC()
{
  result = qword_100AF2850;
  if (!qword_100AF2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2850);
  }

  return result;
}

unint64_t sub_1007DEE04()
{
  result = qword_100AF2858;
  if (!qword_100AF2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2858);
  }

  return result;
}

unint64_t sub_1007DEE58()
{
  result = qword_100AF2868;
  if (!qword_100AF2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2868);
  }

  return result;
}

unint64_t sub_1007DEEAC()
{
  result = qword_100AF2870;
  if (!qword_100AF2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2870);
  }

  return result;
}

uint64_t AppData.appVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1007DEFE0()
{
  if (*v0)
  {
    return 0x6973726556707061;
  }

  else
  {
    return 0x646C697542707061;
  }
}

uint64_t sub_1007DF02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1007DF118(uint64_t a1)
{
  v2 = sub_1007DF324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DF154(uint64_t a1)
{
  v2 = sub_1007DF324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000F24EC(&qword_100AF2878);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000CA14(a1, a1[3]);
  sub_1007DF324();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1007DF324()
{
  result = qword_100AF2880;
  if (!qword_100AF2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2880);
  }

  return result;
}

uint64_t AppData.init(from:)(void *a1)
{
  result = sub_1007DF3F4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1007DF3A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1007DF3F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1007DF3F4(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF28B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000CA14(a1, a1[3]);
  sub_1007DF324();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BA7C(a1);
  return v7;
}

unint64_t sub_1007DF5DC()
{
  result = qword_100AF2888;
  if (!qword_100AF2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2888);
  }

  return result;
}

unint64_t sub_1007DF634()
{
  result = qword_100AF2890;
  if (!qword_100AF2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2890);
  }

  return result;
}

unint64_t sub_1007DF6AC()
{
  result = qword_100AF2898;
  if (!qword_100AF2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2898);
  }

  return result;
}

unint64_t sub_1007DF704()
{
  result = qword_100AF28A0;
  if (!qword_100AF28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF28A0);
  }

  return result;
}

unint64_t sub_1007DF75C()
{
  result = qword_100AF28A8;
  if (!qword_100AF28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF28A8);
  }

  return result;
}

uint64_t CellularRadioAccessTechnology.rawValue.getter(unsigned __int8 a1)
{
  v1 = 6648940;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1768319351;
  if (a1 != 3)
  {
    v3 = 1851881335;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6863616552746F6ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1007DF84C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007DF920()
{
  String.hash(into:)();
}

Swift::Int sub_1007DF9E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007DFAB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7Journal29CellularRadioAccessTechnologyO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1007DFAE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6648940;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  v7 = 1768319351;
  if (v2 != 3)
  {
    v7 = 1851881335;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t _s7Journal29CellularRadioAccessTechnologyO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5B038, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007DFC70()
{
  result = qword_100AF28B8;
  if (!qword_100AF28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF28B8);
  }

  return result;
}

unint64_t sub_1007DFCD4()
{
  result = qword_100AF28C0;
  if (!qword_100AF28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF28C0);
  }

  return result;
}

uint64_t sub_1007DFD28()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF28D0);
  sub_10000617C(v0, qword_100AF28D0);
  return Logger.init(subsystem:category:)();
}

id sub_1007DFE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007DFF2C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode);
  *(v1 + OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode) = a1;
  if (v3 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    if (*(v1 + v2) == 4)
    {
      v7 = &CAFrameRateRangeDefault;
    }

    else
    {
      if (qword_100AD0B38 != -1)
      {
        swift_once();
      }

      v7 = byte_100AF28E8;
    }

    *&v5 = v7->maximum;
    *&v6 = v7->preferred;
    *&v4 = v7->minimum;
    [v8 setPreferredFrameRateRange:{v4, v5, v6}];
  }
}

uint64_t sub_1007E0024()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

id sub_1007E0098()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = &OBJC_PROTOCOL___RCWaveformDataProviding;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    swift_unknownObjectRetain();
  }

  v5 = [objc_allocWithZone(RCPlatterLeadingWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectRelease();
  [v5 setStyle:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000617C(v0, qword_100B31520);
  (*(v1 + 16))(v3, v6, v0);
  v7 = UIColor.init(resource:)();
  [v5 setSliceColor:v7];

  return v5;
}

id sub_1007E0288()
{
  type metadata accessor for StackAccessoryView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = v0;
  [v1 setSpacing:14.0];
  [v1 setAlignment:3];

  v2 = sub_10049D160();
  [v1 addArrangedSubview:v2];

  v3 = sub_10049D1C0();
  [v1 addArrangedSubview:v3];

  return v1;
}

id sub_1007E0350()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = &OBJC_PROTOCOL___RCWaveformDataProviding;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    swift_unknownObjectRetain();
  }

  v5 = [objc_allocWithZone(RCPlatterMinimalWaveformView) initWithFrame:v4 dataProvider:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectRelease();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000617C(v0, qword_100B31520);
  (*(v1 + 16))(v3, v6, v0);
  v7 = UIColor.init(resource:)();
  [v5 setSliceColor:v7];

  return v5;
}

id sub_1007E052C()
{
  v1 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView);
  }

  else
  {
    type metadata accessor for AudioRecordingLiveActivityStopButton();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007E05A4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1007E0608()
{
  type metadata accessor for StackAccessoryView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = v0;
  [v1 setAxis:1];
  [v1 setAlignment:3];

  v2 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView, sub_1007E0350);
  [v1 addArrangedSubview:v2];

  v3 = sub_1007E052C();
  [v1 addArrangedSubview:v3];

  return v1;
}

uint64_t sub_1007E06EC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E076C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_1007E07E4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() updateLinkForView:v1];

    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v0;
    static UIViewController.ViewLoading.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    if (qword_100AD0B38 != -1)
    {
      swift_once();
    }

    LODWORD(v5) = *byte_100AF28E8;
    LODWORD(v6) = *&byte_100AF28E8[4];
    LODWORD(v7) = *&byte_100AF28E8[8];
    [v3 setPreferredFrameRateRange:{v5, v6, v7}];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v3 setEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1007E0A10()
{
  v1[2] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007E0B14, v4, v3);
}

uint64_t sub_1007E0B14()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1007E0B98, v2, v1);
}

uint64_t sub_1007E0B98()
{
  [objc_msgSend(*(v0 + 16) "systemApertureElementContext")];
  swift_unknownObjectRelease();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_100110414;

  return sub_10003FA1C(3000000000000000000, 0, 0, 0, 1);
}

void sub_1007E0C9C()
{
  sub_10049C9E4();
  v1 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  v5 = *(v4 + 24);
  v5(ObjectType, v4);
  [v1 updateSliceFramesForRecordingTime:?];

  v6 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView, sub_1007E0350);
  v5(ObjectType, v4);
  [v6 updateSliceFramesForRecordingTime:?];
}

id sub_1007E0DC0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] = 0;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView] = 0;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView] = 0;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView] = 0;
  *&v2[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView] = 0;
  sub_1000065A8(0, &qword_100AF29A0);
  UIViewController.ViewLoading.init()();
  *&v2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&v2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&v2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v5 = &v2[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id sub_1007E0ED4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView] = 0;
  sub_1000065A8(0, &qword_100AF29A0);
  UIViewController.ViewLoading.init()();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1007E0FF0()
{

  v1 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController__updateLink;
  v2 = sub_1000F24EC(&qword_100AF2A68);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for AudioRecordingDynamicIslandViewController()
{
  result = qword_100AF2988;
  if (!qword_100AF2988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007E11F0()
{
  sub_1007E12B0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007E12B0()
{
  if (!qword_100AF2998)
  {
    sub_1000065A8(255, &qword_100AF29A0);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF2998);
    }
  }
}

void sub_1007E15EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeLayoutMode);
    if (v2 >= 5)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0x201000303uLL >> (8 * v2);
    }

    sub_1007E166C(v3);
  }
}

void sub_1007E166C(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_100AD0B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AF28D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136315138;
    v9 = String.init<A>(describing:)();
    v11 = sub_100008458(v9, v10, aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Transitioning to layout mode %s", v7, 0xCu);
    sub_10000BA7C(v8);
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1007E1E14;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A7FA08;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  [v12 performWithoutAnimation:v15];
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
    v18 = v17;
    if (a1 == 2)
    {
      v19 = &UIFontTextStyleTitle3;
    }

    else
    {
      v19 = &UIFontTextStyleSubheadline;
    }

    [v17 setStyle:a1 == 2];

    v20 = sub_10049D160();
    v21 = *v19;
    sub_1000F24EC(&unk_100ADFBF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940050;
    *(inited + 32) = UIFontWeightMedium;
    *(inited + 40) = 0;
    *(inited + 48) = 3;
    *(inited + 56) = xmmword_100957A70;
    *(inited + 72) = 2;
    v23 = sub_100047788(v21, inited, 0);

    swift_setDeallocating();
    swift_arrayDestroy();
    [v20 setFont:v23];

    v24 = *&v16[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8];
    ObjectType = swift_getObjectType();
    if (!(*(v24 + 32))(ObjectType, v24))
    {
      sub_10049D1C0();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;
      static UIView.Invalidating.subscript.setter();
      [*&v16[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] setUserInteractionEnabled:0];
      v26 = *&v16[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel];
      v27 = objc_opt_self();
      v28 = v26;
      v29 = [v27 labelColor];
      [v28 setTextColor:v29];

      v30 = *&v16[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView];
      v31 = [v27 labelColor];
      [v30 setSliceColor:v31];

      v32 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView, sub_1007E0350);
      v33 = [v27 labelColor];
      [v32 setSliceColor:v33];

      sub_1007E052C();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 1;
      static UIView.Invalidating.subscript.setter();
    }

    v34 = objc_opt_self();
    v35 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController_activeConstraints;
    sub_1000065A8(0, &qword_100AD8000);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 deactivateConstraints:isa];

    sub_1007E20CC(a1);
    *&v16[v35] = v37;

    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:v38];
  }
}

void sub_1007E1E40(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = sub_10049D1C0();
  if (v4 == 2)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v7 + 32))(ObjectType, v7) != 0;
  }

  [v5 setHidden:v6];

  v9 = sub_10049D160();
  if (a1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
    v11 = swift_getObjectType();
    v12 = (*(v10 + 32))(v11, v10) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = a1 == 0;
  v14 = a1 != 0;
  v15 = v13;
  [v9 setHidden:v12];

  v16 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
  [v16 setHidden:v15];

  v17 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView, sub_1007E0288);
  [v17 setHidden:v15];

  v18 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView, sub_1007E0608);
  [v18 setHidden:v14];

  v19 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView, sub_1007E0350);
  v20 = *(v2 + OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8);
  v21 = swift_getObjectType();
  v22 = *(v20 + 32);
  [v19 setHidden:{v22(v21, v20) == 0}];

  v23 = sub_1007E052C();
  [v23 setHidden:{v22(v21, v20) != 0}];
}

void sub_1007E20CC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {

      sub_1007E2BD0();
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_100941D60;
      v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
      v4 = [v3 leadingAnchor];

      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 leadingAnchor];

        v8 = [v4 constraintEqualToAnchor:v7];
        *(v2 + 32) = v8;
        v9 = sub_10049D160();
        v10 = [v9 trailingAnchor];

        v11 = [v1 view];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 trailingAnchor];

          v14 = [v10 constraintEqualToAnchor:v13];
          *(v2 + 40) = v14;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else if (a1)
  {

    sub_1007E2664();
  }

  else
  {

    sub_1007E22F0();
  }
}

id sub_1007E22F0()
{
  v1 = v0;
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D70;
  v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView, sub_1007E0608);
  v4 = [v3 widthAnchor];

  v5 = [v4 constraintEqualToConstant:45.0];
  *(v2 + 32) = v5;
  v6 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView;
  v7 = [*&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalAccessoryView] centerXAnchor];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result centerXAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  *(v2 + 40) = v11;
  v12 = [*&v1[v6] centerYAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result centerYAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v2 + 48) = v15;
  v28 = v2;
  v16 = *&v1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  if ((*(v16 + 32))(ObjectType, v16))
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D50;
    v19 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView, sub_1007E0350);
    v20 = [v19 heightAnchor];

    v21 = [v20 constraintEqualToConstant:20.0];
    *(inited + 32) = v21;
    sub_1006AD658(inited);
    v2 = v28;
  }

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v24 = *(v2 + 8 * j + 32);
      }

      v26 = v24;
      v27 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      LODWORD(v25) = 1144750080;
      [v24 setPriority:v25];

      if (v27 == i)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return v2;
}

id sub_1007E2664()
{
  v1 = v0;
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D70;
  v3 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
  v4 = [v3 leadingAnchor];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  v7 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  v8 = [v7 leadingAnchor];
  v9 = [v4 constraintEqualToAnchor:v8];

  *(v2 + 32) = v9;
  v10 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView;
  v11 = [*&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] widthAnchor];
  v12 = [v11 constraintEqualToConstant:40.0];

  *(v2 + 40) = v12;
  v13 = [*&v1[v10] heightAnchor];
  v14 = [v13 constraintEqualToConstant:20.0];

  *(v2 + 48) = v14;
  v42 = v2;
  v15 = *&v1[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController_recordingManager + 8];
  ObjectType = swift_getObjectType();
  if (!(*(v15 + 32))(ObjectType, v15))
  {
    goto LABEL_6;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D60;
  v18 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView, sub_1007E0288);
  v19 = [v18 trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = result;
  v21 = &selRef_SBUISA_systemApertureLegibleContentLayoutMarginsGuide;
  v22 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  v23 = [v22 trailingAnchor];
  v24 = [v19 constraintEqualToAnchor:v23];

  *(inited + 32) = v24;
  v25 = [*&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView] centerYAnchor];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_6:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D60;
    v26 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView, sub_1007E0288);
    v27 = [v26 centerXAnchor];

    result = [v1 view];
    if (result)
    {
      v28 = result;
      v21 = &selRef_SBUISA_systemApertureTrailingConcentricContentLayoutGuide;
      v29 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

      v30 = [v29 centerXAnchor];
      v31 = [v27 constraintEqualToAnchor:v30];

      *(inited + 32) = v31;
      v25 = [*&v1[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___trailingAccessoryView] centerYAnchor];
      result = [v1 view];
      if (result)
      {
        goto LABEL_8;
      }

LABEL_25:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  v32 = result;
  v33 = [result *v21];

  v34 = [v33 centerYAnchor];
  v35 = [v25 constraintEqualToAnchor:v34];

  *(inited + 40) = v35;
  sub_1006AD658(inited);
  if (v42 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v38 = *(v42 + 8 * j + 32);
      }

      v40 = v38;
      v41 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      LODWORD(v39) = 1144750080;
      [v38 setPriority:v39];

      if (v41 == i)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return v42;
}

void sub_1007E2BD0()
{
  v1 = [v0 view];
  if (!v1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    return;
  }

  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1009640E0;
  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v5 widthAnchor];

  v8 = [v3 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v4 + 32) = v9;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = v10;
  v12 = [v10 bottomAnchor];

  v13 = [v0 view];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v13 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v16 = [v15 bottomAnchor];
  v17 = [v12 constraintEqualToAnchor:v16];

  *(v4 + 40) = v17;
  v18 = sub_1007E05A4(&OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView, sub_1007E0098);
  v19 = [v18 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:18.0];
  *(v4 + 48) = v23;
  v24 = OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView;
  v25 = [*&v0[OBJC_IVAR____TtC7Journal41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] heightAnchor];
  v26 = [v25 constraintEqualToConstant:46.0];

  *(v4 + 56) = v26;
  v27 = [*&v0[v24] centerYAnchor];
  v28 = sub_10049D1C0();
  v29 = [v28 centerYAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v4 + 64) = v30;
  v31 = [*&v0[v24] trailingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v32;
  v34 = [v32 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v35 = [v34 centerXAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v4 + 72) = v36;
  v37 = OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton;
  v38 = [*&v0[OBJC_IVAR____TtC7Journal40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] widthAnchor];
  v39 = [v38 constraintEqualToConstant:57.0];

  *(v4 + 80) = v39;
  v40 = [*&v0[v37] heightAnchor];
  v41 = [v40 constraintEqualToConstant:57.0];

  *(v4 + 88) = v41;
  v42 = [*&v0[v37] centerXAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = v43;
  v45 = [v43 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v46 = [v45 centerXAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v4 + 96) = v47;
  v48 = [*&v0[v37] centerYAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = [v49 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  v52 = [v51 centerYAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v4 + 104) = v53;
  v54 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    v55 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v55 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v56 = *(v4 + 8 * v55 + 32);
      }

      v58 = v56;
      ++v55;
      LODWORD(v57) = 1144750080;
      [v56 setPriority:v57];
    }

    while (v54 != v55);
  }
}

uint64_t sub_1007E3210@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1007E3290(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

unint64_t sub_1007E3314()
{
  result = qword_100AF2A70;
  if (!qword_100AF2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2A70);
  }

  return result;
}

void sub_1007E33D4(unsigned __int8 a1, char a2, unsigned __int8 *a3)
{
  v4 = a1;
  if (a2)
  {
    v5 = [a3 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    v7 = v6 != 5;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = DebugData.init(name:);
  v8[4] = 0;
  v9 = OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state;
  v10 = a3[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state];
  v11 = a3;
  v12 = [v11 view];
  if (v10 == v4)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        v15 = a3[v9];
        v16 = a3[v9] == 0;
        v29 = v14;
        [v29 endEditing:1];
        [v29 setHidden:v16];

        if (v15)
        {
          [v29 makeKeyWindow];
        }
      }

      else
      {
      }

      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v12)
  {
LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  a3[v9] = v4;
  v17 = [v11 view];
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 window];

  if (v19)
  {
    v20 = v19;
    [v20 endEditing:1];
    [v20 setHidden:0];
  }

  v21 = 0.0;
  v22 = 0.0;
  if (v7)
  {
    v22 = 0.25;
    if (!v4)
    {
      v21 = 0.15;
    }
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v11;
  *(v24 + 24) = v4;
  v34 = sub_1007E400C;
  v35 = v24;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100006C7C;
  v33 = &unk_100A7FC90;
  v25 = _Block_copy(&aBlock);
  v26 = v11;

  v27 = swift_allocObject();
  *(v27 + 16) = sub_1007E4020;
  *(v27 + 24) = v8;
  v34 = sub_1000F560C;
  v35 = v27;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003264C;
  v33 = &unk_100A7FCE0;
  v28 = _Block_copy(&aBlock);

  [v23 animateWithDuration:0 delay:v25 options:v28 animations:v22 completion:v21];
  _Block_release(v28);
  _Block_release(v25);
}

id sub_1007E381C(unsigned __int8 *a1, uint64_t (*a2)(void))
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      v7 = a1[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state];
      v8 = a1[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state] == 0;
      v9 = v6;
      [v9 endEditing:1];
      [v9 setHidden:v8];

      if (v7)
      {
        [v9 makeKeyWindow];
      }
    }

    return a2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1007E38F8(void *a1, char a2)
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      v7 = 1.0;
      if (!a2)
      {
        v7 = 0.0;
      }

      [v6 setAlpha:v7];
    }

    return [a1 setNeedsUpdateContentUnavailableConfiguration];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007E39A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_onAuthenticate);
    v2 = result;

    v1();
  }

  return result;
}

id sub_1007E3A54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSecureAccessViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007E3B98(unsigned __int8 a1, char a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = a1;

  if (a2)
  {
    v8 = [a3 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    v10 = v9 != 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = sub_1007E3FF4;
  v11[4] = a4;
  v12 = OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state;
  v13 = a3[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state];

  v14 = a3;
  v15 = [v14 view];
  if (v13 == v7)
  {
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (v17)
      {
        v18 = a3[v12];
        v19 = a3[v12] == 0;
        v20 = v17;
        [v20 endEditing:1];
        [v20 setHidden:v19];

        if (v18)
        {
          [v20 makeKeyWindow];
        }
      }

      sub_1001880F4();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_23:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  a3[v12] = v7;
  v22 = [v14 view];
  if (!v22)
  {
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 window];

  if (v24)
  {
    v25 = v24;
    [v25 endEditing:1];
    [v25 setHidden:0];
  }

  v26 = 0.0;
  v27 = 0.0;
  if (v10)
  {
    v27 = 0.25;
    if (!v7)
    {
      v26 = 0.15;
    }
  }

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  *(v29 + 24) = v7;
  v38 = sub_1007E400C;
  v39 = v29;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100006C7C;
  v37 = &unk_100A7FD58;
  v30 = _Block_copy(&aBlock);
  v31 = v14;

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1007E4020;
  *(v32 + 24) = v11;
  v38 = sub_1000F560C;
  v39 = v32;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10003264C;
  v37 = &unk_100A7FDA8;
  v33 = _Block_copy(&aBlock);

  [v28 animateWithDuration:0 delay:v30 options:v33 animations:v27 completion:v26];
  _Block_release(v33);
  _Block_release(v30);
}