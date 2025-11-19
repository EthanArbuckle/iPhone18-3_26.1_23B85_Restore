void sub_1EF770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3C00D8, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3C0150, &unk_3C0178, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3C00D8, &unk_3C0100, sub_219B84, &block_descriptor_600);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ShowListPresenter, &qword_409130, &type metadata accessor for ShowListPresenter);
    sub_308FB8();
    sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F03D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BFBD8, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BFC50, &unk_3BFC78, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BFBD8, &unk_3BFC00, sub_219B84, &block_descriptor_424);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LibraryShowPresenter, &qword_4090F0, &type metadata accessor for LibraryShowPresenter);
    sub_309AA8();
    sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F1040()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BFD18, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BFD90, &unk_3BFDB8, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BFD18, &unk_3BFD40, sub_219B84, &block_descriptor_468);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for StorePagePresenter, &qword_409100, &type metadata accessor for StorePagePresenter);
    sub_309358();
    sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F1CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BFA20, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BFA98, &unk_3BFAC0, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BFA20, &unk_3BFA48, sub_219B84, &block_descriptor_371);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LongDescriptionPresenter, &qword_4090B0, &type metadata accessor for LongDescriptionPresenter);
    sub_30A738();
    sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F2910()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF8E0, sub_219194);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF958, &unk_3BF980, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF8E0, &unk_3BF908, sub_219170, &block_descriptor_327);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for HomePagePresenter, &qword_4090A0, &type metadata accessor for HomePagePresenter);
    sub_308E08();
    sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F3578()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF7A0, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF818, &unk_3BF840, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF7A0, &unk_3BF7C8, sub_219B84, &block_descriptor_283);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for LibraryPresenter, &qword_409090, &type metadata accessor for LibraryPresenter);
    sub_308BE8();
    sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F41E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF660, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF6D8, &unk_3BF700, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF660, &unk_3BF688, sub_219B84, &block_descriptor_239);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for HighlightsPresenter, &qword_409080, &type metadata accessor for HighlightsPresenter);
    sub_309408();
    sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F4E48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3C0358, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3C03D0, &unk_3C03F8, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3C0358, &unk_3C0380, sub_219B84, &block_descriptor_688);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ModernEpisodesPresenter, &qword_409150, &type metadata accessor for ModernEpisodesPresenter);
    sub_30A558();
    sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F5AB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF520, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF598, &unk_3BF5C0, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF520, &unk_3BF548, sub_219B84, &block_descriptor_195);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for CategoryListPresenter, &qword_409070, &type metadata accessor for CategoryListPresenter);
    sub_309CB8();
    sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F6718()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF3E0, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF458, &unk_3BF480, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF3E0, &unk_3BF408, sub_219B84, &block_descriptor_151);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ChannelListPresenter, &qword_409060, &type metadata accessor for ChannelListPresenter);
    sub_3099E8();
    sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F7380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF2A0, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF318, &unk_3BF340, sub_B4A60, sub_B4A5C);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF2A0, &unk_3BF2C8, sub_219B84, &block_descriptor_107);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for ChannelPresenter, &qword_409050, &type metadata accessor for ChannelPresenter);
    sub_308B68();
    sub_218910(&qword_409050, &type metadata accessor for ChannelPresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void sub_1F7FE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401058);
  __chkstk_darwin(v2 - 8);
  v4 = v84 - v3;
  v5 = sub_308BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v84 - v10;
  v12 = _UISolariumEnabled();
  v91 = v1;
  if (!v12 || (sub_303098() & 1) == 0)
  {
    v18 = [v1 navigationItem];
    [v18 _setLargeTitleAccessoryView:0];

    v19 = [v1 navigationItem];
    v20 = [v19 largeTitleDisplayMode];

    v21 = v91;
    if (v20 != &dword_0 + 3)
    {
      goto LABEL_18;
    }

    v22 = *&v91[qword_400ED0];
    if (v22)
    {
      v90 = qword_400ED0;
      v23 = *(v22 + 16);

      if (v23)
      {
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_61;
          }

          sub_218AB0(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v8, &type metadata accessor for HeaderButtonItem);
          if (sub_308BC8())
          {
            break;
          }

          ++v24;
          sub_218C60(v8, &type metadata accessor for HeaderButtonItem);
          if (v23 == v24)
          {
            goto LABEL_16;
          }
        }

        sub_218BF8(v8, v4, &type metadata accessor for HeaderButtonItem);
        (*(v6 + 56))(v4, 0, 1, v5);
        sub_EB68(v4, &qword_401058);
        v21 = v91;
        v57 = [v91 traitCollection];
        v58 = sub_30C968();

        if ((v58 & 1) == 0)
        {
          v59 = [v21 navigationItem];
          [v59 setRightBarButtonItems:0];

          v60 = *&v90[v21];
          if (!v60 || !*(v60 + 16))
          {
LABEL_20:
            v28 = [v21 navigationItem];
            v29 = [v21 navigationController];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 navigationBar];

              v32 = [v31 _backdropViewLayerGroupName];
              if (v32)
              {
                v33 = sub_30C0D8();
                v35 = v34;

                v29 = v33;
                goto LABEL_25;
              }

              v29 = 0;
            }

            v35 = 0;
LABEL_25:
            sub_B42D4(v29, v35);

            if (_UISolariumEnabled())
            {
              return;
            }

            goto LABEL_26;
          }

          v61 = *(v21 + qword_400D90);
          objc_allocWithZone(type metadata accessor for LargeTitleAccessoryView());

          v25 = sub_268170(v60, v61);
          v27.super.isa = [v21 navigationItem];
          [(objc_class *)v27.super.isa _setLargeTitleAccessoryView:v25 alignToBaseline:v25[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] horizontalAlignment:0];
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        v25 = [v21 navigationItem];

        sub_1F8C50(v26);

        sub_124C4(0, &unk_409000);
        v27.super.isa = sub_30C358().super.isa;

        [v25 setRightBarButtonItems:v27.super.isa];
        goto LABEL_19;
      }

LABEL_16:

      v21 = v91;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
    sub_EB68(v4, &qword_401058);
    goto LABEL_18;
  }

  v84[1] = qword_400ED0;
  v13 = *&v1[qword_400ED0];
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = 0;
    do
    {
      v16 = v14 != v15;
      if (v14 == v15)
      {
        break;
      }

      if (v15 >= *(v13 + 16))
      {
        goto LABEL_60;
      }

      sub_218AB0(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v11, &type metadata accessor for HeaderButtonItem);
      v17 = sub_308BA8();
      sub_218C60(v11, &type metadata accessor for HeaderButtonItem);
    }

    while ((v17 & 1) == 0);

    v1 = v91;
  }

  else
  {
    v16 = 0;
  }

  v39 = qword_400ED8;
  v1[qword_400ED8] = v16;
  sub_1FA488(&unk_3BF138, sub_219B80);
  v40 = *&v1[qword_400EE0];
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_active) = v1[v39];
  }

  v41 = [v1 navigationItem];
  v42 = [v41 trailingItemGroups];

  v84[0] = sub_124C4(0, &unk_4019D0);
  v43 = sub_30C368();

  v85 = v43;
  if (v43 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v45 = 0;
    v46 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = i;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v47 = sub_30D578();
      }

      else
      {
        if (v45 >= *(v88 + 16))
        {
          goto LABEL_59;
        }

        v47 = *(v87 + 8 * v45);
      }

      v48 = v47;
      v49 = __OFADD__(v45++, 1);
      if (v49)
      {
        break;
      }

      v50 = [v47 barButtonItems];
      sub_124C4(0, &unk_409000);
      v51 = sub_30C368();

      v90 = v48;
      if (v51 >> 62)
      {
        v52 = sub_30D668();
        if (v52)
        {
LABEL_41:
          v53 = 0;
          while (1)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = sub_30D578();
            }

            else
            {
              if (v53 >= *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_57;
              }

              v54 = *(v51 + 8 * v53 + 32);
            }

            v55 = v54;
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            [v54 setHidden:v91[v46]];

            ++v53;
            if (v56 == v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
          break;
        }
      }

      else
      {
        v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
        if (v52)
        {
          goto LABEL_41;
        }
      }

LABEL_34:

      if (v45 == v86)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

LABEL_63:

  v62 = v91;
  v63 = [v91 navigationItem];

  sub_1F913C(v64, &unk_3BF1D8, &unk_3BF200, sub_B46AC, sub_B46B4);

  isa = sub_30C358().super.isa;

  [v63 setTrailingItemGroups:isa];

  v66 = [v62 navigationItem];
  v67 = [v66 trailingItemGroups];

  v68 = sub_30C368();
  v85 = v68;
  if (v68 >> 62)
  {
    goto LABEL_88;
  }

  for (j = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)); j; j = sub_30D668())
  {
    v70 = 0;
    v71 = qword_400EE8;
    v88 = v85 & 0xFFFFFFFFFFFFFF8;
    v89 = v85 & 0xC000000000000001;
    v86 = j;
    v87 = v85 + 32;
    while (1)
    {
      if (v89)
      {
        v72 = sub_30D578();
      }

      else
      {
        if (v70 >= *(v88 + 16))
        {
          goto LABEL_87;
        }

        v72 = *(v87 + 8 * v70);
      }

      v73 = v72;
      v49 = __OFADD__(v70++, 1);
      if (v49)
      {
        break;
      }

      v74 = [v72 barButtonItems];
      sub_124C4(0, &unk_409000);
      v75 = sub_30C368();

      v90 = v73;
      if (v75 >> 62)
      {
        v76 = sub_30D668();
        if (v76)
        {
LABEL_73:
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = sub_30D578();
            }

            else
            {
              if (v77 >= *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_85;
              }

              v78 = *(v75 + 8 * v77 + 32);
            }

            v79 = v78;
            v80 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            [v78 setHidden:v91[v71]];

            ++v77;
            if (v80 == v76)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          break;
        }
      }

      else
      {
        v76 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
        if (v76)
        {
          goto LABEL_73;
        }
      }

LABEL_66:

      if (v70 == v86)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

LABEL_89:

  v81 = [v91 navigationItem];

  v83 = sub_1F9AA4(v82, &unk_3BF138, &unk_3BF160, sub_219B84, &block_descriptor_59);

  [v81 setAdditionalOverflowItems:v83];

  if ((_UISolariumEnabled() & 1) == 0)
  {
LABEL_26:
    sub_1FA344(&type metadata accessor for CategoryPagePresenter, &unk_408F70, &type metadata accessor for CategoryPagePresenter);
    sub_309CE8();
    sub_218910(&unk_408F70, &type metadata accessor for CategoryPagePresenter);
    sub_309568();
    sub_304D58();

    v36 = v92;
    v37 = v93;
    v38 = v94 | (v95 << 32);
    sub_1EC9C0(v92, v93, v38);
    sub_BA7E8(v36, v37, v38);
  }
}

void *sub_1F8C50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_308BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    v9 = *(a1 + 16);
    v41 = _swiftEmptyArrayStorage;
    v42 = _swiftEmptyArrayStorage;
    v10 = qword_400D90;
    v11 = v9;
    while (1)
    {
      if (!v11)
      {
        if ((_UISolariumEnabled() & 1) == 0)
        {
          goto LABEL_12;
        }

        return v41;
      }

      v11 = (v11 - 1);
      if (v11 >= v9)
      {
        break;
      }

      sub_218AB0(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, &type metadata accessor for HeaderButtonItem);
      v12 = *&v2[v10];

      v13 = [v2 traitCollection];
      v14 = [v13 horizontalSizeClass];

      v15 = sub_B1360(v12, v2, v14);

      sub_218C60(v7, &type metadata accessor for HeaderButtonItem);
      if (v15)
      {
        sub_30C348();
        if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        v41 = v42;
      }
    }

    __break(1u);
LABEL_12:
    v42 = _swiftEmptyArrayStorage;
    v16 = v41;
    if (v41 >> 62)
    {
      goto LABEL_30;
    }

    v17 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
LABEL_14:
      v18 = 0;
      v19 = v16 & 0xC000000000000001;
      v20 = v16 & 0xFFFFFFFFFFFFFF8;
      v21 = v9 - 1;
      v37 = xmmword_317F20;
      v39 = v16 & 0xFFFFFFFFFFFFFF8;
      v40 = v17;
      v38 = v9 - 1;
      v36 = v16 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v22 = sub_30D578();
          v23 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v18 >= *(v20 + 16))
          {
            goto LABEL_29;
          }

          v22 = *(v16 + 8 * v18 + 32);
          v23 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            v17 = sub_30D668();
            if (!v17)
            {
              break;
            }

            goto LABEL_14;
          }
        }

        v24 = v22;
        sub_30C348();
        if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        if (v18 >= v21)
        {
          v9 = v42;
        }

        else
        {
          v25 = [objc_allocWithZone(UIView) init];
          [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
          v26 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
          v27 = swift_allocObject();
          *(v27 + 16) = v37;
          v28 = [v25 widthAnchor];
          v29 = [v28 constraintEqualToConstant:0.0];

          *(v27 + 32) = v29;
          v30 = [v25 heightAnchor];
          v31 = [v30 constraintEqualToConstant:1.0];

          *(v27 + 40) = v31;
          sub_124C4(0, &qword_403000);
          isa = sub_30C358().super.isa;

          [v26 activateConstraints:isa];

          v33 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v25];
          v34 = v33;
          sub_30C348();
          if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_30C378();
          }

          sub_30C3C8();

          v16 = v41;
          v9 = v42;
          v19 = v36;
          v20 = v39;
          v17 = v40;
          v21 = v38;
        }

        ++v18;
        if (v23 == v17)
        {
          goto LABEL_32;
        }
      }
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_32:

    return v9;
  }

  return result;
}

void *sub_1F913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a4;
  v80 = a5;
  v78[2] = a3;
  v78[1] = a2;
  v6 = v5;
  v8 = sub_309D48();
  __chkstk_darwin(v8 - 8);
  v85 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = v78 - v11;
  v88 = sub_308BD8();
  v12 = *(v88 - 8);
  __chkstk_darwin(v88);
  v95 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v78 - v15;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v97 = _swiftEmptyArrayStorage;
  v18 = objc_allocWithZone(UIBarButtonItemGroup);
  v19 = sub_124C4(0, &unk_409000);
  isa = sub_30C358().super.isa;
  v21 = [v18 initWithBarButtonItems:isa representativeItem:0];

  v93 = *(a1 + 16);
  if (!v93)
  {

    return _swiftEmptyArrayStorage;
  }

  v22 = 0;
  v23 = qword_400D90;
  v92 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v91 = *(v12 + 72);
  v94 = _swiftEmptyArrayStorage;
  v24 = &selRef_registerImage_withTraitCollection_;
  v25 = &PlayControlsStackView;
  v86 = xmmword_31BF90;
  v89 = v19;
  v90 = qword_400D90;
  while (1)
  {
    sub_218AB0(v92 + v91 * v22, v16, &type metadata accessor for HeaderButtonItem);
    v31 = *&v6[v23];

    v32 = [v6 v24[241]];
    v33 = [v32 *&v25[328]];

    v34 = sub_B1360(v31, v6, v33);
    if (!v34)
    {

      goto LABEL_21;
    }

    v35 = v34;
    sub_218AB0(v16, v95, &type metadata accessor for HeaderButtonItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
        v37 = swift_allocObject();
        *(v37 + 16) = v86;
        *(v37 + 32) = v35;
        v38 = objc_allocWithZone(UIBarButtonItemGroup);
        v39 = v35;
        v40 = sub_30C358().super.isa;

        v41 = [v38 initWithBarButtonItems:v40 representativeItem:0];

        goto LABEL_28;
      }

      sub_218C60(v95, &type metadata accessor for HeaderButtonItem);
LABEL_21:
      v24 = &selRef_registerImage_withTraitCollection_;
      goto LABEL_32;
    }

    v42 = v87;
    sub_218BF8(v95, v87, &type metadata accessor for FollowButtonPresenter.Data);
    v43 = v85;
    sub_218AB0(v42, v85, &type metadata accessor for FollowButtonPresenter.Data);
    v44 = objc_allocWithZone(type metadata accessor for FollowHeaderButton());

    v46 = sub_B0774(v45, v43, v33, 0);

    v47 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v46];
    v48 = sub_30C098();
    [v47 setIdentifier:v48];

    if (_UISolariumEnabled())
    {
      v83 = v47;
      v81 = swift_allocObject();
      v82 = v46;
      *(v81 + 16) = v46;
      v84 = v46;
      v49 = [v84 traitCollection];
      v50 = [v49 horizontalSizeClass];

      if (v50 == &dword_0 + 1)
      {
        v51 = 1;
      }

      else
      {
        v52 = [v84 traitCollection];
        v53 = [v52 horizontalSizeClass];

        if (v53 == &dword_0 + 2)
        {
          v47 = v83;
          v54 = v84;
          v51 = v84[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followState] - 7 < 0xFFFFFFFC;
          v55 = v81;
          v46 = v82;
LABEL_26:
          [v47 setSharesBackground:v51];
          v56 = swift_allocObject();
          v57 = v79;
          v58 = v80;
          v56[2] = v47;
          v56[3] = v57;
          v56[4] = v55;
          v59 = &v54[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
          v60 = *&v54[OBJC_IVAR____TtC23ShelfKitCollectionViews18FollowHeaderButton_followStateDidUpdate];
          *v59 = v58;
          *(v59 + 1) = v56;
          v61 = v47;
          sub_1EBD0(v60);
          goto LABEL_27;
        }

        v51 = 0;
      }

      v46 = v82;
      v47 = v83;
      v55 = v81;
      v54 = v84;
      goto LABEL_26;
    }

LABEL_27:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v62 = swift_allocObject();
    *(v62 + 16) = v86;
    *(v62 + 32) = v35;
    v63 = objc_allocWithZone(UIBarButtonItemGroup);
    v64 = v35;
    v65 = sub_30C358().super.isa;

    v41 = [v63 initWithBarButtonItems:v65 representativeItem:v47];

    sub_218C60(v87, &type metadata accessor for FollowButtonPresenter.Data);
LABEL_28:
    v23 = v90;
    v24 = &selRef_registerImage_withTraitCollection_;
    if (v41)
    {
      v66 = v41;
      sub_30C348();
      if (*(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v97 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();

      sub_218C60(v16, &type metadata accessor for HeaderButtonItem);
      v94 = v97;
      goto LABEL_11;
    }

LABEL_32:
    v67 = *&v6[v23];

    v68 = [v6 v24[241]];
    v69 = [v68 horizontalSizeClass];

    v70 = sub_B1360(v67, v6, v69);

    if (v70)
    {
      break;
    }

LABEL_10:
    sub_218C60(v16, &type metadata accessor for HeaderButtonItem);
LABEL_11:
    ++v22;
    v25 = &PlayControlsStackView;
    if (v22 == v93)
    {

      return v94;
    }
  }

  v71 = v94;
  if (!(v94 >> 62))
  {
    v72 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
    if (v72)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  result = sub_30D668();
  v71 = v94;
  v72 = result;
  if (!result)
  {
LABEL_4:
    v26 = v21;
    sub_30C348();
    if (*(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v97 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v94 = v97;
LABEL_7:
    v23 = v90;
    v27 = v70;
    v28 = [v21 barButtonItems];
    v29 = sub_30C368();

    v96 = v29;
    sub_30C348();
    v24 = &selRef_registerImage_withTraitCollection_;
    if (*(&dword_10 + (v96 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v96 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v30 = sub_30C358().super.isa;

    [v21 setBarButtonItems:v30];

    goto LABEL_10;
  }

LABEL_35:
  v73 = 0;
  v74 = v71 & 0xC000000000000001;
  v75 = v71 & 0xFFFFFFFFFFFFFF8;
  v76 = v71 + 32;
  while (1)
  {
    while (v74)
    {
      result = sub_30D578();
      if (__OFADD__(v73++, 1))
      {
        goto LABEL_53;
      }

      v84 = result;
      result = swift_unknownObjectRelease();
      if (v84 == v21)
      {
        goto LABEL_7;
      }

      if (v73 == v72)
      {
        goto LABEL_4;
      }
    }

    if ((v73 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v73 >= *(v75 + 16))
    {
      goto LABEL_52;
    }

    if (*(v76 + 8 * v73) == v21)
    {
      goto LABEL_7;
    }

    if (++v73 == v72)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

id sub_1F9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = sub_308BD8();
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = (&v32 - v15);
  if (a1)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v33 = v8;
      v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v19 = *(v14 + 72);
      while (1)
      {
        sub_218AB0(v18, v12, &type metadata accessor for HeaderButtonItem);
        if (sub_308B98())
        {
          break;
        }

        sub_218C60(v12, &type metadata accessor for HeaderButtonItem);
        v18 += v19;
        if (!--v17)
        {
          return 0;
        }
      }

      sub_218BF8(v12, v16, &type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_12658(v16, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);

        sub_30B8E8();

        __swift_project_boxed_opaque_existential_1Tm(v39, v39[3]);
        v32 = v41;
        v20 = v41;
        v21 = __swift_project_boxed_opaque_existential_1Tm(v40, v41);
        v35 = v32;
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
        (*(*(v20 - 8) + 16))(boxed_opaque_existential_0Tm, v21, v20);

        v23 = sub_30A8C8();

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        if (v23)
        {
          v24 = objc_opt_self();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_12670(v39, v38);
          sub_12670(v40, v37);
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          sub_12658(v38, v26 + 24);
          sub_12658(v37, v26 + 64);
          *(&v35 + 1) = a4;
          v36 = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1FA234;
          *&v35 = a5;
          v27 = _Block_copy(aBlock);

          v28 = [v24 elementWithUncachedProvider:v27];
          _Block_release(v27);
          v29 = v28;
          v30 = sub_30C098();
          [v29 setAccessibilityIdentifier:v30];

          __swift_destroy_boxed_opaque_existential_1(v39);
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v29;
        }

        __swift_destroy_boxed_opaque_existential_1(v39);
        __swift_destroy_boxed_opaque_existential_1(v40);
      }

      else
      {
        sub_218C60(v16, &type metadata accessor for HeaderButtonItem);
      }
    }
  }

  return 0;
}

id sub_1F9EF4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33 = a2;
  v8 = sub_302268();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0);
  __chkstk_darwin(v11 - 8);
  v13 = v28 - v12;
  v14 = sub_3022E8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = a4[3];
    v28[2] = a4[4];
    v29 = a1;
    v28[1] = __swift_project_boxed_opaque_existential_1Tm(a4, v20);
    v30 = *(a5 + 24);
    v21 = v30;
    v22 = __swift_project_boxed_opaque_existential_1Tm(a5, v30);
    v35 = v30;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);
    v24 = sub_3022D8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);

    v25 = v19;
    sub_3022A8();
    result = [v25 view];
    if (result)
    {
      v26 = result;
      sub_30CE78();

      v27 = sub_30A878();

      (*(v31 + 8))(v10, v32);
      (*(v15 + 8))(v17, v14);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v29(v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1FA234(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_218AA8, v4);
}

void sub_1FA2C8(uint64_t a1, uint64_t a2)
{
  sub_124C4(0, &qword_408010);
  isa = sub_30C358().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1FA344(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  a1(0);
  sub_218910(a2, a3);
  sub_309568();
  sub_304D58();

  sub_BA7E8(v12, v13, v14 | (v15 << 32));
  if (v15 >> 5 == 3)
  {
    v7 = *&v3[qword_400E20];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 collectionView];
      if (v9)
      {
        v10 = v9;

        v11 = [v6 navigationItem];
        sub_14C6EC(v10, v11);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1FA488(uint64_t a1, uint64_t a2)
{
  v3 = qword_400ED8;
  if (v2[qword_400ED8] != 1)
  {
    return;
  }

  v4 = qword_400EE0;
  if (*&v2[qword_400EE0])
  {
    return;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ConfigurableScrollCoordinator()) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
  v9 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews29ConfigurableScrollCoordinator_didScroll];
  *v8 = a2;
  *(v8 + 1) = v7;

  sub_1EBD0(v9);

  v10 = *&v2[qword_400DA8];
  v35 = v6;
  sub_17F304(v35, v10);
  v11 = *&v2[v4];
  *&v2[v4] = v35;

  if (v2[v3] == 1)
  {
    v12 = [v2 navigationItem];
    [v12 _manualScrollEdgeAppearanceProgress];
    v14 = v13;

    if (v14 >= 1.0)
    {
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      v15 = &v2[qword_400EE8];
      v33 = v2[qword_400EE8];
      v2[qword_400EE8] = !IsVoiceOverRunning;
      if (v33 != !IsVoiceOverRunning)
      {
        goto LABEL_7;
      }

LABEL_29:

      return;
    }
  }

  v15 = &v2[qword_400EE8];
  v16 = v2[qword_400EE8];
  v2[qword_400EE8] = 0;
  if ((v16 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  v17 = [v2 navigationItem];
  v18 = [v17 trailingItemGroups];

  sub_124C4(0, &unk_4019D0);
  v19 = sub_30C368();

  v34 = v19;
  if (v19 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v21 = 0;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v22 = sub_30D578();
      }

      else
      {
        if (v21 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v22 = *(v34 + 32 + 8 * v21);
      }

      v23 = v22;
      if (__OFADD__(v21++, 1))
      {
        break;
      }

      v25 = [v22 barButtonItems];
      sub_124C4(0, &unk_409000);
      v26 = sub_30C368();

      if (v26 >> 62)
      {
        v27 = sub_30D668();
        if (v27)
        {
LABEL_17:
          v28 = 0;
          while (1)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = sub_30D578();
            }

            else
            {
              if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_33;
              }

              v29 = *(v26 + 8 * v28 + 32);
            }

            v30 = v29;
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            [v29 setHidden:*v15];

            ++v28;
            if (v31 == v27)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }
      }

      else
      {
        v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
        if (v27)
        {
          goto LABEL_17;
        }
      }

LABEL_10:

      if (v21 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:
}

void sub_1FA8A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  if (Strong[qword_400ED8] == 1)
  {
    v2 = [Strong navigationItem];
    [v2 _manualScrollEdgeAppearanceProgress];
    v4 = v3;

    if (v4 >= 1.0)
    {
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      v5 = &v1[qword_400EE8];
      v23 = v1[qword_400EE8];
      v1[qword_400EE8] = !IsVoiceOverRunning;
      if (v23 != !IsVoiceOverRunning)
      {
        goto LABEL_5;
      }

LABEL_27:

      return;
    }
  }

  v5 = &v1[qword_400EE8];
  v6 = v1[qword_400EE8];
  v1[qword_400EE8] = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_5:
  v7 = [v1 navigationItem];
  v8 = [v7 trailingItemGroups];

  sub_124C4(0, &unk_4019D0);
  v9 = sub_30C368();

  v24 = v1;
  v25 = v9;
  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v11 = 0;
    v26 = i;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = sub_30D578();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v12 = *(v25 + 32 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v15 = [v12 barButtonItems];
      sub_124C4(0, &unk_409000);
      v16 = sub_30C368();

      if (v16 >> 62)
      {
        v17 = sub_30D668();
        if (v17)
        {
LABEL_15:
          v18 = 0;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = sub_30D578();
            }

            else
            {
              if (v18 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_29;
              }

              v19 = *(v16 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            [v19 setHidden:*v5];

            ++v18;
            if (v21 == v17)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          break;
        }
      }

      else
      {
        v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_8:

      if (v11 == v26)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
}

uint64_t sub_1FABC0(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30AD18();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409148, &type metadata accessor for ModernStationDetailPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209A58();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_1FB430(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_30AD18();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409140, &type metadata accessor for ModernStationDetailPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409148, &type metadata accessor for ModernStationDetailPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209A58();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_1FBBA8(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A5D8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409128, &type metadata accessor for SeeAllEpisodesPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209FDC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_1FC418(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_30A5D8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409120, &type metadata accessor for SeeAllEpisodesPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409128, &type metadata accessor for SeeAllEpisodesPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_209FDC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_1FCB90(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_3089B8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409110, &type metadata accessor for SearchPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409118, &type metadata accessor for SearchPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20A560();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_1FD400(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_3089B8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409110, &type metadata accessor for SearchPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409118, &type metadata accessor for SearchPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20A560();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_1FDB78(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308FB8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409138, &type metadata accessor for ShowListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20AAE4();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_1FE3E8(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_308FB8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409130, &type metadata accessor for ShowListPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409138, &type metadata accessor for ShowListPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20AAE4();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_1FEB60(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309AA8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090F8, &type metadata accessor for LibraryShowPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B068();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_1FF3D0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_309AA8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090F0, &type metadata accessor for LibraryShowPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090F8, &type metadata accessor for LibraryShowPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B068();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_1FFB48(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309358();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409108, &type metadata accessor for StorePagePresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B5EC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_2003B8(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_309358();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409100, &type metadata accessor for StorePagePresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409108, &type metadata accessor for StorePagePresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20B5EC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_200B30(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A738();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090B8, &type metadata accessor for LongDescriptionPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20BB70();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_2013A0(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_30A738();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090B0, &type metadata accessor for LongDescriptionPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090B8, &type metadata accessor for LongDescriptionPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20BB70();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_201B18(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308E08();
      v41[-2] = v29;
      v30 = sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_4090A8, &type metadata accessor for HomePagePresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C0F4();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_202388(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_308E08();
      v37[-2] = v26;
      v27 = sub_218910(&qword_4090A0, &type metadata accessor for HomePagePresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_4090A8, &type metadata accessor for HomePagePresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C0F4();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_202B00(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_308BE8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409098, &type metadata accessor for LibraryPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C678();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_203370(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_308BE8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409090, &type metadata accessor for LibraryPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409098, &type metadata accessor for LibraryPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20C678();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_203AE8(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309408();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409088, &type metadata accessor for HighlightsPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20CBFC();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_204358(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_309408();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409080, &type metadata accessor for HighlightsPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409088, &type metadata accessor for HighlightsPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20CBFC();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_204AD0(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_30A558();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409158, &type metadata accessor for ModernEpisodesPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D180();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_205340(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_30A558();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409150, &type metadata accessor for ModernEpisodesPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409158, &type metadata accessor for ModernEpisodesPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D180();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_205AB8(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_309CB8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409078, &type metadata accessor for CategoryListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D704();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}

uint64_t sub_206328(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_30BCF8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v18, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    v19 = v44;
    (*(v15 + 16))(v10, v44, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v18);
    swift_endAccess();
    v20 = *(sub_307788() + 20);
    v21 = sub_30B858();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v7, v19 + v20, v21);
    (*(v22 + 56))(v7, 0, 1, v21);

    sub_308E98();
  }

  else
  {
    v39 = v7;
    v40 = v2;
    (*(v15 + 32))(v17, v13, v14);
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v24 = v44;
    v25 = sub_30C018();
    if (v25)
    {
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      v38 = v17;
      __chkstk_darwin(v25);
      v26 = sub_309CB8();
      v37[-2] = v26;
      v27 = sub_218910(&qword_409070, &type metadata accessor for CategoryListPresenter);
      v37[-1] = v27;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v37[-2] = v26;
      v37[-1] = v27;
      swift_getKeyPath();
      v29 = v40;
      sub_304E18();

      if (v45 == 2)
      {
        (*(v15 + 16))(v10, v24, v14);
        (*(v15 + 56))(v10, 0, 1, v14);
        swift_beginAccess();
        sub_218B18(v10, v29 + v18);
        swift_endAccess();

        sub_308EB8();

        v30 = *(v29 + qword_400D60);
        v31 = v41;
        sub_30BCE8();
        v37[1] = sub_218910(&qword_409078, &type metadata accessor for CategoryListPresenter);
        v37[2] = v30;
        sub_30BCA8();
        (*(v42 + 8))(v31, v43);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20D704();
        v32 = *(sub_307788() + 20);
        v33 = sub_30B858();
        v34 = *(v33 - 8);
        v35 = v24 + v32;
        v36 = v39;
        (*(v34 + 16))(v39, v35, v33);
        (*(v34 + 56))(v36, 0, 1, v33);

        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
      }

      return (*(v15 + 8))(v38, v14);
    }
  }
}

uint64_t sub_206AA0(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_30BCF8();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408120);
  __chkstk_darwin(v5 - 8);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401020);
  __chkstk_darwin(v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = sub_30BE68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = qword_400EA0;
  swift_beginAccess();
  sub_EB00(v2 + v21, v13, &qword_401020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_EB68(v13, &qword_401020);
    sub_30A078();
    sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    (*(v15 + 56))(v10, 0, 1, v14);
    swift_beginAccess();
    sub_218B18(v10, v2 + v21);
    swift_endAccess();
    sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

    sub_30BF68();
    v22 = sub_30B858();
    (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
    sub_308E98();
  }

  else
  {
    v46 = v21;
    v47 = v10;
    v48 = v7;
    (*(v15 + 32))(v20, v13, v14);
    v24 = sub_30A078();
    v45 = sub_218910(&unk_409010, &type metadata accessor for ContentUnavailablePage);
    sub_30D568();
    sub_218910(&qword_409020, &type metadata accessor for PageID);
    v25 = sub_30C018();
    v26 = v14;
    v27 = *(v15 + 8);
    v28 = v27(v17, v26);
    if (v25)
    {
      return v27(v20, v26);
    }

    else
    {
      v42 = v20;
      v43 = v27;
      v44 = v15 + 8;
      __chkstk_darwin(v28);
      v29 = sub_3099E8();
      v41[-2] = v29;
      v30 = sub_218910(&qword_409060, &type metadata accessor for ChannelListPresenter);
      v41[-1] = v30;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[1] = v29;
      v41[-2] = v29;
      v41[-1] = v30;
      swift_getKeyPath();
      v32 = v2;
      sub_304E18();

      if (v53 == 2)
      {
        v33 = v47;
        sub_30D568();
        v34 = *(v15 + 56);
        v41[0] = v26;
        v34(v33, 0, 1, v26);
        v35 = v46;
        swift_beginAccess();
        sub_218B18(v33, v32 + v35);
        swift_endAccess();
        v47 = v24;

        sub_308EB8();

        v36 = v49;
        sub_30BCE8();
        sub_218910(&qword_409068, &type metadata accessor for ChannelListPresenter);
        sub_30BCA8();
        (*(v50 + 8))(v36, v51);

        sub_308EB8();

        sub_30BC98();
        sub_3098C8(1);
        sub_20DC88();
        sub_218910(&qword_401090, &type metadata accessor for ContentUnavailablePage);

        v37 = v48;
        sub_30BF68();
        v38 = sub_30B858();
        (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
        sub_308E98();

        sub_308EB8();

        sub_30BC88();

        sub_308EB8();

        sub_30BC78();
        v39 = v42;
        v40 = v41[0];
      }

      else
      {
        v39 = v42;
        v40 = v26;
      }

      return v43(v39, v40);
    }
  }
}