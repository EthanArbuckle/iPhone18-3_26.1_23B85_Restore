uint64_t visitPaint<A>(_:) in Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 48);
  v7 = *(v2 + 16);
  v22 = *(v2 + 32);
  v23 = v6;
  v8 = *(v2 + 48);
  v24 = *(v2 + 64);
  v9 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v9;
  v17 = v22;
  v18 = v8;
  v19 = *(v2 + 64);
  v25 = *(v2 + 80);
  v20 = *(v2 + 80);
  v15 = v21[0];
  v16 = v7;
  (*(v10 + 16))(v5);
  outlined init with copy of ShapeType(v21, v28);
  PaintType.init<A>(_:)(v5, a2, v13);
  v11 = contentLayerType(_:_:mayClip:)(&v15, v13, *(v2 + 81));
  v26[0] = v13[0];
  v26[1] = v13[1];
  v27[0] = v14[0];
  *(v27 + 9) = *(v14 + 9);
  outlined destroy of PaintType(v26);
  v28[2] = v17;
  v28[3] = v18;
  v28[4] = v19;
  v29 = v20;
  v28[0] = v15;
  v28[1] = v16;
  result = outlined destroy of ShapeType(v28);
  *(v2 + 88) = v11;
  return result;
}

uint64_t initializeWithCopy for ShapeType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

uint64_t outlined copy of ShapeType(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 2)
  {
    outlined copy of Path.Storage(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t specialized DisplayList.Item.canMergeWithClipMask(state:)()
{
  v1 = v0[8];
  v2 = v1 >> 30;
  if (v1 >> 30 > 1)
  {
    if (v2 != 3)
    {
LABEL_41:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      JUMPOUT(0x18D1361B0);
    }

    return 1;
  }

  v3 = v0[5];
  if (v2)
  {
    v6 = v0[6];
    switch(BYTE4(v6))
    {
      case 1:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 1);
        v7 = v3;
        v8 = v6;
        v9 = 1;
        goto LABEL_35;
      case 2:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 2;
        goto LABEL_32;
      case 3:
        outlined copy of DisplayList.Item.Value(v0[5], v0[6], v0[7], v1);
        outlined consume of DisplayList.Effect(v3, v6, 3);

        return 0;
      case 4:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 4;
        goto LABEL_32;
      case 5:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 5);
        v7 = v3;
        v8 = v6;
        v9 = 5;
        goto LABEL_35;
      case 6:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 6);
        v7 = v3;
        v8 = v6;
        v9 = 6;
        goto LABEL_35;
      case 7:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 7);
        outlined consume of DisplayList.Effect(v3, v6, 7);
        return 0;
      case 8:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 8);
        outlined consume of DisplayList.Effect(v3, v6, 8);
        return 0;
      case 9:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 9);
        v14 = *(v3 + 16);
        c = *(v3 + 32);
        if (*(v3 + 88) > 1u)
        {
          if (*(v3 + 88) == 2)
          {
            v18 = *(v3 + 24);
            angle = *(v3 + 16);
            CGAffineTransformMakeTranslation(&v22, *(&v14 + 1), *(v3 + 32));
            CGAffineTransformRotate(&v21, &v22, angle);
            v22 = v21;
            CGAffineTransformTranslate(&v21, &v22, -v18, -c);
            v14 = *&v21.a;
            c = v21.c;
            v17 = *&v21.d;
            ty = v21.ty;
            goto LABEL_39;
          }
        }

        else if (!*(v3 + 88))
        {
          ty = *(v3 + 56);
          v17 = *(v3 + 40);
LABEL_39:
          *&v22.a = v14;
          v22.c = c;
          *&v22.d = v17;
          v22.ty = ty;
          IsIdentity = CGAffineTransformIsIdentity(&v22);
          outlined consume of DisplayList.Effect(v3, v6, 9);
          return IsIdentity;
        }

        outlined consume of DisplayList.Effect(v3, v6, 9);
        return 0;
      case 0xA:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 10);
        v7 = v3;
        v8 = v6;
        v9 = 10;
        goto LABEL_35;
      case 0xB:
      case 0xD:
        goto LABEL_41;
      case 0xC:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 12);
        v7 = v3;
        v8 = v6;
        v9 = 12;
        goto LABEL_35;
      case 0xE:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 14);
        v7 = v3;
        v8 = v6;
        v9 = 14;
        goto LABEL_35;
      case 0xF:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 15);
        v7 = v3;
        v8 = v6;
        v9 = 15;
        goto LABEL_35;
      case 0x10:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 16);
        v7 = v3;
        v8 = v6;
        v9 = 16;
        goto LABEL_35;
      case 0x11:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 17);
        v7 = v3;
        v8 = v6;
        v9 = 17;
        goto LABEL_35;
      case 0x12:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 18);
        v7 = v3;
        v8 = v6;
        v9 = 18;
        goto LABEL_35;
      case 0x13:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 19);
        v7 = v3;
        v8 = v6;
        v9 = 19;
        goto LABEL_35;
      case 0x14:
        v11 = v0[5];
        v12 = v0[6];
        v13 = 20;
LABEL_32:
        outlined copy of DisplayList.Effect(v11, v12, v13);
        return 1;
      default:
        outlined copy of DisplayList.Effect(v0[5], v0[6], 0);
        v7 = v3;
        v8 = v6;
        v9 = 0;
LABEL_35:
        outlined consume of DisplayList.Effect(v7, v8, v9);
        return 1;
    }
  }

  v4 = v3 >> 60;
  if ((v3 >> 60) - 8 < 3)
  {
    return 0;
  }

  if (v4 == 12)
  {
    v10 = 48;
    return *((v3 & 0xFFFFFFFFFFFFFFFLL) + v10) & 1;
  }

  if (v4 == 11)
  {
    v10 = 56;
    return *((v3 & 0xFFFFFFFFFFFFFFFLL) + v10) & 1;
  }

  return 1;
}

void __swiftcall DisplayList.ViewUpdater.Model.Clip.clipRect()(SwiftUI::FixedRoundedRect_optional *__return_ptr retstr)
{
  if ((*(v1 + 88) & 1) == 0)
  {
LABEL_8:
    retstr->value.rect.size = 0u;
    retstr->value.cornerSize = 0u;
    retstr->value.rect.origin = 0u;
    retstr->value.style = SwiftUI_RoundedCornerStyle_unknownDefault;
    return;
  }

  v2 = *v1;
  v3 = *(v1 + 32);
  if (v3 != 2)
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3 == 1)
    {
      if (vabdd_f64(v4, v6) < 0.001)
      {
        retstr->value.rect.origin.x = v2;
        retstr->value.rect.origin.y = v5;
        retstr->value.rect.size.width = v4;
        retstr->value.rect.size.height = v6;
        retstr->value.cornerSize.width = v4 * 0.5;
        retstr->value.cornerSize.height = v4 * 0.5;
        retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
        return;
      }
    }

    else if (!*(v1 + 32))
    {
      retstr->value.rect.origin.x = v2;
      retstr->value.rect.origin.y = v5;
      retstr->value.rect.size.width = v4;
      retstr->value.rect.size.height = v6;
      retstr->value.cornerSize.width = 0.0;
      retstr->value.cornerSize.height = 0.0;
      retstr->value.style = SwiftUI_RoundedCornerStyle_circular;
      return;
    }

    goto LABEL_8;
  }

  v7 = *(*&v2 + 64);
  v8 = *(*&v2 + 32);
  retstr->value.rect.origin = *(*&v2 + 16);
  retstr->value.rect.size = v8;
  retstr->value.cornerSize = *(*&v2 + 48);
  retstr->value.style = v7;
}

uint64_t DisplayList.Item.canMergeWithClipRect(_:state:)(CGRect *a1)
{
  v2 = *(v1 + 64);
  v3 = v2 >> 30;
  if (v2 >> 30 > 1)
  {
    if (v3 == 3)
    {
      return 1;
    }

    goto LABEL_32;
  }

  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v3)
  {
    if (BYTE4(v5) == 10)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), 10);
      memmove(__dst, (v4 + 16), 0x7CuLL);
      if (_s7SwiftUI14GraphicsFilterOWOg(__dst) == 4)
      {
        _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        outlined consume of DisplayList.Effect(v4, v5, 10);
        return 0;
      }

      v17 = v4;
      v18 = v5;
      LOBYTE(v19) = 10;
      goto LABEL_27;
    }

    if (BYTE4(v5) == 15)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), 15);
      v17 = v4;
      v18 = v5;
      LOBYTE(v19) = 15;
LABEL_27:
      outlined consume of DisplayList.Effect(v17, v18, v19);
      return 1;
    }

    if (BYTE4(v5) != 11)
    {
      outlined copy of DisplayList.Effect(*(v1 + 40), *(v1 + 48), SBYTE4(v5));
      v17 = v4;
      v18 = v5;
      v19 = HIDWORD(v5);
      goto LABEL_27;
    }

LABEL_32:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  x = a1->origin.x;
  y = a1->origin.y;
  width = a1->size.width;
  height = a1->size.height;
  v11 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = v4 >> 60;
  v15 = *(v1 + 56);
  if ((v4 >> 60) > 7)
  {
    if (v14 < 10)
    {
      return 0;
    }

    if ((v14 - 10) < 3)
    {
      goto LABEL_25;
    }

    if (v14 == 13)
    {
    }

    goto LABEL_32;
  }

  if (v14 <= 3)
  {
    if (v14 >= 3)
    {
      if (vabdd_f64(v11, x) < 0.001 && vabdd_f64(v10, y) < 0.001 && vabdd_f64(v13, width) < 0.001)
      {
        return vabdd_f64(v12, height) < 0.001;
      }

      return 0;
    }

LABEL_25:
    outlined copy of DisplayList.Content.Value(*(v1 + 40));
    v22.origin.x = v11;
    v22.origin.y = v10;
    v22.size.width = v13;
    v22.size.height = v12;
    v23 = CGRectInset(v22, -0.001, -0.001);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v20 = CGRectContainsRect(v23, v25);
    outlined consume of DisplayList.Item.Value(v4, v5, v15, v2);
    return v20;
  }

  if ((v14 - 5) < 3)
  {
    goto LABEL_25;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
  {
    return 0;
  }

  v24.size.width = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v24.size.height = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v24.origin.x = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v24.origin.y = *((v4 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  return CGRectContainsRect(v24, *a1);
}

uint64_t CoreViewSetClipsToBounds(int a1, void *a2, uint64_t a3, int a4)
{
  if (!a1 || a4)
  {
    if (a1)
    {
      a2 = [a2 layer];
    }

    return [a2 setMasksToBounds:a3];
  }

  else
  {

    return [a2 setClipsToBounds:?];
  }
}

id static CALayerPlatformViewDefinition.makeLayerView(type:kind:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setCoordinatedAnimationDelegate];
  [v3 setAnchorPoint_];
  if (v2 <= 0xE)
  {
    v4 = 1;
    if (((1 << v2) & 0x7801) != 0)
    {
      [v3 setAllowsGroupOpacity_];
      v4 = 0;
      v5 = &selRef_setAllowsGroupBlending_;
LABEL_6:
      [v3 *v5];
      return v3;
    }

    if (((1 << v2) & 0xE) != 0)
    {
      v5 = &selRef_setAllowsEdgeAntialiasing_;
      goto LABEL_6;
    }
  }

  return v3;
}

uint64_t DisplayList.ViewUpdater.Platform.updateShapeView(_:state:size:path:paint:style:contentsChanged:)(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, __int16 a6, char a7)
{
  v100 = *(a4 + 8);
  v101 = *a4;
  v98 = *(a4 + 24);
  v99 = *(a4 + 16);
  v14 = *(a4 + 32);
  v15 = *v7;
  v16 = *(a1 + 16);
  ObjectType = swift_getObjectType();
  v18 = *a3;
  v19 = a3[1];
  v96 = *a2;
  v20 = *(*a2 + 24);
  v94 = type metadata accessor for ColorShapeLayer();
  v97 = v14;
  if (ObjectType != v94)
  {
    if (v14 > 2)
    {
      if (v14 == 5)
      {
        if (*(*&v101 + 16))
        {
          if (*(*&v101 + 16) == 1)
          {

            RBPathGetBoundingRect();
          }

          else
          {

            v25 = MEMORY[0x193AC3640](v31 + 24);
          }

          x = v25;
          y = v26;
          width = v27;
          height = v28;
          outlined destroy of Path(a4);
        }

        else
        {
          v29 = *(*&v101 + 24);
          if (!v29)
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          v30 = v29;

          PathBoundingBox = CGPathGetPathBoundingBox(v30);
          x = PathBoundingBox.origin.x;
          y = PathBoundingBox.origin.y;
          width = PathBoundingBox.size.width;
          height = PathBoundingBox.size.height;

          outlined destroy of Path(a4);
        }
      }

      else
      {
        if (v14 != 6)
        {
          goto LABEL_71;
        }

        x = *MEMORY[0x1E695F050];
        y = *(MEMORY[0x1E695F050] + 8);
        width = *(MEMORY[0x1E695F050] + 16);
        height = *(MEMORY[0x1E695F050] + 24);
      }
    }

    else if (v14 > 1)
    {
      x = *(*&v101 + 16);
      y = *(*&v101 + 24);
      width = *(*&v101 + 32);
      height = *(*&v101 + 40);
    }

    else
    {
      y = v100;
      x = v101;
      height = v98;
      width = v99;
    }

    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    if (CGRectIsNull(v125))
    {
      x = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    if (ObjectType == type metadata accessor for PaintShapeLayer())
    {
      v32 = 1.0 / v20;
      v126.origin.x = x;
      v126.origin.y = y;
      v126.size.width = width;
      v126.size.height = height;
      v127 = CGRectStandardize(v126);
      v33 = v127.origin.x + v127.size.width;
      v34 = v127.origin.y + v127.size.height;
      v35 = v32 * 0.5;
      v36 = v32 * 0.5 + v127.origin.x;
      if (v32 != 1.0)
      {
        x = v32 * floor(v36 / v32);
        y = v32 * floor((v35 + v127.origin.y) / v32);
        width = v32 * round((v32 * floor((v35 + v33) / v32) - x) / v32);
        height = v32 * round((v32 * floor((v35 + v34) / v32) - y) / v32);
        if (a7)
        {
          goto LABEL_24;
        }

        goto LABEL_68;
      }

      x = floor(v36);
      y = floor(v35 + v127.origin.y);
      width = round(floor(v35 + v33) - x);
      height = round(floor(v35 + v34) - y);
    }

    if (a7)
    {
      goto LABEL_24;
    }

LABEL_68:
    v84 = *(a2 + 3);
    *&location.a = *(a2 + 2);
    *&location.c = v84;
    *&location.tx = *(a2 + 4);
    result = CGAffineTransformTranslate(&v102, &location, x, y);
    v86 = *&v102.c;
    v87 = *&v102.tx;
    *(a2 + 2) = *&v102.a;
    *(a2 + 3) = v86;
    *(a2 + 4) = v87;
    *a3 = width;
    a3[1] = height;
    return result;
  }

  x = 0.0;
  y = 0.0;
  width = v18;
  height = v19;
  if ((a7 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_24:
  v93 = v15;
  v91 = a3;
  v37 = *(v96 + 24);
  v38 = *(a2 + 9);
  v115 = *(a2 + 8);
  v116 = v38;
  v117 = *(a2 + 10);
  v118 = a2[22];
  v39 = *(a2 + 5);
  v111 = *(a2 + 4);
  v112 = v39;
  v40 = *(a2 + 7);
  v113 = *(a2 + 6);
  v114 = v40;
  v41 = *(a2 + 1);
  *&location.a = *a2;
  *&location.c = v41;
  v42 = *(a2 + 3);
  *&location.tx = *(a2 + 2);
  v110 = v42;
  v43 = DisplayList.ViewUpdater.Model.State.hasDODEffects.getter();
  v44 = *a4;
  v89 = *(a4 + 16);
  v90 = *(a4 + 8);
  v88 = *(a4 + 24);
  v92 = *(a4 + 32);
  *&location.a = v16;
  *&location.b = ObjectType;
  location.c = v101;
  location.d = v100;
  location.tx = v99;
  location.ty = v98;
  LOBYTE(v110) = v97;
  *(&v110 + 1) = x;
  *&v111 = y;
  *(&v111 + 1) = a5;
  *&v112 = -x;
  *(&v112 + 1) = -y;
  *&v113 = v18;
  *(&v113 + 1) = v19;
  LOWORD(v114) = a6 & 0x101;
  *(&v114 + 1) = v37;
  LOBYTE(v115) = (v43 & 1) == 0;
  v45 = *(*a5 + 152);
  outlined init with copy of Path(a4, &v102);
  v46 = v16;

  v45(&location, &type metadata for ShapeLayerHelper, &protocol witness table for ShapeLayerHelper);
  b = location.b;
  if (*&location.b == ObjectType)
  {
    v58 = v93 & 0xFFFFFFFFFFFFFFF8;
    v53 = v44;
LABEL_62:
    a3 = v91;
    if (y == 0.0)
    {
      outlined copy of Path.Storage(v53, v90, v89, v88, v92);
      v78 = *&v100;
      v77 = *&v101;
      v80 = *&v98;
      v79 = *&v99;
      v81 = v97;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v123, -y, -y);
      Path.applying(_:)(&v123.a, v119);
      v77 = v119[0];
      v78 = v119[1];
      v79 = v119[2];
      v80 = v119[3];
      v81 = v120;
    }

    v121[0] = v77;
    v121[1] = v78;
    v121[2] = v79;
    v121[3] = v80;
    v122 = v81;
    v82 = *(v58 + 128);
    v83 = v81;
    v82(v121, *(a1 + 8));
    outlined consume of Path.Storage(v77, v78, v79, v80, v83);
    if ((*(a1 + 65) & 0x20) == 0)
    {
      *(a1 + 65) |= 0x20u;
    }

    v106 = v113;
    v107 = v114;
    v108 = v115;
    v102 = location;
    v103 = v110;
    v104 = v111;
    v105 = v112;
    outlined destroy of ShapeLayerHelper(&v102);
    goto LABEL_68;
  }

  v48 = *(a1 + 80);
  v104 = *(a1 + 64);
  v105 = v48;
  v49 = *(a1 + 112);
  v106 = *(a1 + 96);
  v107 = v49;
  v50 = *(a1 + 16);
  *&v102.a = *a1;
  *&v102.c = v50;
  v51 = *(a1 + 48);
  *&v102.tx = *(a1 + 32);
  v103 = v51;
  outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v102);
  if (*&b == v94)
  {
    x = 0.0;
    y = 0.0;
    v53 = v44;
LABEL_61:
    *(&v110 + 1) = x;
    *&v111 = y;
    *&v112 = -x;
    *(&v112 + 1) = -y;
    v58 = v93 & 0xFFFFFFFFFFFFFFF8;
    LOBYTE(v123.a) = 3;
    v71 = (*((v93 & 0xFFFFFFFFFFFFFFF8) + 104))(COERCE_CGFLOAT(*&b), &v123);
    swift_unknownObjectRetain_n();
    v72 = CoreViewLayer(v93 & 3, v71);
    v73 = v72;
    v74 = AGMakeUniqueID();
    *a1 = v93;
    *(a1 + 8) = v71;
    *(a1 + 16) = v73;
    *(a1 + 24) = v71;
    v75 = vdupq_n_s64(0x7FF0000000000000uLL);
    *(a1 + 32) = v75;
    *(a1 + 48) = v75;
    *(a1 + 64) = 3;
    *(a1 + 72) = v74;
    *(a1 + 80) = -1;
    *(a1 + 108) = 0;
    *(a1 + 112) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 120) = 0x7FF0000000000000;
    objc_storeStrong(&location, v72);
    v76 = *(**(&v111 + 1) + 152);

    v76(&location, &type metadata for ShapeLayerHelper, &protocol witness table for ShapeLayerHelper);
    swift_unknownObjectRelease();

    width = v18;
    height = v19;
    goto LABEL_62;
  }

  v52 = *(v96 + 24);
  v53 = v44;
  if (v92 <= 2)
  {
    if (v92 > 1)
    {
      v54 = v44[2];
      v55 = v44[3];
      v56 = v44[4];
      v57 = v44[5];
    }

    else
    {
      v54 = *&v44;
      v56 = *&v89;
      v55 = *&v90;
      v57 = *&v88;
    }

    goto LABEL_45;
  }

  if (v92 == 5)
  {
    if (*(v44 + 16))
    {
      if (*(v44 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v59 = MEMORY[0x193AC3640](v44 + 3);
      }

      v54 = v59;
      v55 = v60;
      v56 = v61;
      v57 = v62;
      goto LABEL_44;
    }

    v63 = *(v44 + 3);
    if (v63)
    {
      v64 = v63;

      v128 = CGPathGetPathBoundingBox(v64);
      v54 = v128.origin.x;
      v55 = v128.origin.y;
      v56 = v128.size.width;
      v57 = v128.size.height;

LABEL_44:
      outlined destroy of Path(a4);
LABEL_45:
      v129.origin.x = v54;
      v129.origin.y = v55;
      v129.size.width = v56;
      v129.size.height = v57;
      IsNull = CGRectIsNull(v129);
      if (IsNull)
      {
        x = 0.0;
      }

      else
      {
        x = v54;
      }

      if (IsNull)
      {
        y = 0.0;
      }

      else
      {
        y = v55;
      }

      if (IsNull)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v56;
      }

      if (IsNull)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v57;
      }

      if (*&b == type metadata accessor for PaintShapeLayer())
      {
        v130.size.width = v18;
        v66 = 1.0 / v52;
        v130.origin.x = x;
        v130.origin.y = y;
        v130.size.height = v19;
        v131 = CGRectStandardize(v130);
        v67 = v131.origin.x + v131.size.width;
        v68 = v131.origin.y + v131.size.height;
        v69 = 1.0 / v52 * 0.5;
        v70 = v69 + v131.origin.x;
        if (1.0 / v52 == 1.0)
        {
          x = floor(v70);
          y = floor(v69 + v131.origin.y);
          v18 = round(floor(v69 + v67) - x);
          v19 = round(floor(v69 + v68) - y);
        }

        else
        {
          x = v66 * floor(v70 / v66);
          y = v66 * floor((v69 + v131.origin.y) / v66);
          v18 = v66 * round((v66 * floor((v69 + v67) / v66) - x) / v66);
          v19 = v66 * round((v66 * floor((v69 + v68) / v66) - y) / v66);
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v92 == 6)
  {
    v54 = *MEMORY[0x1E695F050];
    v55 = *(MEMORY[0x1E695F050] + 8);
    v56 = *(MEMORY[0x1E695F050] + 16);
    v57 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_45;
  }

LABEL_71:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CALayer.animateEDRProperty(_:interval:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 != 0.0)
  {
    if (one-time initialization token for v6 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v6;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      v7 = dyld_program_sdk_at_least();
      v8 = a2;
      v9 = a1;
      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v8 = a2;
      v9 = a1;
      if (static Semantics.forced < v6)
      {
        return;
      }
    }

    v10 = MEMORY[0x193ABEC20](v9, v8);
    v11 = [objc_opt_self() animationWithKeyPath_];

    v12 = v11;
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v12 setFromValue_];

    v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v12 setToValue_];

    [v12 setAdditive_];
    v15 = v12;
    [v15 setDuration_];
    [v15 setMass_];
    [v15 setStiffness_];
    [v15 setDamping_];
    [v15 setFillMode_];

    [v3 addAnimation:v15 forKey:0];
  }
}

uint64_t outlined consume of PaintType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if ((a8 >> 5) - 1 <= 4)
  {
  }

  return result;
}

uint64_t outlined consume of ShapeType(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 2)
  {
    outlined consume of Path.Storage(result, a2, a3, a4, a5);
  }

  return result;
}

void ShapeLayerHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v282 = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v236 = *(v3 + 32);
  v237 = v10;
  v260 = v10;
  v261 = v236;
  v11 = *(v3 + 48);
  v262 = v11;
  v271[0] = v10;
  v271[1] = v236;
  v272 = v11;
  outlined init with copy of Path.Storage(v271, &v251);
  ShapeType.init(_:)(&v260, &v273);
  (*(v7 + 16))(v9, a1, a2);
  PaintType.init<A>(_:)(v9, a2, &v279);
  v253[0] = v275;
  v253[1] = v276;
  v254 = v277;
  LOBYTE(v255) = v278;
  v251 = v273;
  v252 = v274;
  *v265 = v279;
  *&v265[16] = v280;
  *&v265[32] = *v281;
  *&v265[41] = *&v281[9];
  v12 = *(v3 + 128);
  v13 = contentLayerType(_:_:mayClip:)(&v251, v265, *(v3 + 128));
  if (v13 != *(v3 + 8))
  {
    v14 = v13;
    outlined destroy of ShapeType(&v273);
    outlined destroy of PaintType(&v279);
    *(v3 + 8) = v14;
    return;
  }

  DWORD2(v230) = v11;
  v231 = v12;
  v233 = a2;
  v235 = a1;
  v15 = *v3;
  v16 = *(v3 + 113);
  [*v3 setAllowsEdgeAntialiasing_];
  v251 = v279;
  v252 = v280;
  v253[0] = *v281;
  *(v253 + 9) = *&v281[9];
  v256 = v275;
  v257 = v276;
  v258 = v277;
  v259 = v278;
  v254 = v273;
  v255 = v274;
  v17 = *&v275;
  v18 = BYTE8(v275);
  v234 = a3;
  if (v278 > 1u)
  {
    v232 = v15;
    v20 = v273;
    if (v278 == 2)
    {
      if (v281[24] <= 0x1Fu)
      {
        v244 = v279;
        LODWORD(v245) = v280;
        v249 = v273;
        v250[0] = v274;
        LOBYTE(v250[1]) = v275;
        *v265 = (*(&v275 + 9) << 8) | ((*(&v275 + 13) | (HIBYTE(v275) << 16)) << 40) | BYTE8(v275);
        *&v265[8] = v276;
        *&v265[24] = v277;
        v21 = *(&v274 + 1);
        v22 = v274;
        type metadata accessor for ColorShapeLayer();
        v23 = v232;
        v24 = swift_dynamicCastClassUnconditional();
        v25 = *(v3 + 56);
        v26 = *(v3 + 64);
        outlined copy of Path.Storage(v20, *(&v20 + 1), v22, v21, LOBYTE(v17));

        updateContent(shapeLayer:color:strokedPath:origin:style:)(v24, &v244, &v249, v265, v25, v26);
        outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
        v27 = v23;
LABEL_79:
        v32 = v27;
        v19 = v234;
        goto LABEL_80;
      }

      outlined copy of Path.Storage(v273, *(&v273 + 1), v274, *(&v274 + 1), v275);

      v19 = v234;
      v15 = v232;
    }

    else
    {
      v19 = v234;
      v15 = v232;
      if (!(v274 | *(&v273 + 1) | v273 | *(&v274 + 1) | v275 | v276 | *(&v276 + 1) | v277 | *(&v277 + 1) | (*(&v275 + 9) << 8) | ((*(&v275 + 13) | (HIBYTE(v275) << 16)) << 40) | BYTE8(v275)))
      {
        [v232 setBackgroundColor_];
        [v15 setBorderColor_];
        [v15 setContents_];
        outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
        return;
      }
    }

LABEL_20:
    *(&v250[1] + 9) = *&v281[9];
    v249 = v279;
    v250[0] = v280;
    v250[1] = *v281;
    v33 = v281[24] >> 5;
    if (v33 > 2)
    {
      LODWORD(v230) = v16;
      if (v281[24] >> 5 <= 4u)
      {
        if (v33 == 3)
        {
          BYTE8(v250[2]) &= 0x1Fu;
          if (!v278)
          {
            v34 = v249;
            v35 = BYTE8(v249);
            v36 = HIDWORD(v249);
            v37 = v250[0];
            v38 = v274;
            v39 = BYTE8(v275);
            v40 = *&v275;
            v41 = *(v3 + 112);
            v268 = *(v3 + 96);
            v269 = v41;
            v270 = *(v3 + 128);
            v42 = *(v3 + 48);
            *&v265[32] = *(v3 + 32);
            *&v265[48] = v42;
            v43 = *(v3 + 80);
            v266 = *(v3 + 64);
            v267 = v43;
            v44 = *(v3 + 16);
            *v265 = *v3;
            *&v265[16] = v44;
            v45 = v267;
            v46 = v268;
            v236 = *(&v250[1] + 8);
            v237 = *(v250 + 8);
            ShapeLayerHelper.gradientLayer()();
            v48 = v47;
            *&v263[16] = v236;
            *v263 = v237;
            v264 = 2;
            outlined init with copy of PaintType(&v279, &v244);
            v32 = v48;
            [v32 setCornerRadius_];
            v49 = MEMORY[0x1E69796E8];
            if ((v39 & 1) == 0)
            {
              v49 = MEMORY[0x1E69796E0];
            }

            v50 = *v49;
            [v32 setCornerCurve_];

            if ((v231 & 1) == 0)
            {
              [v32 setBounds_];
            }

            v51 = v235;
            if (one-time initialization token for v4 != -1)
            {
              swift_once();
            }

            v52 = static Semantics.v4;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C == 1)
            {
              if ((dyld_program_sdk_at_least() & 1) == 0)
              {
LABEL_110:
                specialized GradientLayer.GradientGeometry.init(size:function:bounds:)(v263, &v244, *&v38, *(&v38 + 1), *&v45, *(&v45 + 1), *&v46, *(&v46 + 1));
                [v32 setType_];
                [v32 setStartPoint_];
                [v32 setEndPoint_];
                v238 = v34;
                v239 = v35;
                v240 = v36;
                v241 = v37;
                specialized static GradientLayer.clippedValues(gradient:function:)(&v238, v263);
                v195 = v194;
                specialized _arrayForceCast<A, B>(_:)(v196);

                isa = Array._bridgeToObjectiveC()().super.isa;

                [v32 setColors_];

                type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
                v198 = Array._bridgeToObjectiveC()().super.isa;

                [v32 setLocations_];

                if (v195)
                {
                  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
                  v199.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v199.super.isa = 0;
                }

                v140 = v233;
                [v32 setInterpolations_];

                if (v35)
                {
                  if (v35 != 1)
                  {
                    v173 = _CGColorSpaceGetPerceptual();
                    v19 = v234;
                    goto LABEL_161;
                  }

                  v19 = v234;
                  if (one-time initialization token for srgbExtendedLinear != -1)
                  {
                    swift_once();
                  }

                  v222 = static Color.Resolved.srgbExtendedLinear;
                }

                else
                {
                  v19 = v234;
                  if (one-time initialization token for srgbExtended != -1)
                  {
                    swift_once();
                  }

                  v222 = static Color.Resolved.srgbExtended;
                }

                v173 = v222;
LABEL_161:
                [v32 setColorSpace_];
                outlined destroy of GradientLayer.GradientGeometry(&v244);

LABEL_166:
                outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
                outlined destroy of PaintType(&v279);
                goto LABEL_82;
              }
            }

            else if (static Semantics.forced < v52)
            {
              goto LABEL_110;
            }

            [v32 setPremultiplied_];
            goto LABEL_110;
          }

          goto LABEL_78;
        }

        BYTE8(v250[2]) &= 0x1Fu;
        if (v278)
        {
LABEL_78:
          outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
          type metadata accessor for PaintShapeLayer();
          v122 = swift_dynamicCastClassUnconditional();
          v123 = *(v3 + 56);
          v124 = *(v3 + 64);
          v125 = *(v3 + 72);
          v126 = *(v3 + 112);
          v127 = *(v3 + 120);
          v128 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
          v232 = v15;
          v129 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
          v130 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 8];
          v131 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 16];
          v132 = *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 24];
          v133 = *(v3 + 80);
          v236 = *(v3 + 96);
          v237 = v133;
          v134 = v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 32];
          v128[32] = v262;
          v135 = v261;
          *v128 = v260;
          *(v128 + 1) = v135;
          outlined init with copy of Path.Storage(v271, v265);
          outlined consume of Path.Storage(v129, v130, v131, v132, v134);
          v136 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin];
          *v136 = v123;
          v136[1] = v124;
          *&v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint] = v125;

          v137 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds];
          v138 = v236;
          *v137 = v237;
          v137[1] = v138;
          v139 = &v122[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle];
          *v139 = v126;
          v139[1] = v230;

          [v122 setContentsScale_];
          [v122 setNeedsDisplay];
          v27 = v232;
          goto LABEL_79;
        }

        v146 = v249;
        v147 = BYTE8(v249);
        v148 = HIDWORD(v249);
        v149 = v250[0];
        v150 = *(&v250[0] + 1);
        v152 = v250[1];
        v151 = *&v250[2];
        *&v237 = *(&v274 + 1);
        v232 = *&v274;
        v153 = BYTE8(v275);
        *(&v230 + 1) = v275;
        v154 = *(v3 + 112);
        v268 = *(v3 + 96);
        v269 = v154;
        v270 = *(v3 + 128);
        v155 = *(v3 + 48);
        *&v265[32] = *(v3 + 32);
        *&v265[48] = v155;
        v156 = *(v3 + 80);
        v266 = *(v3 + 64);
        v267 = v156;
        v157 = *(v3 + 16);
        *v265 = *v3;
        *&v265[16] = v157;
        v158 = v267;
        v159 = v268;
        ShapeLayerHelper.gradientLayer()();
        v161 = v160;
        *&v236 = v150;
        *v263 = v150;
        *&v263[8] = v152;
        *&v263[24] = v151;
        v264 = 3;
        outlined init with copy of PaintType(&v279, &v244);
        v32 = v161;
        [v32 setCornerRadius_];
        v162 = MEMORY[0x1E69796E8];
        if ((v153 & 1) == 0)
        {
          v162 = MEMORY[0x1E69796E0];
        }

        v163 = *v162;
        [v32 setCornerCurve_];

        if ((v231 & 1) == 0)
        {
          [v32 setBounds_];
        }

        v51 = v235;
        if (one-time initialization token for v4 != -1)
        {
          swift_once();
        }

        v164 = static Semantics.v4;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
LABEL_118:
            v211 = (*&v158 + *&v236 * *&v159) / *&v232;
            v212 = (*(&v158 + 1) + *&v152 * *(&v159 + 1)) / *&v237;
            if (*(&v152 + 1) > v151)
            {
              v213 = *(&v152 + 1);
            }

            else
            {
              v213 = v151;
            }

            v214 = (*&v158 + (*&v236 - v213) * *&v159) / *&v232;
            v215 = (*(&v158 + 1) + (*&v152 - v213) * *(&v159 + 1)) / *&v237;
            v173 = *MEMORY[0x1E6979DB0];
            [v32 setType_];
            [v32 setStartPoint_];
            [v32 setEndPoint_];
            *&v242 = v146;
            BYTE8(v242) = v147;
            HIDWORD(v242) = v148;
            LOBYTE(v243) = v149;
            specialized static GradientLayer.clippedValues(gradient:function:)(&v242, v263);
            v217 = v216;
            specialized _arrayForceCast<A, B>(_:)(v218);

            v219 = Array._bridgeToObjectiveC()().super.isa;

            [v32 setColors_];

            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
            v220 = Array._bridgeToObjectiveC()().super.isa;

            [v32 setLocations_];

            if (v217)
            {
              type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
              v221.super.isa = Array._bridgeToObjectiveC()().super.isa;
            }

            else
            {
              v221.super.isa = 0;
            }

            v140 = v233;
            v19 = v234;
            [v32 setInterpolations_];

            if (v147)
            {
              if (v147 == 1)
              {
                goto LABEL_146;
              }

LABEL_164:
              v224 = _CGColorSpaceGetPerceptual();
LABEL_165:
              v226 = v224;
              [v32 setColorSpace_];

              goto LABEL_166;
            }

LABEL_149:
            if (one-time initialization token for srgbExtended != -1)
            {
              swift_once();
            }

            v224 = static Color.Resolved.srgbExtended;
            goto LABEL_165;
          }
        }

        else if (static Semantics.forced < v164)
        {
          goto LABEL_118;
        }

        [v32 setPremultiplied_];
        goto LABEL_118;
      }

      if (v33 != 5)
      {
        goto LABEL_78;
      }

      BYTE8(v250[2]) &= 0x1Fu;
      if (v278)
      {
        goto LABEL_78;
      }

      *&v236 = *(&v274 + 1);
      *&v237 = v274;
      v71 = BYTE8(v275);
      v72 = *&v275;
      *v265 = v249;
      *&v265[16] = v250[0];
      *&v265[32] = v250[1];
      *&v265[41] = *(&v250[1] + 9);
      v74 = *(v3 + 80);
      v73 = *(v3 + 88);
      v76 = *(v3 + 96);
      v75 = *(v3 + 104);
      outlined init with copy of AngularGradient._Paint(&v249, &v244);
      v77.f64[0] = v74;
      v78.f64[0] = v76;
      ConicGradient.init(angular:bounds:)(v265, &v244, v77, v73, v78, v75);
      v79 = v244;
      v80 = BYTE8(v244);
      v81 = HIDWORD(v244);
      v82 = v245;
      v83 = v247;
      v84 = *(v3 + 112);
      v268 = *(v3 + 96);
      v269 = v84;
      v270 = *(v3 + 128);
      v85 = *(v3 + 48);
      *&v265[32] = *(v3 + 32);
      *&v265[48] = v85;
      v86 = *(v3 + 80);
      v266 = *(v3 + 64);
      v267 = v86;
      v87 = *(v3 + 16);
      *v265 = *v3;
      *&v265[16] = v87;
      ShapeLayerHelper.gradientLayer()();
      v89 = *(v250 + 1);
      v88 = *&v250[1];
      v244 = *(v250 + 8);
      v245 = *&v83;
      LOBYTE(v246) = 4;
      v32 = v90;

      [v32 setCornerRadius_];
      v91 = MEMORY[0x1E69796E8];
      if ((v71 & 1) == 0)
      {
        v91 = MEMORY[0x1E69796E0];
      }

      v92 = *v91;
      [v32 setCornerCurve_];

      if ((v231 & 1) == 0)
      {
        [v32 setBounds_];
      }

      if (one-time initialization token for v4 != -1)
      {
        swift_once();
      }

      v93 = static Semantics.v4;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
LABEL_114:
          v200 = v73 + v75 * v88;
          v201 = (v74 + v76 * v89) / *&v237;
          v202 = v200 / *&v236;
          v203 = *MEMORY[0x1E6979DA8];
          v204 = __sincos_stret(v83);
          [v32 setType_];
          [v32 setStartPoint_];
          [v32 setEndPoint_];
          *&v242 = v79;
          BYTE8(v242) = v80;
          HIDWORD(v242) = v81;
          LOBYTE(v243) = v82;
          specialized static GradientLayer.clippedValues(gradient:function:)(&v242, &v244);
          v206 = v205;
          specialized _arrayForceCast<A, B>(_:)(v207);

          v208 = Array._bridgeToObjectiveC()().super.isa;

          [v32 setColors_];

          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
          v209 = Array._bridgeToObjectiveC()().super.isa;

          [v32 setLocations_];

          if (v206)
          {
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
            v210.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v210.super.isa = 0;
          }

          v140 = v233;
          v19 = v234;
          [v32 setInterpolations_];

          if (v80)
          {
            if (v80 != 1)
            {
              v225 = _CGColorSpaceGetPerceptual();
              v51 = v235;
              goto LABEL_163;
            }

            v51 = v235;
            if (one-time initialization token for srgbExtendedLinear != -1)
            {
              swift_once();
            }

            v223 = static Color.Resolved.srgbExtendedLinear;
          }

          else
          {
            v51 = v235;
            if (one-time initialization token for srgbExtended != -1)
            {
              swift_once();
            }

            v223 = static Color.Resolved.srgbExtended;
          }

          v225 = v223;
LABEL_163:
          [v32 setColorSpace_];

          outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));

          goto LABEL_82;
        }
      }

      else if (static Semantics.forced < v93)
      {
        goto LABEL_114;
      }

      [v32 setPremultiplied_];
      goto LABEL_114;
    }

    v51 = v235;
    if (!v33)
    {
      v94 = v19;
      BYTE8(v250[2]) &= 0x1Fu;
      v242 = v249;
      v243 = v250[0];
      type metadata accessor for ColorShapeLayer();
      v95 = swift_dynamicCastClassUnconditional();
      v96 = *(v3 + 56);
      v97 = *(v3 + 64);
      v98 = *(v3 + 112);
      if (v96 == 0.0 && v97 == 0.0)
      {
        outlined init with copy of Path.Storage(v271, v265);
        v100 = v236;
        v99 = v237;
        v101 = BYTE8(v230);
      }

      else
      {
        CGAffineTransformMakeTranslation(v265, -v96, -v97);
        Path.applying(_:)(v265, v263);
        v100 = *&v263[16];
        v99 = *v263;
        v101 = v264;
      }

      v236 = v100;
      v237 = v99;
      v244 = v99;
      v245 = v100;
      LOBYTE(v246) = v101;
      v142 = Path.cgPath.getter();
      outlined consume of Path.Storage(v237, *(&v237 + 1), v236, *(&v236 + 1), v101);
      [v95 setPath_];

      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v143 = specialized ObjectCache.subscript.getter(&v242);
      [v95 setFillColor_];

      v144 = MEMORY[0x1E69797F8];
      if (!v98)
      {
        v144 = MEMORY[0x1E6979800];
      }

      v145 = *v144;
      [v95 setFillRule_];

      [v95 setStrokeColor_];
      outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
      v32 = v15;
      v19 = v94;
      goto LABEL_81;
    }

    LODWORD(v230) = v16;
    if (v33 == 1)
    {
      BYTE8(v250[2]) &= 0x1Fu;
      if (v278)
      {
        goto LABEL_78;
      }

      v53 = v249;
      v54 = BYTE8(v249);
      v55 = HIDWORD(v249);
      v56 = v250[0];
      v57 = *(v250 + 1);
      v59 = v250[1];
      v58 = *&v250[2];
      *&v236 = *(&v274 + 1);
      *&v237 = v274;
      v60 = BYTE8(v275);
      *&v228 = v275;
      v61 = *(v3 + 112);
      v268 = *(v3 + 96);
      v269 = v61;
      v270 = *(v3 + 128);
      v62 = *(v3 + 48);
      *&v265[32] = *(v3 + 32);
      *&v265[48] = v62;
      v63 = *(v3 + 80);
      v266 = *(v3 + 64);
      v267 = v63;
      v64 = *(v3 + 16);
      *v265 = *v3;
      *&v265[16] = v64;
      v65 = v267;
      v66 = v268;
      ShapeLayerHelper.gradientLayer()();
      v229 = v57;
      v230 = v59;
      *v263 = v57;
      *&v263[8] = v59;
      v232 = v58;
      *&v263[24] = v58;
      v264 = 0;
      v32 = v67;
      outlined init with copy of PaintType(&v279, &v244);
      [v32 setCornerRadius_];
      v68 = MEMORY[0x1E69796E8];
      if ((v60 & 1) == 0)
      {
        v68 = MEMORY[0x1E69796E0];
      }

      v69 = *v68;
      [v32 setCornerCurve_];

      if ((v231 & 1) == 0)
      {
        [v32 setBounds_];
      }

      v51 = v235;
      if (one-time initialization token for v4 != -1)
      {
        swift_once();
      }

      v70 = static Semantics.v4;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else if (static Semantics.forced < v70)
      {
LABEL_102:
        v165 = *MEMORY[0x1E6979DA0];
        v166 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(*&v65 + v229 * *&v66, *(&v65 + 1) + *&v230 * *(&v66 + 1), *&v65 + *(&v230 + 1) * *&v66, *(&v65 + 1) + *&v232 * *(&v66 + 1), *&v237, *&v236);
        v168 = v167;
        v170 = v169;
        v172 = v171;
        v173 = v165;
        [v32 setType_];
        [v32 setStartPoint_];
        [v32 setEndPoint_];
        *&v242 = v53;
        BYTE8(v242) = v54;
        HIDWORD(v242) = v55;
        LOBYTE(v243) = v56;
        specialized static GradientLayer.clippedValues(gradient:function:)(&v242, v263);
        v175 = v174;
        specialized _arrayForceCast<A, B>(_:)(v176);

        v177 = Array._bridgeToObjectiveC()().super.isa;

        [v32 setColors_];

        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
        v178 = Array._bridgeToObjectiveC()().super.isa;

        [v32 setLocations_];

        if (v175)
        {
          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
          v179.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v179.super.isa = 0;
        }

        v140 = v233;
        v19 = v234;
        [v32 setInterpolations_];

        if (!v54)
        {
          goto LABEL_149;
        }

        if (v54 != 1)
        {
          goto LABEL_164;
        }

LABEL_146:
        if (one-time initialization token for srgbExtendedLinear != -1)
        {
          swift_once();
        }

        v224 = static Color.Resolved.srgbExtendedLinear;
        goto LABEL_165;
      }

      [v32 setPremultiplied_];
      goto LABEL_102;
    }

    BYTE8(v250[2]) &= 0x1Fu;
    if (v278)
    {
      goto LABEL_78;
    }

    v102 = v249;
    v103 = BYTE8(v249);
    v104 = HIDWORD(v249);
    v105 = v250[0];
    v106 = *(&v250[0] + 1);
    v108 = v250[1];
    v107 = *&v250[2];
    v232 = *(&v274 + 1);
    *&v236 = v274;
    v109 = BYTE8(v275);
    v110 = *&v275;
    v111 = *(v3 + 112);
    v268 = *(v3 + 96);
    v269 = v111;
    v270 = *(v3 + 128);
    v112 = *(v3 + 48);
    *&v265[32] = *(v3 + 32);
    *&v265[48] = v112;
    v113 = *(v3 + 80);
    v266 = *(v3 + 64);
    v267 = v113;
    v114 = *(v3 + 16);
    *v265 = *v3;
    *&v265[16] = v114;
    v115 = v267;
    v116 = *(&v268 + 1);
    *(&v230 + 1) = v268;
    ShapeLayerHelper.gradientLayer()();
    v118 = v117;
    *&v237 = v106;
    *v263 = v106;
    *&v263[8] = v108;
    *&v263[24] = v107;
    v264 = 1;
    outlined init with copy of PaintType(&v279, &v244);
    v32 = v118;
    [v32 setCornerRadius_];
    v119 = MEMORY[0x1E69796E8];
    if ((v109 & 1) == 0)
    {
      v119 = MEMORY[0x1E69796E0];
    }

    v120 = *v119;
    [v32 setCornerCurve_];

    if ((v231 & 1) == 0)
    {
      [v32 setBounds_];
    }

    v51 = v235;
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v121 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    else if (static Semantics.forced < v121)
    {
LABEL_106:
      v180 = *MEMORY[0x1E6979DA0];
      v181 = makeAxis #1 (start:end:) in GradientLayer.GradientGeometry.init(size:function:bounds:)(*&v237, *&v108, *(&v108 + 1), v107, *&v236, *&v232);
      v183 = v182;
      v185 = v184;
      v187 = v186;
      v173 = v180;
      [v32 setType_];
      [v32 setStartPoint_];
      [v32 setEndPoint_];
      *&v242 = v102;
      BYTE8(v242) = v103;
      HIDWORD(v242) = v104;
      LOBYTE(v243) = v105;
      specialized static GradientLayer.clippedValues(gradient:function:)(&v242, v263);
      v189 = v188;
      specialized _arrayForceCast<A, B>(_:)(v190);

      v191 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setColors_];

      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
      v192 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setLocations_];

      if (v189)
      {
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
        v193.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v193.super.isa = 0;
      }

      v140 = v233;
      v19 = v234;
      [v32 setInterpolations_];

      if (!v103)
      {
        goto LABEL_149;
      }

      if (v103 != 1)
      {
        goto LABEL_164;
      }

      goto LABEL_146;
    }

    [v32 setPremultiplied_];
    goto LABEL_106;
  }

  v19 = a3;
  if (v278)
  {
    if (v281[24] <= 0x1Fu)
    {
      v28 = *&v276;
      *v265 = v279;
      *&v265[16] = v280;
      [v15 setBackgroundColor_];
      [v15 setBorderWidth_];
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v29 = specialized ObjectCache.subscript.getter(v265);
      [v15 setBorderColor_];

      [v15 setContents_];
      [v15 setCornerRadius_];
      v30 = MEMORY[0x1E69796E8];
      if ((v18 & 1) == 0)
      {
        v30 = MEMORY[0x1E69796E0];
      }

      v31 = *v30;
      [v15 setCornerCurve_];

      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v281[24] > 0x1Fu)
  {
    goto LABEL_20;
  }

  *v265 = v279;
  *&v265[16] = v280;
  LOBYTE(v249) = BYTE8(v275) & 1;
  updateContent(layer:color:radius:style:)(v15, v265, &v249, *&v275);
LABEL_16:
  outlined destroy of (ShapeType, ShapeType)(&v251, &lazy cache variable for type metadata for (PaintType, ShapeType));
  v32 = v15;
LABEL_80:
  v51 = v235;
LABEL_81:
  v140 = v233;
LABEL_82:
  v141 = (*(v19 + 72))(&v238, v140, v19);
  MEMORY[0x1EEE9AC00](v141);
  *(&v227 - 4) = v140;
  *(&v227 - 3) = v19;
  *(&v227 - 2) = v51;
  CALayer.updateEDR(allowedDynamicRange:contentHeadroom:)(&v238, partial apply for implicit closure #1 in ShapeLayerHelper.visitPaint<A>(_:));
  outlined destroy of ShapeType(&v273);
}

void CALayer.updateEDR(allowedDynamicRange:contentHeadroom:)(_BYTE *a1, void (*a2)(void))
{
  v3 = *a1;
  if (*a1)
  {
    a2();
    v5 = MEMORY[0x1E69792A8];
    v6 = MEMORY[0x1E6979298];
    if (v3 == 2)
    {
      v6 = MEMORY[0x1E69792A0];
    }

    if (v4 > 1.0)
    {
      v5 = v6;
    }

    v3 = v4 > 1.0;
  }

  else
  {
    v5 = MEMORY[0x1E69792A8];
  }

  v15 = *v5;
  [v2 contentsEDRStrength];
  v8 = v7;
  [v2 contentsCDRStrength];
  v10 = v9;
  [v2 setPreferredDynamicRange_];
  [v2 contentsEDRStrength];
  v12 = v11;
  [v2 contentsCDRStrength];
  v14 = v13;
  if (v12 == v8)
  {
    if (v13 == v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBC0, v12 - v8);
    if (v14 == v10)
    {
      goto LABEL_10;
    }
  }

  CALayer.animateEDRProperty(_:interval:)(0xD000000000000013, 0x800000018DD7DBE0, v14 - v10);
LABEL_10:
  [v2 setWantsExtendedDynamicRangeContent_];
}

uint64_t destroy for ShapeLayerHelper(uint64_t a1)
{
  outlined consume of Path.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t *RendererEffectDisplayList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = v2[1];
  v40[0] = *v2;
  v40[1] = v5;
  v7 = *v2;
  v6 = v2[1];
  v41 = v2[2];
  v50 = v7;
  v51 = v6;
  v52 = v2[2];
  RendererEffectDisplayList.content.getter(v48);
  v8 = v48[0];
  v9 = MEMORY[0x1E69E7CC0];
  if (*&v48[0])
  {
    v10 = *&v48[0];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (*&v48[0])
  {
    v11 = WORD4(v48[0]);
  }

  else
  {
    v11 = 0;
  }

  v39 = v11;
  if (*(v10 + 16) || ((*(*(a1 + 24) + 48))() & 1) != 0)
  {
    v12 = ++static DisplayList.Version.lastValue;
    if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v37 = v12;
    v38 = a2;
    v36 = AGCreateWeakAttribute();
    v35 = AGCreateWeakAttribute();
    v13 = AGCreateWeakAttribute();
    v14 = AGCreateWeakAttribute();
    v15 = AGCreateWeakAttribute();
    v16 = AGCreateWeakAttribute();
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    if (((*(v18 + 40))(v17, v18) & 1) != 0 && (v39 & 0x200) != 0)
    {
      v19 = 0;
      v20 = 0;
      v54 = 0;
      v55 = 0;
      v21 = 20;
      v56 = 20;
      v23 = v10;
      v22 = v38;
      v24 = v37;
    }

    else
    {
      _threadGeometryProxyData();
      *&v50 = v36;
      *(&v50 + 1) = v35;
      *&v51 = v13;
      *(&v51 + 1) = v14;
      *&v52 = v15;
      *(&v52 + 1) = v16;
      v24 = v37;
      LODWORD(v53[0]) = v37;
      _setThreadGeometryProxyData();
      closure #1 in RendererEffectDisplayList.value.getter(v40, v17, v18);
      _setThreadGeometryProxyData();
      v20 = v54;
      v19 = v55;
      v21 = v56;
      v23 = v10;
      v22 = v38;
    }

    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v26 = *Value;
    v27 = Value[1];
    v28 = AGGraphGetValue();
    v29 = v26 - *v28;
    v30 = v27 - v28[1];
    v31 = 0x40000000;
    if (v8)
    {
      v31 = *(&v8 + 1) & 0xFFFFFFFF00000000 | 0x40000000;
    }

    v32 = v31 | v39;
    outlined copy of DisplayList.Effect(v20, v19, v21);
    v33 = AGGraphGetValue();
    *&v44 = v29;
    *(&v44 + 1) = v30;
    v45 = *v33;
    *v47 = v19 | (v21 << 32);
    *&v47[8] = v23;
    *&v47[16] = v32;
    *&v47[24] = v40[0];
    *&v46 = v24;
    *(&v46 + 1) = v20;
    LOBYTE(v50) = BYTE4(v41);
    DisplayList.Item.canonicalize(options:)(&v50);
    v48[2] = v46;
    v49[0] = *v47;
    *(v49 + 12) = *&v47[12];
    v48[0] = v44;
    v48[1] = v45;
    v42[2] = v46;
    v43[0] = *v47;
    *(v43 + 12) = *&v47[12];
    v42[0] = v44;
    v42[1] = v45;
    outlined init with copy of DisplayList.Item(v48, &v50);
    DisplayList.init(_:)(v42, v22);
    outlined consume of DisplayList.Effect(v20, v19, v21);
    v52 = v46;
    v53[0] = *v47;
    *(v53 + 12) = *&v47[12];
    v50 = v44;
    v51 = v45;
    return outlined destroy of DisplayList.Item(&v50);
  }

  else
  {

    *a2 = v9;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
  }

  return result;
}

uint64_t RendererEffectDisplayList.content.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t closure #2 in ShapeStyledDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(a3 + 40))(a4, a2, a3, a5, a6);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = (*(v11 + 8))(v13, a2);
  a4[14] = v14;
  *(a4 + 15) = v16;
  *(a4 + 16) = v18;
  *(a4 + 17) = v20;
  return result;
}

uint64_t ShapeStyledDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v157 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v90 - v7;
  v10 = *(v9 + 48);
  Value = AGGraphGetValue();
  v13 = v12;
  (*(*(v5 - 8) + 16))(v8, Value, v5);
  v14 = (v13 & 1);
  *(v10 + v8) = v13 & 1;
  v15 = *(a1 + 80);
  v16 = *(v2 + 28);
  v17 = *(v2 + 40);
  v104 = a1;
  v105 = v5;
  v18 = *(*(a1 + 24) + 32);
  v107 = *(a1 + 24);
  v19 = v18(v2 + v15, v16, v17, v5);
  if (v19)
  {
    *(v10 + v8) = 1;
  }

  else if ((v13 & 1) == 0 && *(v2 + *(v104 + 84)))
  {
    v14 = &v90;
    v135 = 0;
    v145[0] = *(v2 + 28);
    LODWORD(v145[1]) = *(v2 + 12);
    MEMORY[0x1EEE9AC00](v19);
    v20 = v107;
    *(&v90 - 4) = v105;
    *(&v90 - 3) = v20;
    *(&v90 - 2) = &v135;
    _sSay7SwiftUI13ViewResponderCGMaTm_1(255, &lazy cache variable for type metadata for Attribute<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E698D388]);
    v10 = v21;
    type metadata accessor for Attribute();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v145, partial apply for closure #1 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), TupleTypeMetadata3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v23);
    v24 = ++static DisplayList.Version.lastValue;
    if (v135 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v135 = 1;
  v24 = ++static DisplayList.Version.lastValue;
LABEL_8:
  v25 = (2 * ((33 * (v24 >> 16)) ^ v24)) | 1;
  if (!v24)
  {
    LOWORD(v25) = 0;
  }

  *(v2 + *(v104 + 84)) = v25;
LABEL_11:
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v31 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_24:
    v82 = v27;
    v83 = v28;
    v84 = v29;
    v85 = v30;
    swift_once();
    v30 = v85;
    v29 = v84;
    v28 = v83;
    v27 = v82;
    goto LABEL_22;
  }

  v106 = v24;
  v103 = v8;
  v91 = TupleTypeMetadata2;
  v32 = AGCreateWeakAttribute();
  v101 = HIDWORD(v32);
  v102 = v32;
  v33 = AGCreateWeakAttribute();
  v99 = HIDWORD(v33);
  v100 = v33;
  v34 = AGCreateWeakAttribute();
  v97 = HIDWORD(v34);
  v98 = v34;
  v35 = AGCreateWeakAttribute();
  v95 = HIDWORD(v35);
  v96 = v35;
  v36 = AGCreateWeakAttribute();
  v94 = HIDWORD(v36);
  v37 = AGCreateWeakAttribute();
  v38 = v37;
  v93 = HIDWORD(v37);
  type metadata accessor for CGPoint(0);
  v39 = AGGraphGetValue();
  v40 = *v39;
  v41 = v39[1];
  v42 = AGGraphGetValue();
  v43 = *v42;
  v44 = v42[1];
  v45 = v107;
  v46 = v105;
  if (((*(v107 + 24))(v105, v107) & 1) == 0)
  {
    type metadata accessor for CGSize(0);
  }

  v47 = AGGraphGetValue();
  v48 = v103;
  v49 = v106;
  v51 = *v47;
  v50 = v47[1];
  _threadGeometryProxyData();
  v122 = v102;
  v123 = v101;
  v124 = v100;
  v125 = v99;
  v126 = v98;
  v127 = v97;
  v128 = v96;
  v129 = v95;
  v130 = v36;
  v90 = v36;
  v131 = v94;
  v132 = v38;
  v133 = v93;
  v134 = v49;
  _setThreadGeometryProxyData();
  closure #2 in ShapeStyledDisplayList.updateValue()(v48, v46, v45, v156, v51, v50);
  v52 = v46;
  v14 = &v146;
  v10 = v136;
  v53 = v40 - v43;
  v54 = v41 - v44;
  _setThreadGeometryProxyData();
  v153[5] = v156[5];
  v153[6] = v156[6];
  v154 = v156[7];
  v155 = v156[8];
  v153[1] = v156[1];
  v153[2] = v156[2];
  v153[3] = v156[3];
  v153[4] = v156[4];
  v153[0] = v156[0];
  v55 = *v2;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0x20000000;
  v152 = 0;
  v146 = v55;
  v56 = *(v45 + 48);

  v57 = v56(v52, v45);
  v8 = v103;
  if (v57)
  {
    _threadGeometryProxyData();
    v109 = v102;
    v110 = v101;
    v111 = v100;
    v112 = v99;
    v113 = v98;
    v114 = v97;
    v115 = v96;
    v116 = v95;
    v117 = v90;
    v118 = v94;
    v119 = v38;
    v120 = v93;
    v121 = v106;
    _setThreadGeometryProxyData();
    v58 = v105;
    closure #3 in ShapeStyledDisplayList.updateValue()(v8, v105, v107, v139, v51, v50);
    _setThreadGeometryProxyData();
    v136[5] = v140;
    v136[6] = v141;
    v137 = v142;
    v138 = v143;
    v136[1] = v139[1];
    v136[2] = v139[2];
    v136[3] = v139[3];
    v136[4] = v139[4];
    v136[0] = v139[0];
    if (DWORD2(v141) >> 29 != 5 || DWORD2(v141) != -1610612736 || (v59 = vorrq_s8(vorrq_s8(vorrq_s8(*(&v136[2] + 8), *(&v136[4] + 8)), vorrq_s8(*(&v136[3] + 8), *(&v136[5] + 8))), vorrq_s8(*(v136 + 8), *(&v136[1] + 8))), *&vorr_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL)) | *&v136[0]))
    {
      v60 = v137;
      v61 = v138;
      outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v136, v145);
      v158.origin = v60;
      v158.size = v61;
      v159 = CGRectOffset(v158, v53, v54);
      v62 = *(v2 + 8);
      v63 = *(v2 + *(v104 + 84));
      v64 = *(v2 + 48);
      v65 = *(v2 + 40);
      *&v144[9] = 0;
      DWORD2(v144[9]) = 0;
      if (one-time initialization token for normal != -1)
      {
        x = v159.origin.x;
        y = v159.origin.y;
        width = v159.size.width;
        height = v159.size.height;
        swift_once();
        v159.size.height = height;
        v159.size.width = width;
        v159.origin.y = y;
        v159.origin.x = x;
      }

      v102 = &v90;
      v144[3] = v136[3];
      v144[4] = v136[4];
      v144[5] = v136[5];
      *(&v144[5] + 12) = *(&v136[5] + 12);
      v144[0] = v136[0];
      v144[1] = v136[1];
      DWORD1(v144[16]) = 1065353216;
      *(&v144[15] + 1) = static GraphicsBlendMode.normal;
      LOBYTE(v144[16]) = byte_1ED52F818;
      BYTE8(v144[16]) = 0;
      v144[2] = v136[2];
      WORD6(v144[6]) = v63;
      *&v144[7] = v159.origin.x;
      *(&v144[7] + 1) = *&v159.origin.y;
      *&v144[8] = v159.size.width;
      *(&v144[8] + 1) = *&v159.size.height;
      *&v144[10] = v159.origin.x;
      *(&v144[10] + 1) = *&v159.origin.y;
      *&v144[11] = v159.size.width;
      *(&v144[11] + 1) = *&v159.size.height;
      v144[12] = v106;
      v144[13] = 0uLL;
      *&v144[14] = 3221225472;
      DWORD2(v144[14]) = v62;
      BYTE12(v144[14]) = v64;
      LODWORD(v144[15]) = v65;
      v108 = 1;
      MEMORY[0x1EEE9AC00](static GraphicsBlendMode.normal);
      v66 = v107;
      *(&v90 - 4) = v58;
      *(&v90 - 3) = v66;
      *(&v90 - 2) = v2;
      outlined copy of GraphicsBlendMode(v67, v68);
      _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(&v108, partial apply for implicit closure #2 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), &v146);
      outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v136);
      memcpy(v145, v144, 0x109uLL);
      outlined destroy of _ShapeStyle_RenderedShape(v145);
    }
  }

  v69 = v154;
  v70 = v155;
  outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v153, v145);
  v160.origin = v69;
  v160.size = v70;
  *&v27 = CGRectOffset(v160, v53, v54);
  LODWORD(v24) = *(v2 + 8);
  LOWORD(TupleTypeMetadata2) = *(v2 + *(v104 + 84));
  v4 = *(v2 + 48);
  v31 = *(v2 + 40);
  *&v144[9] = 0;
  DWORD2(v144[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_24;
  }

LABEL_22:
  DWORD1(v144[16]) = 1065353216;
  *(&v144[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(v144[16]) = byte_1ED52F818;
  BYTE8(v144[16]) = 0;
  v71 = *(v14 + 17);
  v72 = *(v14 + 21);
  v144[4] = *(v14 + 19);
  v144[5] = v72;
  *(&v144[5] + 12) = *(v14 + 180);
  v73 = *(v14 + 13);
  v144[0] = *(v14 + 11);
  v144[1] = v73;
  v144[2] = *(v14 + 15);
  v144[3] = v71;
  WORD6(v144[6]) = TupleTypeMetadata2;
  *&v144[7] = v27;
  *(&v144[7] + 1) = v28;
  *&v144[8] = v29;
  *(&v144[8] + 1) = v30;
  *&v144[10] = v27;
  *(&v144[10] + 1) = v28;
  *&v144[11] = v29;
  *(&v144[11] + 1) = v30;
  v144[12] = v106;
  v144[13] = 0uLL;
  *&v144[14] = 3221225472;
  DWORD2(v144[14]) = v24;
  BYTE12(v144[14]) = v4;
  LODWORD(v144[15]) = v31;
  LOBYTE(v145[0]) = 0;
  MEMORY[0x1EEE9AC00](static GraphicsBlendMode.normal);
  v74 = v107;
  *(&v90 - 4) = v105;
  *(&v90 - 3) = v74;
  *(&v90 - 2) = v2;
  outlined copy of GraphicsBlendMode(v75, v76);
  _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(v145, partial apply for implicit closure #3 in ShapeStyledDisplayList.updateValue(), (&v90 - 6), &v146);
  LOBYTE(v145[0]) = *(v2 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(v144, v145, v136);
  v77 = WORD4(v136[0]);
  v78 = HIDWORD(v136[0]);
  *(v10 + 18) = *&v136[0];
  WORD4(v139[0]) = v77;
  HIDWORD(v139[0]) = v78;
  AGGraphSetOutputValue();
  outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(v153);
  memcpy(v145, v144, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(v145);

  v79 = *(v14 + 3);
  v10[11] = *(v14 + 2);
  v10[12] = v79;
  v10[13] = *(v14 + 4);
  LODWORD(v140) = v152;
  v80 = *(v14 + 1);
  v10[9] = *v14;
  v10[10] = v80;
  outlined destroy of _ShapeStyle_RenderedLayers(v139);
  return (*(v92 + 8))(v8, v91);
}

uint64_t outlined init with copy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t implicit closure #2 in ShapeStyledDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShapeStyledDisplayList();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, a1, v4, v6);
  *a2 = *AGGraphGetValue();
  v9 = *(v5 + 8);

  return v9(v8, v4);
}

uint64_t outlined destroy of (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)(uint64_t a1)
{
  type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 Shape.effectivePath(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D2>)
{
  (*(a2 + 24))(v20);
  v17 = v20[0];
  v18 = v20[1];
  v8 = v21;
  (*(a2 + 40))(v22, a1, a2);
  v9 = v22[0];
  if (LOBYTE(v22[0]) == 2 || !_threadGeometryProxyData())
  {
    goto LABEL_13;
  }

  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v11 = *InputValue;
    v14 = *(InputValue + 8);

    static Update.end()();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v11);
    if (v15)
    {
      v12 = *(v15 + 72);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_11;
  }

  EnvironmentValues.init()(&v24);
  v11 = v24;
  v10 = v25;
  static Update.end()();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_5:

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v11, &v19);

  v12 = v19;
LABEL_11:
  if (v12 == (v9 & 1))
  {
    v24 = 0xBFF0000000000000;
    v25 = 0;
    v26 = 0;
    v27 = 0x3FF0000000000000;
    v28 = a4;
    v29 = 0;
    Path.applying(_:)(&v24, v22);
    v17 = v22[0];
    v18 = v22[1];
    v8 = v23;
    outlined destroy of Path(v20);
  }

LABEL_13:
  result = v17;
  *a3 = v17;
  *(a3 + 16) = v18;
  *(a3 + 32) = v8;
  return result;
}

void _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = v4[1];
  v57 = *v4;
  v58 = v8;
  v9 = v4[3];
  v59 = v4[2];
  v60 = v9;
  v10 = v4[5];
  v61 = v4[4];
  v62[0] = v10;
  v11 = *(v4 + 92);
  *(v62 + 12) = v11;
  v12 = v57;
  v13 = v58;
  v14 = HIDWORD(v11) >> 29;
  if (HIDWORD(v11) >> 29 == 2)
  {
    v16 = a2;
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v57, &v50);

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v32 = v12;
      LOBYTE(v33) = v13 & 1;
      v16(v40);
      v31 = v40[0];
      LOBYTE(v50) = v7;
      _ShapeStyle_Pack.subscript.getter(&v50, 0, &v42);

      v30 = v7;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v32, &v42, &v30);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v57);
      v54 = v46;
      v55[0] = v47;
      v55[1] = v48;
      v56 = v49;
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v53 = v45;
      outlined destroy of _ShapeStyle_Pack.Style(&v50);
    }

    else
    {
      v50 = v12;
      LOBYTE(v51) = v13 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v50);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v57);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v57);
  }

  else
  {
    v15 = BYTE8(v59);
    if (v14 == 3)
    {
      if (v61)
      {
        v50 = v57;
        LOBYTE(v51) = v58;
        *(&v51 + 1) = *(&v58 + 1);
        BYTE7(v51) = (*(&v58 + 1) | ((*(&v58 + 5) | (BYTE7(v58) << 16)) << 32)) >> 48;
        *(&v51 + 5) = *(&v58 + 5);
        *(&v51 + 1) = *(&v58 + 1);
        v52 = v59;
        v53 = v60;
        LOBYTE(v54) = v61;
        *(&v54 + 1) = *(&v61 + 1);
        BYTE7(v54) = (*(&v61 + 1) | ((*(&v61 + 5) | (BYTE7(v61) << 16)) << 32)) >> 48;
        *(&v54 + 5) = *(&v61 + 5);
        *(&v54 + 1) = *(&v61 + 1);
        v55[0] = v62[0];
        *&v55[1] = *&v62[1];
        DWORD2(v55[1]) = HIDWORD(v11) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v50);
        return;
      }

      if (BYTE8(v57) != 2)
      {
        if (BYTE8(v57) == 255)
        {
          *(v55 + 12) = *(v4 + 92);
          v17 = v4[2];
          v53 = v4[3];
          v18 = v4[5];
          v54 = v4[4];
          v55[0] = v18;
          v19 = v4[1];
          v50 = *v4;
          v51 = v19;
          v52 = v17;
          DWORD2(v55[1]) &= 0x1FFFFFFFu;
          v20 = a2;
          outlined init with copy of GraphicsImage(&v50, &v42);
          a2 = v20;
        }

        goto LABEL_14;
      }

      v21 = *(v57 + 24);
      v22 = *(v57 + 32);
      v23 = *(v57 + 40);
      v24 = *(v57 + 44);
      v25 = *(v57 + 45);
      v26 = *(v57 + 48);
      *&v42 = *(v57 + 16);
      BYTE8(v42) = v21;
      *&v43 = v22;
      DWORD2(v43) = v23;
      BYTE12(v43) = v24;
      BYTE13(v43) = v25;
      *&v44 = v26;
      LOBYTE(v32) = v7;
      v27 = a2;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v57, &v50);
      v28 = v42;
      outlined copy of Image.Location(v22);
      v29 = v26;
      v27(&v50);
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v42, v15, &v32, &v50, a4);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v57);

      outlined consume of Image.Location(v22);
    }

    else if (v14 != 5 || HIDWORD(v11) != -1610612736 || v58 | ((*(&v58 + 1) | ((*(&v58 + 5) | (BYTE7(v58) << 16)) << 32)) << 8) | v61 | ((*(&v61 + 1) | ((*(&v61 + 5) | (BYTE7(v61) << 16)) << 32)) << 8) | v57 | *(&v57 + 1) | *(&v58 + 1) | v59 | *(&v59 + 1) | v60 | *(&v60 + 1) | *(&v61 + 1) | *&v62[0] | *(&v62[0] + 1) | *&v62[1])
    {
LABEL_14:
      a2(&v32);
      v40[0] = v32;
      LOBYTE(v42) = v7;
      _ShapeStyle_Pack.subscript.getter(&v42, 0, &v50);

      v46 = v54;
      v47 = v55[0];
      v48 = v55[1];
      v49 = v56;
      v42 = v50;
      v43 = v51;
      v44 = v52;
      v45 = v53;
      v40[0] = v7;
      v40[1] = 0;
      v41 = 0;
      v36 = v54;
      v37 = v55[0];
      v38 = v55[1];
      v39 = v56;
      v32 = v50;
      v33 = v51;
      v34 = v52;
      v35 = v53;
      outlined init with copy of _ShapeStyle_Pack.Style(&v42, &v50);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v40, &v32, v5);
      v54 = v36;
      v55[0] = v37;
      v55[1] = v38;
      v50 = v32;
      v51 = v33;
      v52 = v34;
      v56 = v39;
      v53 = v35;
      outlined destroy of _ShapeStyle_Pack.Style?(&v50, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v36 = v46;
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v32 = v42;
      v33 = v43;
      v34 = v44;
      v35 = v45;
      _ShapeStyle_RenderedShape.render(style:)(&v32);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(v5);
      outlined destroy of _ShapeStyle_Pack.Style(&v42);
    }
  }
}

double _ShapeView.shape(in:)(uint64_t a1, uint64_t a2, double a3)
{
  Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 32), v14, a3);
  v6 = v15;
  v7 = (v3 + *(a2 + 56));
  v8 = *v7;
  LODWORD(v7) = v7[1];
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  v10 = v7 == 0;
  v11 = 0x10000;
  if (v10)
  {
    v11 = 0;
  }

  v10 = v8 == 0;
  v12 = 256;
  if (v10)
  {
    v12 = 0;
  }

  *(a1 + 32) = v12 | v6 | v11;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t ResolvedGradient.constantColor.getter()
{
  v1 = *v0;
  v2 = (*v0)[1].i64[0];
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 5;
  while (--v2)
  {
    v4 = *v3;
    v3 += 3;
    if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v1[2]))) & 1) == 0)
    {
      return 0;
    }
  }

  return v1[2].i64[0];
}

BOOL specialized static _ShapeStyle_LayerID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 != 3 || (v6 | v5) != 0)
      {
        goto LABEL_24;
      }

      outlined consume of _ShapeStyle_LayerID(*a1, v3, 3);
      v10 = 0;
      v11 = 0;
      v12 = 3;
LABEL_22:
      outlined consume of _ShapeStyle_LayerID(v10, v11, v12);
      return 1;
    }

    if (v7 != 2)
    {

      goto LABEL_24;
    }

    if (v3)
    {
      if (v6)
      {
        if (v2 == v5 && v3 == v6)
        {
          outlined copy of _ShapeStyle_LayerID(*a1, v3, 2);
          outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
          outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
          v10 = v2;
          v11 = v3;
          v12 = 2;
          goto LABEL_22;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of _ShapeStyle_LayerID(v5, v6, 2);
        outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
        outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
        outlined consume of _ShapeStyle_LayerID(v5, v6, 2);
        return (v17 & 1) != 0;
      }

      outlined copy of _ShapeStyle_LayerID(*a2, 0, 2);
      outlined copy of _ShapeStyle_LayerID(v5, 0, 2);
      outlined copy of _ShapeStyle_LayerID(v2, v3, 2);
      outlined consume of _ShapeStyle_LayerID(v2, v3, 2);
    }

    else
    {

      outlined copy of _ShapeStyle_LayerID(v5, v6, 2);
      outlined copy of _ShapeStyle_LayerID(v2, 0, 2);
      outlined consume of _ShapeStyle_LayerID(v2, 0, 2);
      outlined consume of _ShapeStyle_LayerID(v5, v6, 2);
      if (!v6)
      {
        return 1;
      }
    }

    v14 = v5;
    v15 = v6;
    v16 = 2;
    goto LABEL_25;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      outlined consume of _ShapeStyle_LayerID(*a1, v3, 1);
      outlined consume of _ShapeStyle_LayerID(v5, v6, 1);
      return v2 == v5;
    }

    goto LABEL_24;
  }

  if (*(a2 + 16))
  {
LABEL_24:
    outlined copy of _ShapeStyle_LayerID(v5, v6, v7);
    outlined consume of _ShapeStyle_LayerID(v2, v3, v4);
    v14 = v5;
    v15 = v6;
    v16 = v7;
LABEL_25:
    outlined consume of _ShapeStyle_LayerID(v14, v15, v16);
    return 0;
  }

  v8 = *a1;
  outlined consume of _ShapeStyle_LayerID(*a1, v3, 0);
  outlined consume of _ShapeStyle_LayerID(v5, v6, 0);
  return v8 == v5 && WORD1(v2) == WORD1(v5);
}

uint64_t outlined consume of _ShapeStyle_LayerID(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

id *DynamicViewList.Item.deinit()
{
  v1 = *(*v0 + 17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t _AnyResolvedPaint.__deallocating_deinit()
{
  (*(*(*(*v0 + 184) - 8) + 8))(v0 + *(*v0 + 200));

  return swift_deallocClassInstance();
}

uint64_t destroy for SDFStyle.Gradient()
{
}

Swift::Void __swiftcall DynamicContainerInfo.destroy()()
{
  v2 = *(v1 + *(v0 + 48));
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](v4, v2);
      if (*(v5 + 56))
      {
        goto LABEL_8;
      }

LABEL_9:
      swift_beginAccess();
      if (*(v5 + 84) == 3)
      {
        v6 = *(v5 + 16);
        AGSubgraphRef.willInvalidate(isInserted:)(0);

        AGSubgraphInvalidate();
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }

    v5 = *(v2 + 8 * v4 + 32);

    if (!*(v5 + 56))
    {
      goto LABEL_9;
    }

LABEL_8:
    swift_weakAssign();
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t DynamicContainer._ItemInfo.__deallocating_deinit()
{
  DynamicContainer._ItemInfo.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18D13B720(uint64_t result)
{
  if (*(result + 72))
  {
    return specialized AnimatorState.removeListeners()();
  }

  return result;
}

uint64_t PropertyList.Tracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for GlassContainer.Storage()
{
}

uint64_t ModifiedViewList.ListModifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>)
  {
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnimatableArray<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>()
{
  if (!lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>)
  {
    type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
    v0 = type metadata accessor for AnimatableArray();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key);
  }

  return result;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, char a3, char a4)
{
  v7 = v4;
  v54 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v12 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v13 = (a3 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a4 & 1;
  v14 = swift_beginAccess();
  v15 = *(v7 + 144);
  v16 = *(v15 + 2);
  if (v16)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      *(v7 + 144) = v15;
    }

    if (v16 > *(v15 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v47[0]) = v16;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v15;
        swift_endAccess();
        if (v13)
        {
LABEL_47:
          v39 = *(v7 + 144);
          v40 = *(v39 + 16);
          if (v40)
          {
            v26 = *(v39 + 24 * v40 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v26 = 0;
          goto LABEL_50;
        }

        swift_beginAccess();
        if (*(v15 + 2))
        {
          specialized Array._customRemoveLast()(&v49);
          LODWORD(v15) = v50;
          v5 = v51;
          a1 = v49;
          if (v51)
          {
            v6 = HIDWORD(v50);
          }

          else
          {
            outlined consume of AsyncTransaction?(v49, v50, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v49);
            a1 = v49;
            LODWORD(v15) = v50;
            LODWORD(v6) = HIDWORD(v50);
            v5 = v51;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          v16 = *(v7 + 144);

          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = v16;
          if (v35)
          {
LABEL_44:
            v37 = *(v16 + 16);
            v36 = *(v16 + 24);
            if (v37 >= v36 >> 1)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v16);
            }

            *(v16 + 16) = v37 + 1;
            v38 = (v16 + 24 * v37);
            *(v38 + 4) = a1;
            *(v38 + 10) = v15;
            *(v38 + 11) = v6;
            *(v38 + 6) = v5;
            *(v7 + 144) = v16;
            swift_endAccess();

            goto LABEL_47;
          }

LABEL_56:
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          *(v7 + 144) = v16;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v5 = &v15[24 * v16];
    if (*(v5 + 4) == a2)
    {
      v18 = *(v5 + 1);
      if (v18)
      {
        if (a1)
        {
          v47[0] = MEMORY[0x1E69E7CC0];

          v19 = compareLists(_:_:ignoredTypes:)(v18, a1, v47);
          LODWORD(v6) = v47[0];

          if (v19)
          {
LABEL_15:
            specialized AsyncTransaction.append<A>(_:)();
            v16 = *(v5 + 5);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    v43 = a2;
    *(v7 + 144) = v15;
    swift_endAccess();
    if (!v13)
    {
      GraphHost.flushTransactions()();
    }
  }

  else
  {
    v43 = a2;
    if ((*(*v7 + 192))(v14))
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      swift_unknownObjectRelease();
    }
  }

  v52 = &type metadata for EmptyGraphMutation;
  v53 = &protocol witness table for EmptyGraphMutation;
  swift_beginAccess();
  v42 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v49, v47);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(&v49);
  v27 = v48;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v30 + 16))(v29);
  v45 = &type metadata for EmptyGraphMutation;
  v46 = &protocol witness table for EmptyGraphMutation;
  v23[2] = v26;
  outlined init with take of AnyTrackedValue(&v44, &v23[5 * v25 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v47);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v26 = (v42 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v49) = (v42 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v27 = *(v7 + 144);

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v27;
    if (v31)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
  *(v7 + 144) = v27;
LABEL_39:
  v33 = *(v27 + 2);
  v32 = *(v27 + 3);
  if (v33 >= v32 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v27);
  }

  *(v27 + 2) = v33 + 1;
  v34 = &v27[24 * v33];
  *(v34 + 4) = a1;
  *(v34 + 10) = v43;
  *(v34 + 11) = v26;
  *(v34 + 6) = v23;
  *(v7 + 144) = v27;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v12);
  return v26;
}

unint64_t GraphHost.emptyTransaction(_:)(unint64_t a1)
{
  v2 = _threadTransactionID();

  return specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, v2, 1, 1);
}

void type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>)
  {
    type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>();
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    }
  }
}

void type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>)
  {
    type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>> and conformance AnimatableArray<A>, type metadata accessor for AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
    }
  }
}

uint64_t one-time initialization function for caLayer()
{
  result = type metadata accessor for CALayerPlatformViewDefinition();
  static DisplayList.ViewUpdater.Platform.caLayer = result;
  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v15, &type metadata for InvalidatingGraphMutation, &protocol witness table for InvalidatingGraphMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for InvalidatingGraphMutation;
    v14 = &protocol witness table for InvalidatingGraphMutation;
    *&v12 = a1;
    v4[2] = v11 + 1;
    result = outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(a1, &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation, &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a1, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
    v14 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
    *&v12 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(v15, v12 + 16);
    v4[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    result = outlined destroy of LazyLayoutCacheItem.SingleItemPhaseMutation(v15);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v15 = a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v15, &type metadata for RepeatMutation, &protocol witness table for RepeatMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for RepeatMutation;
    v14 = &protocol witness table for RepeatMutation;
    *&v12 = a1;
    v4[2] = v11 + 1;
    result = outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(a1, &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation, &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a1, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
    }

    v13 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
    v14 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
    *&v12 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(v15, v12 + 16);
    v4[2] = v11 + 1;
    outlined init with take of AnyTrackedValue(&v12, &v4[5 * v11 + 4]);
    result = outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation(v15);
    *(v2 + 16) = v4;
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ForegroundStyleKey()
{

  return sub_18D13C810();
}

uint64_t sub_18D13C810()
{

  return protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TintKey();
}

uint64_t DerivedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v3 + 24))(a1, v4, v3, v7);
  swift_getAssociatedConformanceWitness();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t static DerivedEnvironmentPropertyKey.value(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = 0;
  v5 = *(a3 + 24);

  v5(v7, a2, a3);
}

BOOL protocol witness for static DerivedEnvironmentKey.value(in:) in conformance ShouldRedactContentKey@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static ShouldRedactContentKey.value(in:)(a1);
  *a2 = result;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AC03C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x193AC03C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18D13CC70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  result = a2 == 2 && a1 == 2;
  if (v2 != 2)
  {
    v4 = ((a2 ^ v2) & 1) == 0;
    if (a2 == 2)
    {
      return result;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance LocaleKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(a6, a7);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(unint64_t *a1, void (*a2)(uint64_t))
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

_DWORD *specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v218 = *MEMORY[0x1E69E9840];
  v197 = type metadata accessor for OSSignpostID();
  v193 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v9 = v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v177 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v195 = v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v177 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v196 = v177 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v177 - v21;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  result = AGGraphGetValue();
  if (*(a4 + 40) != *result >> 1)
  {
    specialized AnimatableAttributeHelper.reset()();
    *(a1 + 8) = 1;
LABEL_11:
    _ShapeStyle_Pack.animatableData.getter(&v204);
    v28 = *(a4 + 16);
    v29 = v204;
    if (!v28)
    {
      goto LABEL_126;
    }

    LODWORD(v190) = a3;
    v179 = v17;
    v30 = *(a4 + 24);
    v31 = v205;

    v191 = v28;
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVyAC16_ShapeStyle_PackV3KeyVAC0E4PairVyAI4FillO0E4DataOAMySfAC0eF0VyAMySfAI6EffectV4KindOAPOGGGG_G_Tt1g5(v29, v28) & 1) != 0 && ((v31 ^ v30) & 1) == 0)
    {

      goto LABEL_125;
    }

    v194 = v9;
    v177[0] = v12;
    v183 = v22;
    v181 = a1;
    AGGraphClearUpdate();
    v32 = *(a4 + 32);

    v33 = *AGGraphGetValue();

    v182 = v32;

    AGGraphSetUpdate();
    v34 = Transaction.effectiveAnimation.getter(v33);
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      if (!a2)
      {

        goto LABEL_124;
      }

      v35 = a2;
    }

    v200 = v29;
    v201 = v31;

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v200, v191, v30 & 1);
    v25 = *AGGraphGetValue();
    v36 = v200;
    v37 = v201;
    v180 = a4;
    v178 = v33;
    v177[1] = v35;
    if (v182)
    {

      LOBYTE(v206) = 0;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v35, v36, v37, v33, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v39 = CurrentAttribute;
      v40 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v41) = 0;
      }

      else
      {
        LODWORD(v41) = CurrentAttribute;
      }

      (*(*v35 + 96))(&v212);
      v42 = v212;
      v22 = v213;
      v43 = v214;
      a1 = v215;
      v44 = v216;
      v45 = v217;
      v202 = 0x7FF8000000000000;
      *&v203 = NAN;
      v199 = 1.0;
      v198 = NAN;
      v206 = v212;
      v207 = v213;
      v208 = v214;
      v209 = v215;
      v210 = *&v216;
      LOBYTE(v211) = v217;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v206, &v203, &v202, &v199, &v198);
      v46 = v202;
      v47 = v203;
      v48 = v199;
      v49 = v198;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_192;
      }

      goto LABEL_24;
    }

    v212 = &type metadata for _ShapeStyle_Pack;
    type metadata accessor for _ShapeStyle_Pack.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Type, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);

    v56 = swift_dynamicCast();
    if (v56)
    {
      v57 = v206;
    }

    else
    {
      v57 = 0;
    }

    if (v56)
    {
      v58 = v207;
    }

    else
    {
      v58 = 0;
    }

    v179 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV3KeyVAA0V4PairVyAX4FillO0V4DataOA0_ySfAA0vW0VyA0_ySfAX6EffectV4KindOA3_OGGGGG_Tt4B5(v59, v36, v37, v33, v57, v58, v25);
    v60 = AGGraphGetCurrentAttribute();
    v61 = v60;
    v40 = *MEMORY[0x1E698D3F8];
    if (v60 == *MEMORY[0x1E698D3F8])
    {
      v62 = 0;
    }

    else
    {
      v62 = v60;
    }

    (*(*v35 + 96))(&v212);
    v63 = v212;
    v64 = v213;
    a4 = v214;
    v65 = v215;
    v66 = v216;
    v67 = v217;
    v202 = 0x7FF8000000000000;
    *&v203 = NAN;
    v199 = 1.0;
    v198 = NAN;
    v206 = v212;
    v207 = v213;
    v208 = v214;
    v209 = v215;
    v210 = *&v216;
    LOBYTE(v211) = v217;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v206, &v203, &v202, &v199, &v198);
    v68 = v202;
    v69 = v203;
    v70 = v199;
    v71 = v198;
    if (one-time initialization token for enabledCategories != -1)
    {
      v195 = *&v203;
      v189 = v202;
      v192 = v199;
      *&v188 = v198;
      swift_once();
      v71 = *&v188;
      v70 = v192;
      v68 = v189;
      v69 = *&v195;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v72 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v195 = *&v66;
        v73 = *(v72 + 16);
        LODWORD(v206) = v62;
        BYTE4(v206) = v61 == v40;
        v207 = &type metadata for _ShapeStyle_Pack;
        v208 = v69;
        v209 = v68;
        v210 = v70;
        v211 = v71;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v74 = v73;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v63, v64, a4, v65, *&v195, v67);
      }

      else
      {
        outlined consume of Animation.Function(v63, v64, a4, v65, v66, v67);
      }

      v80 = one-time initialization token for animationState;
      v61 = v179;

      a4 = v180;
      if (v80 == -1)
      {
        goto LABEL_46;
      }
    }

    swift_once();
LABEL_46:
    a1 = *(&static Signpost.animationState + 1);
    v81 = static Signpost.animationState;
    LOBYTE(v82) = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v84 = byte_1ED5283EA;
    v85 = static os_signpost_type_t.begin.getter();
    v206 = v81;
    v207 = a1;
    LOBYTE(v208) = v82;
    BYTE1(v208) = v83;
    BYTE2(v208) = v84;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_122;
    }

    v86 = one-time initialization token for _signpostLog;

    if (v86 != -1)
    {
      goto LABEL_199;
    }

    goto LABEL_48;
  }

  if (*(a1 + 8) == 1)
  {
    goto LABEL_11;
  }

  v27 = *(a4 + 32);
  if (v27 == 0.0)
  {
    return result;
  }

  while (1)
  {

    _ShapeStyle_Pack.animatableData.getter(&v204);
    LOBYTE(v206) = 0;
    v145 = specialized AnimatorState.update(_:at:environment:)(&v204, a3, v25);
    v108 = AGGraphGetCurrentAttribute();
    v40 = *MEMORY[0x1E698D3F8];
    if (v108 == *MEMORY[0x1E698D3F8])
    {
      v105 = 0;
    }

    else
    {
      v105 = v108;
    }

    *&v87 = COERCE_DOUBLE(&type metadata instantiation cache for TupleTypeDescription);
    if (v145)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_185;
      }

      goto LABEL_132;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_187;
    }

LABEL_145:
    v156 = *(v87 + 616);
    if (*(v156 + 16) >= 0x43uLL)
    {
      if (*(v156 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v206) = v105;
        BYTE4(v206) = v108 == v40;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_180;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_137:
    v42 = *(&static Signpost.animationState + 1);
    v41 = static Signpost.animationState;
    v45 = word_1ED5283E8;
    v43 = HIBYTE(word_1ED5283E8);
    v148 = byte_1ED5283EA;
    v149 = static os_signpost_type_t.end.getter();
    v206 = v41;
    v207 = v42;
    LOBYTE(v208) = v45;
    BYTE1(v208) = v43;
    BYTE2(v208) = v148;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_179;
    }

    LODWORD(v195) = v149;
    v150 = one-time initialization token for _signpostLog;
    v39 = LODWORD(v187);

    if (v150 != -1)
    {
      swift_once();
    }

    v180 = a4;
    v181 = a1;
    v44 = _signpostLog;
    v183 = v22;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v40)
    {
      break;
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    v194 = v47;
    v189 = v46;
    v192 = v48;
    *&v188 = v49;
    swift_once();
    v49 = *&v188;
    v48 = v192;
    v46 = v189;
    v47 = v194;
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v50 = v41;
        v51 = v44;
        v52 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v194) = v45;
          v53 = *(v52 + 16);
          LODWORD(v206) = v50;
          BYTE4(v206) = v39 == v40;
          v207 = &type metadata for _ShapeStyle_Pack;
          v208 = v47;
          v209 = v46;
          v210 = v48;
          v211 = v49;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v192 = v54;

          v55 = v53;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v42, v22, v43, a1, v51, v194);

          goto LABEL_56;
        }

        v75 = v42;
        v76 = v22;
        v77 = v43;
        v78 = a1;
        v79 = v51;
      }

      else
      {
        v75 = v42;
        v76 = v22;
        v77 = v43;
        v78 = a1;
        v79 = v44;
      }

      outlined consume of Animation.Function(v75, v76, v77, v78, v79, v45);
LABEL_56:
      v94 = one-time initialization token for animationState;

      if (v94 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_194;
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_57:
    v82 = *(&static Signpost.animationState + 1);
    v81 = static Signpost.animationState;
    v95 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v96 = byte_1ED5283EA;
    v85 = static os_signpost_type_t.event.getter();
    v206 = v81;
    v207 = v82;
    LOBYTE(v208) = v95;
    BYTE1(v208) = v83;
    BYTE2(v208) = v96;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_93:
      a4 = v180;
      goto LABEL_123;
    }

    v97 = one-time initialization token for _signpostLog;

    if (v97 != -1)
    {
      swift_once();
    }

    v98 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v40)
    {
      __break(1u);
    }

    else
    {
      v27 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
      Counter = AGGraphGetCounter();

      v100 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v100;
      *(a1 + 32) = Counter;
      v101 = AGGraphGetCurrentAttribute();
      if (v101 != v40)
      {
        v102 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v102;
        *(a1 + 72) = v101;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 112) = 0xD000000000000010;
        *(a1 + 120) = 0x800000018DD7EDB0;
        if (v83)
        {
          LOBYTE(v198) = v85;
          v202 = v98;
          *&v203 = COERCE_DOUBLE(&dword_18D018000);
          v206 = v81;
          v207 = v82;
          LOBYTE(v208) = v95;
          v212 = "Animation: (%p) [%d] %{public}@ updated";
          v213 = 39;
          LOBYTE(v214) = 2;
          v199 = *&a1;
          v103 = v179;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v193 + 8))(v103, v197);
        }

        else
        {
          v104 = v81;
          if (v81 == 20)
          {
            v87 = 3;
          }

          else
          {
            v87 = 4;
          }

          v40 = bswap32(v81) | (4 * (v81 >> 16));
          v105 = v85;
          v106 = v193 + 16;
          v184 = *(v193 + 16);
          v107 = v184(*&v195, v179, v197);
          v22 = 0;
          LOBYTE(v212) = 1;
          v194 = v87;
          v188 = 16 * v87;
          v185 = v106;
          v189 = (v106 - 8);
          *&v187 = a1 + 32;
          v186 = v104;
          do
          {
            v192 = COERCE_DOUBLE(v177);
            MEMORY[0x1EEE9AC00](v107);
            v110 = v177 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (v110 + 8);
            v111 = v194;
            v112 = v110 + 8;
            do
            {
              *(v112 - 1) = 0;
              *v112 = 0;
              v112 += 16;
              v111 = (v111 - 1);
            }

            while (v111);
            v113 = *&v187 + 40 * v22;
            v114 = v194;
            while (1)
            {
              v115 = *(a1 + 16);
              if (v22 == v115)
              {
                break;
              }

              if (v22 >= v115)
              {
                goto LABEL_183;
              }

              ++v22;
              outlined init with copy of AnyTrackedValue(v113, &v206);
              v116 = v209;
              v27 = v210;
              v117 = __swift_project_boxed_opaque_existential_1(&v206, v209);
              v118 = v116;
              v87 = v117;
              *(a4 - 8) = CVarArg.kdebugValue(_:)(v40 | v105, v118);
              *a4 = v119 & 1;
              a4 += 16;
              v108 = __swift_destroy_boxed_opaque_existential_1(&v206);
              v113 += 40;
              v114 = (v114 - 1);
              if (!v114)
              {
                goto LABEL_77;
              }
            }

            LOBYTE(v212) = 0;
LABEL_77:
            v120 = v186;
            if (v186 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v110[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v110[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v110[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v120 != 20 && v110[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v121 = *v189;
            v27 = v195;
            v87 = v197;
            (*v189)(COERCE_DOUBLE(*&v195), v197);
            v122 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
            v107 = v184(*&v27, v122, v87);
          }

          while ((v212 & 1) != 0);

          v123 = v197;
          (v121)(*&v195, v197);
          (v121)(v179, v123);
        }

        goto LABEL_93;
      }
    }

    __break(1u);
LABEL_199:
    swift_once();
LABEL_48:
    *&v87 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v40)
    {
      __break(1u);
LABEL_201:
      __break(1u);
    }

    v88 = AGGraphGetAttributeGraph();
    v89 = AGGraphGetCounter();

    v90 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v90;
    *(a4 + 32) = v89;
    v91 = AGGraphGetCurrentAttribute();
    if (v91 == v40)
    {
      goto LABEL_201;
    }

    v92 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v92;
    *(a4 + 72) = v91;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 112) = 0xD000000000000010;
    *(a4 + 120) = 0x800000018DD7EDB0;
    if (v83)
    {
      LOBYTE(v198) = v85;
      v202 = v87;
      *&v203 = COERCE_DOUBLE(&dword_18D018000);
      v206 = v81;
      v207 = a1;
      LOBYTE(v208) = v82;
      v212 = "Animation: (%p) [%d] %{public}@ started";
      v213 = 39;
      LOBYTE(v214) = 2;
      v199 = *&a4;
      v93 = v177[0];
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v61 = v179;

      (*(v193 + 8))(v93, v197);
    }

    else
    {
      v124 = v81;
      if (v81 == 20)
      {
        a1 = 3;
      }

      else
      {
        a1 = 4;
      }

      v40 = bswap32(v81) | (4 * (v81 >> 16));
      v105 = v85;
      v125 = v193 + 16;
      v184 = *(v193 + 16);
      v126 = v184(v194, v177[0], v197);
      v22 = 0;
      LOBYTE(v212) = 1;
      v189 = (16 * a1);
      v185 = v125;
      *&v192 = v125 - 8;
      v188 = a4 + 32;
      v187 = *&v124;
      v186 = a1;
      do
      {
        v195 = COERCE_DOUBLE(v177);
        MEMORY[0x1EEE9AC00](v126);
        v128 = v177 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v27 = v128 + 8;
        v129 = a1;
        v130 = v128 + 8;
        do
        {
          *(v130 - 1) = 0;
          *v130 = 0;
          v130 += 16;
          --v129;
        }

        while (v129);
        v131 = v188 + 40 * v22;
        while (1)
        {
          v132 = *(a4 + 16);
          if (v22 == v132)
          {
            break;
          }

          if (v22 >= v132)
          {
            goto LABEL_184;
          }

          ++v22;
          outlined init with copy of AnyTrackedValue(v131, &v206);
          v133 = v209;
          v134 = __swift_project_boxed_opaque_existential_1(&v206, v209);
          v135 = v133;
          v87 = v134;
          *(*&v27 - 8) = CVarArg.kdebugValue(_:)(v40 | v105, v135);
          **&v27 = v136 & 1;
          *&v27 += 16;
          v108 = __swift_destroy_boxed_opaque_existential_1(&v206);
          v131 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_106;
          }
        }

        LOBYTE(v212) = 0;
LABEL_106:
        v137 = v187;
        if (*&v187 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a1 = v186;
        if (v128[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v128[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v128[40] == 1)
        {
          kdebug_trace_string();
        }

        if (*&v137 != 20 && v128[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v138 = **&v192;
        v139 = v194;
        v87 = v197;
        (**&v192)(v194, v197);
        v140 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
        v126 = v184(v139, v140, v87);
      }

      while ((v212 & 1) != 0);
      v141 = v179;

      v142 = v139;
      v61 = v141;
      v143 = v197;
      v138(v142, v197);
      v138(v177[0], v143);
    }

    a4 = v180;
LABEL_122:
    *(a4 + 32) = v61;
LABEL_123:
    specialized AnimatorState.addListeners(transaction:)(v178);

    v29 = v204;
LABEL_124:
    a1 = v181;
    v22 = v183;
LABEL_125:
    a3 = v190;
LABEL_126:

    v144 = v205;
    *(a4 + 16) = v29;
    *(a4 + 24) = v144;
    v27 = *(a4 + 32);
    if (v27 == 0.0)
    {
      return result;
    }
  }

  v22 = AGGraphGetAttributeGraph();
  v151 = AGGraphGetCounter();

  v152 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v152;
  *(a1 + 32) = v151;
  v153 = AGGraphGetCurrentAttribute();
  v39 = LODWORD(v195);
  if (v153 == v40)
  {
    goto LABEL_191;
  }

  v154 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v154;
  *(a1 + 72) = v153;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0xD000000000000010;
  *(a1 + 120) = 0x800000018DD7EDB0;
  v155 = v183;
  if (v43)
  {
    LOBYTE(v199) = v39;
    v200 = &dword_18D018000;
    v202 = a1;
    v203 = v44;
    v206 = v41;
    v207 = v42;
    LOBYTE(v208) = v45;
    v212 = "Animation: (%p) [%d] %{public}@ ended";
    v213 = 37;
    LOBYTE(v214) = 2;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v193 + 8))(v155, v197);
    goto LABEL_178;
  }

  v157 = v41;
  if (v41 == 20)
  {
    v87 = 3;
  }

  else
  {
    v87 = 4;
  }

  v40 = bswap32(v41) | (4 * (v41 >> 16));
  v105 = v39;
  v158 = v193 + 16;
  v188 = *(v193 + 16);
  v159 = (v188)(v196, v183, v197);
  *&a4 = 0.0;
  LOBYTE(v212) = 1;
  v195 = *&v87;
  v191 = (16 * v87);
  v193 = v158;
  *&v192 = v158 - 8;
  v190 = a1 + 32;
  v189 = v157;
  do
  {
    v194 = v177;
    MEMORY[0x1EEE9AC00](v159);
    v22 = v177 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v27 = v22 + 8;
    v161 = *&v195;
    v162 = (v22 + 8);
    do
    {
      *(v162 - 1) = 0;
      *v162 = 0;
      v162 += 16;
      --v161;
    }

    while (v161);
    v163 = v190 + 40 * a4;
    v164 = *&v195;
    while (1)
    {
      v165 = *(a1 + 16);
      if (a4 == v165)
      {
        break;
      }

      if (a4 >= v165)
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        v175 = v108;
        swift_once();
        v108 = v175;
LABEL_132:
        v146 = *(v87 + 616);
        if (*(v146 + 16) >= 0x43uLL)
        {
          if (*(v146 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v206) = v105;
            BYTE4(v206) = v108 == v40;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v147 = one-time initialization token for animationState;
          v187 = v27;

          if (v147 != -1)
          {
            goto LABEL_189;
          }

          goto LABEL_137;
        }

        __break(1u);
LABEL_187:
        v176 = v108;
        swift_once();
        v108 = v176;
        goto LABEL_145;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v163, &v206);
      v166 = v209;
      v167 = __swift_project_boxed_opaque_existential_1(&v206, v209);
      v168 = v166;
      v87 = v167;
      *(*&v27 - 8) = CVarArg.kdebugValue(_:)(v40 | v105, v168);
      **&v27 = v169 & 1;
      *&v27 += 16;
      v108 = __swift_destroy_boxed_opaque_existential_1(&v206);
      v163 += 40;
      if (!--v164)
      {
        goto LABEL_163;
      }
    }

    LOBYTE(v212) = 0;
LABEL_163:
    v170 = v189;
    if (v189 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v22 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v170 != 20 && *(v22 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v171 = **&v192;
    v172 = v196;
    v87 = v197;
    (**&v192)(v196, v197);
    v173 = __swift_project_value_buffer(v87, static OSSignpostID.continuation);
    v159 = (v188)(v172, v173, v87);
  }

  while ((v212 & 1) != 0);

  v174 = v197;
  v171(v196, v197);
  v171(v183, v174);
LABEL_178:

  a1 = v181;
  a4 = v180;
LABEL_179:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_180:
  v206 = v204;
  LOBYTE(v207) = v205;

  _ShapeStyle_Pack.animatableData.setter(&v206);

  *(a1 + 8) = 1;
  return result;
}

void _ShapeStyle_Pack.animatableData.getter(uint64_t a1@<X8>)
{
  v128 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v83 = a1;
  v105 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = 0;
  v84 = v2 + 32;
  v6 = v105;
  v85 = v3;
  do
  {
    v7 = (v84 + (v5 << 7));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v122 = v7[2];
    v123 = v10;
    v120 = v8;
    v121 = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v126 = v7[6];
    v127 = v13;
    v124 = v11;
    v125 = v12;
    *&v13 = v121;
    v14.i64[0] = *(&v120 + 1);
    v86 = v6;
    v87 = v5;
    if (BYTE13(v12) > 2u)
    {
      if (BYTE13(v12) > 4u)
      {
        if (BYTE13(v12) == 5)
        {
          *(&v117[1] + 8) = v122;
          *(&v117[2] + 8) = v123;
          *(&v117[3] + 8) = v124;
          *(&v117[4] + 1) = v125;
          *&v117[0] = *(&v120 + 1);
          *(&v13 + 1) = *(&v121 + 1);
          *(v117 + 8) = v13;
          v16 = 8;
          goto LABEL_13;
        }
      }

      else if (BYTE13(v12) != 3)
      {
        v14.i64[1] = v121;
        v15.i64[0] = 0x4300000043000000;
        v15.i64[1] = 0x4300000043000000;
        v117[0] = vmulq_f32(v14, v15);
        *&v117[1] = vmul_f32(*(&v121 + 8), 0x4300000043000000);
        v16 = 1;
LABEL_13:
        v118 = v16;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        goto LABEL_27;
      }

      memset(v117, 0, sizeof(v117));
      v16 = 9;
      goto LABEL_13;
    }

    if (BYTE13(v12))
    {
      if (BYTE13(v12) == 1)
      {
        memset(v117, 0, sizeof(v117));
        v118 = 9;
        *&v106[0] = v117;
        v17 = *(**(&v120 + 1) + 152);
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        outlined init with copy of _ShapeStyle_Pack.Fill(&v120 + 8, &v114);
        v17(v106, &unk_1F0071D30, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintInitVisitor);
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        goto LABEL_27;
      }

      v92 = *(&v120 + 8);
      v98 = DWORD2(v121);
      v102 = v121;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      outlined init with copy of _ShapeStyle_Pack.Fill(&v120 + 8, &v114);
      if (one-time initialization token for legacyInterpolation != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        v22 = v102.i32[1];
        v23 = v102.f32[0];
        *v24.f32 = v92;
      }

      else
      {
        v34 = (0.62998 * v102.f32[0]) + vaddv_f32(vmul_f32(v92, 0x3E903D743DB4D7ECLL));
        v35 = vadd_f32(vmul_n_f32(0x3DDBF2F03D52B909, v102.f32[0]), vadd_f32(vmul_f32(v92, 0x3F2E42533ED30EB1), vrev64_s32(vmul_f32(v92, 0x3F094D173E58FD3BLL))));
        v36 = vabs_f32(v35);
        v89 = v36.f32[0];
        v94 = powf(v36.f32[1], 0.33333);
        *v37.i32 = powf(v89, 0.33333);
        *&v37.i32[1] = v94;
        v38 = vbsl_s8(0x8000000080000000, v37, v35);
        v39 = powf(fabsf(v34), 0.33333);
        v40 = copysignf(v39, v34);
        outlined destroy of _ShapeStyle_Pack.Fill(&v120 + 8);
        v22 = v102.i32[1];
        *v24.f32 = vmul_lane_f32(v38, v102, 1);
        v23 = vmuls_lane_f32(v40, v102, 1);
      }

      v24.i64[1] = __PAIR64__(v22, LODWORD(v23));
      v41.i64[0] = 0x4300000043000000;
      v41.i64[1] = 0x4300000043000000;
      v33 = vmulq_f32(v24, v41);
      v20 = v98;
    }

    else
    {
      v91 = *(&v120 + 8);
      v97 = DWORD2(v121);
      v101 = v121;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, &v114, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (one-time initialization token for legacyInterpolation != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = v101.i32[1];
      v19 = v101.f32[0];
      if (static Color.Resolved.legacyInterpolation)
      {
        *v21.f32 = v91;
        v20 = v97;
      }

      else
      {
        v25 = (v101.f32[0] * 0.62998) + vaddv_f32(vmul_f32(v91, 0x3E903D743DB4D7ECLL));
        v26 = vadd_f32(vmul_n_f32(0x3DDBF2F03D52B909, v101.f32[0]), vadd_f32(vmul_f32(v91, 0x3F2E42533ED30EB1), vrev64_s32(vmul_f32(v91, 0x3F094D173E58FD3BLL))));
        v27 = vabs_f32(v26);
        v88 = v27.f32[0];
        v93 = powf(v27.f32[1], 0.33333);
        *v28.i32 = powf(v88, 0.33333);
        *&v28.i32[1] = v93;
        v29 = vbsl_s8(0x8000000080000000, v28, v26);
        v30 = powf(fabsf(v25), 0.33333);
        v31 = copysignf(v30, v25);
        v20 = v97;
        v18 = v101.i32[1];
        *v21.f32 = vmul_lane_f32(v29, v101, 1);
        v19 = vmuls_lane_f32(v31, v101, 1);
      }

      v21.i64[1] = __PAIR64__(v18, LODWORD(v19));
      v32.i64[0] = 0x4300000043000000;
      v32.i64[1] = 0x4300000043000000;
      v33 = vmulq_f32(v21, v32);
    }

    v117[0] = v33;
    LODWORD(v117[1]) = v20;
    v118 = 0;
LABEL_27:
    v42 = *(&v127 + 1);
    v110 = v117[2];
    v111 = v117[3];
    v112 = v117[4];
    v113 = v118;
    v108 = v117[0];
    v109 = v117[1];
    v43 = *(*(&v127 + 1) + 16);
    if (v43)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v44 = v4;
      v45 = (v42 + 32);
      v46 = v43 - 1;
      v47 = &unk_1ED52E000;
      while (1)
      {
        v114 = *v45;
        v48 = *(v45 + 57);
        v50 = v45[2];
        v49 = v45[3];
        *v115 = v45[1];
        *&v115[16] = v50;
        *v116 = v49;
        *&v116[9] = v48;
        v51 = BYTE5(v49);
        if (BYTE5(v49))
        {
          v52 = 0;
          v53 = 0uLL;
          v54 = 0uLL;
        }

        else
        {
          v55 = *(&v114 + 2);
          v95 = v114;
          v99 = *(&v114 + 3);
          v103 = *&v115[8];
          v52 = *&v115[24];
          outlined init with copy of _ShapeStyle_Pack.Effect(&v114, v106);
          if (v47[487] != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (static Color.Resolved.legacyInterpolation)
          {
            outlined destroy of _ShapeStyle_Pack.Effect(&v114);
            v56.i32[0] = v95.i32[1];
            v57 = __PAIR64__(LODWORD(v55), v95.u32[0]);
            v58 = v99;
          }

          else
          {
            v59 = ((0.2119 * v95.f32[0]) + vmuls_lane_f32(0.6807, v95, 1)) + (v55 * 0.1074);
            v60 = powf(fabsf(v59), 0.33333);
            v61 = copysignf(v60, v59);
            v62 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v95, 0x3F094D173DB4D7ECLL)), vmul_f32(v95, 0x3E903D743ED30EB1)), vmul_n_f32(0x3F2146493D52B909, v55));
            v63 = vabs_f32(v62);
            v90 = v63.f32[0];
            v96 = powf(v63.f32[1], 0.33333);
            *v64.i32 = powf(v90, 0.33333);
            *&v64.i32[1] = v96;
            v65 = vbsl_s8(0x8000000080000000, v64, v62);
            outlined destroy of _ShapeStyle_Pack.Effect(&v114);
            v58 = v99;
            v56.f32[0] = v99 * v61;
            v57 = vmul_n_f32(v65, v99);
          }

          v66 = vmul_f32(v57, 0x4300000043000000);
          v56.f32[1] = v58;
          v67.i64[0] = v66.u32[0];
          v67.i64[1] = v66.u32[1];
          v53 = vorrq_s8(vshll_n_s32(vmul_f32(v56, 0x4300000043000000), 0x20uLL), v67);
          v54 = v103;
        }

        v68 = *&v116[8];
        v70 = *(v44 + 16);
        v69 = *(v44 + 24);
        if (v70 >= v69 >> 1)
        {
          v100 = v53;
          v104 = v54;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
          v53 = v100;
          v54 = v104;
          v47 = &unk_1ED52E000;
        }

        *(v44 + 16) = v70 + 1;
        v71 = v44 + 56 * v70;
        *(v71 + 32) = v68;
        *(v71 + 40) = v53;
        *(v71 + 56) = v54;
        *(v71 + 72) = v52;
        *(v71 + 80) = v51 & 1;
        if (!v46)
        {
          break;
        }

        --v46;
        v45 += 5;
      }

      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v120, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      v44 = v4;
    }

    v72 = v120;
    v73 = BYTE1(v120);
    v74 = v126;
    LOBYTE(v107) = v113;
    v106[2] = v110;
    v106[3] = v111;
    v106[4] = v112;
    v106[0] = v108;
    v106[1] = v109;
    *&v119[70] = v112;
    *&v119[54] = v111;
    *&v119[38] = v110;
    *&v119[6] = v108;
    *&v119[22] = v109;
    *&v119[86] = v107;
    *&v116[30] = *&v119[78];
    *v116 = *&v119[48];
    *&v116[16] = *&v119[64];
    *v115 = *&v119[16];
    *&v115[16] = *&v119[32];
    v114 = *v119;
    v6 = v86;
    v75 = v87;
    v77 = *(v86 + 16);
    v76 = *(v86 + 24);
    if (v77 >= v76 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1);
      v75 = v87;
      v6 = v86;
    }

    v5 = v75 + 1;
    *(v6 + 16) = v77 + 1;
    v78 = v6 + 112 * v77;
    *(v78 + 32) = v72;
    *(v78 + 33) = v73;
    v79 = v114;
    *(v78 + 50) = *v115;
    *(v78 + 34) = v79;
    v80 = *&v115[16];
    v81 = *v116;
    v82 = *&v116[16];
    *(v78 + 112) = *&v116[30];
    *(v78 + 98) = v82;
    *(v78 + 82) = v81;
    *(v78 + 66) = v80;
    *(v78 + 128) = v74;
    *(v78 + 136) = v44;
  }

  while (v5 != v85);
  a1 = v83;
LABEL_48:
  *a1 = v6;
  *(a1 + 8) = 0;
}

void type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element()
{
  if (!lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element)
  {
    type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
    lazy protocol witness table accessor for type _ShapeStyle_Pack.Key and conformance _ShapeStyle_Pack.Key();
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v0 = type metadata accessor for KeyedAnimatableArray.Element();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
    }
  }
}

uint64_t outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16_ShapeStyle_PackV3KeyV3key_AC0D0V5styletWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of (PaintType, ShapeType)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t PropertyList.Tracker.hasDifferentUsedValues(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);

  os_unfair_lock_unlock((v3 + 16));

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  if (a1)
  {
    if (*(a1 + 64) == v5)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    if (compare(_:against:)(v4, a1) & 1) != 0 && (compare(_:against:)(v6, a1))
    {
      result = v7 + 32;
      v10 = -*(v7 + 16);
      v11 = -1;
      while (v10 + v11 != -1)
      {
        if (++v11 >= *(v7 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = result + 40;
        outlined init with copy of AnyTrackedValue(result, v16);
        v13 = v17;
        v14 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v15 = (*(v14 + 16))(a1, v13, v14);
        __swift_destroy_boxed_opaque_existential_1(v16);
        result = v12;
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

LABEL_12:

    return 1;
  }

LABEL_13:

  return 0;
}

uint64_t compare(_:against:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_12:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v15, v20);
      *&v21 = v16;
      outlined init with take of AnyTrackedValue(v20, &v21 + 8);
      v13 = v11;
LABEL_13:
      v24[1] = v22;
      v24[2] = v23;
      v24[0] = v21;
      v17 = v23;
      if (!v23)
      {

        return v17 == 0;
      }

      outlined init with take of AnyTrackedValue((v24 + 8), &v21);
      v18 = *(&v22 + 1);
      v19 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
      if (((*(v19 + 16))(a2, v18, v19) & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      v10 = v13;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v21);
    return v17 == 0;
  }

  else
  {
LABEL_5:
    if (v8 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ViewTraitCollection.value<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v13 - v10;
  v13[1] = *v3;
  (*(a2 + 16))(a1, a2, v9);
  ViewTraitCollection.value<A>(for:defaultValue:)(v11, a1, a3);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t specialized _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)(int *a1, double a2, double a3, double a4, double a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v9 = *(a1 + 1);
  v10 = *(a1 + 17);
  v84 = *a1;
  v85 = *(a1 + 16);
  LODWORD(v95) = *a1;
  *(&v95 + 1) = v9;
  LOBYTE(v96) = v85;
  BYTE1(v96) = v10;
  *(&v96 + 1) = 0;
  *&v97 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
  *(&v97 + 1) = 0;
  swift_bridgeObjectRetain_n();
  *&v11 = COERCE_DOUBLE(specialized LazyMapSequence.Iterator.next()());
  if (v12)
  {

    v13 = 0.0;
LABEL_18:

    v20 = swift_allocObject();
    *(v20 + 16) = v13;
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = a4;
    v21[5] = a5;
    LOBYTE(v95) = v85;
    v99 = v84;
    v100 = v9;
    v101 = v85;
    v102 = v10;
    v103 = partial apply for closure #2 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:);
    v104 = v20;
    v105 = partial apply for closure #3 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:);
    v106 = v21;

    specialized Sequence.reduce<A>(_:_:)(&v99, a7, a8, -INFINITY, -INFINITY);
    v23 = v22;
    v25 = v24;
    outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(&v99, type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
    v26 = *(v9 + 16);

    if (!v26)
    {
    }

    v27 = 0;
    v28 = (v9 + 32);
    v77 = a8 >> 1;
    v78 = a7 >> 1;
    v29 = (v9 + 40);
    v79 = v9 + 32;
    v80 = v9;
    while (1)
    {
      if (v85)
      {
        if (v27 >= v26)
        {
          goto LABEL_74;
        }

        v36 = (v79 + 12 * v27);
        v37 = *v29;
      }

      else
      {
        if (v27 >= v26)
        {
          goto LABEL_75;
        }

        v37 = v27;
        v36 = v28;
      }

      if (v27 >= v26)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v88 = v37;
      v89 = v84;
      v90 = *v36;
      *&v91 = a4;
      BYTE8(v91) = 0;
      *&v92 = a5;
      BYTE8(v92) = 0;
      LayoutProxy.dimensions(in:)(&v91, &v95);
      v38 = v95;
      v39 = v96;
      v40 = v97;
      v41 = one-time initialization token for lockAssertionsAreEnabled;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_86;
        }
      }

      v95 = v39;
      v96 = v40;
      v43 = *(*v38 + 144);
      *&v44 = COERCE_DOUBLE(v43(a7, &v95));
      v46 = v45;

      if (v46)
      {
        if (one-time initialization token for typeCache != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&static AlignmentKey.typeCache);
        if (a7 < 2)
        {
          goto LABEL_76;
        }

        if (v78 > *(off_1ED537F58 + 2))
        {
          goto LABEL_78;
        }

        v47 = (off_1ED537F58 + 16 * v78 + 16);
        v48 = *v47;
        v49 = v47[1];
        os_unfair_lock_unlock(&static AlignmentKey.typeCache);
        v95 = v38;
        v96 = v39;
        v97 = v40;
        v50 = (*(v49 + 8))(&v95, v48, v49);
        if (!v42)
        {
LABEL_40:

          goto LABEL_45;
        }
      }

      else
      {
        v50 = *&v44;
        if (!v42)
        {
          goto LABEL_40;
        }
      }

      v51 = one-time initialization token for _lock;

      if (v51 != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        goto LABEL_86;
      }

LABEL_45:
      v95 = v39;
      v96 = v40;
      *&v52 = COERCE_DOUBLE(v43(a8, &v95));
      v54 = v53;

      if (v54)
      {
        if (one-time initialization token for typeCache != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&static AlignmentKey.typeCache);
        if (a8 < 2)
        {
          goto LABEL_77;
        }

        if (v77 > *(off_1ED537F58 + 2))
        {
          goto LABEL_79;
        }

        v55 = (off_1ED537F58 + 16 * v77 + 16);
        v56 = *v55;
        v57 = v55[1];
        os_unfair_lock_unlock(&static AlignmentKey.typeCache);
        v95 = v38;
        v96 = v39;
        v97 = v40;
        (*(v57 + 8))(&v95, v56, v57);
      }

      else
      {
        v58 = *&v52;
      }

      v59 = v23 - v50 + a2;
      if (v23 == v50)
      {
        v59 = a2;
      }

      if (v25 == v58)
      {
        v60 = a3;
      }

      else
      {
        v60 = v25 - v58 + a3;
      }

      *&v95 = v59;
      *(&v95 + 1) = v60;
      v96 = v38;
      v97 = v39;
      v98 = v40;

      v61 = _threadLayoutData();
      if (!v61)
      {
        goto LABEL_85;
      }

      v62 = v61;
      if (*v61)
      {
        goto LABEL_71;
      }

      v63 = *(v61 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v62 + 8) = v63;
      if (isUniquelyReferenced_nonNull_native)
      {
        v65 = v88;
        if (v88 < 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v63);
        *(v62 + 8) = v63;
        v65 = v88;
        if (v88 < 0)
        {
          goto LABEL_72;
        }
      }

      if (*(v63 + 2) <= v65)
      {
        goto LABEL_73;
      }

      v66 = &v63[64 * v65];
      v69 = *(v66 + 4);
      v67 = v66 + 32;
      v68 = v69;
      v70 = *v67;
      v71 = *(v67 + 1);
      v72 = *(v67 + 3);
      v93 = *(v67 + 2);
      v94 = v72;
      v91 = v70;
      v92 = v71;
      outlined destroy of ViewGeometry(&v91);
      if ((~v69 & 0x7FF0000000000000) == 0 && (v68 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        ++*(v62 + 16);
      }

      v73 = v95;
      v74 = v96;
      v75 = v98;
      *(v67 + 2) = v97;
      *(v67 + 3) = v75;
      *v67 = v73;
      *(v67 + 1) = v74;
      if (*(v62 + 56))
      {
        v30 = *(v62 + 24);
        v31 = *(v62 + 32);
        v32 = *(v62 + 40);
        v33 = *(v62 + 48);
        outlined init with copy of ViewGeometry(&v95, &v89);
        v107.origin.x = v30;
        v107.origin.y = v31;
        v107.size.width = v32;
        v107.size.height = v33;
        MaxX = CGRectGetMaxX(v107);
        v108.origin.x = *v67;
        v108.origin.y = *(v67 + 1);
        v108.size.width = *(v67 + 4);
        v108.size.height = *(v67 + 5);
        v35 = CGRectGetMaxX(v108);
        outlined destroy of ViewGeometry(&v95);

        *v67 = MaxX - (v35 - v30);
      }

      else
      {
      }

      ++v27;
      v26 = *(v80 + 16);
      ++v28;
      v29 += 3;
      if (v27 == v26)
      {
      }
    }
  }

  v14 = *&v11;
  v15 = *(&v96 + 1);
  v16 = *(v9 + 16);
  if (*(&v96 + 1) == v16)
  {
    v13 = *&v11;
LABEL_17:
    *(&v96 + 1) = v15;

    goto LABEL_18;
  }

  v17 = v9 + 32 + 12 * *(&v96 + 1);
  v13 = *&v11;
  while ((v85 & 1) != 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }

    v18 = v17;
    if (v15 >= v16)
    {
      goto LABEL_84;
    }

LABEL_13:
    if (v15 >= v16)
    {
      goto LABEL_80;
    }

    ++v15;
    LODWORD(v91) = v84;
    *(&v91 + 4) = *v18;
    LayoutProxy.layoutPriority.getter();
    if (v14 < v19)
    {
      v13 = v19;
      v14 = v19;
    }

    v16 = *(v9 + 16);
    v17 += 12;
    if (v15 == v16)
    {
      goto LABEL_17;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if (v15 < v16)
  {
    v18 = (v9 + 32 + 8 * v15);
    goto LABEL_13;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

float ResolvedGradient.ColorSpace.convertIn(_:)@<S0>(float32x2_t *a1@<X8>, float a2@<S0>, unsigned int a3@<S1>, float a4@<S2>, float32_t a5@<S3>)
{
  v6 = *&a3;
  v7 = a2;
  if (*v5)
  {
    v9 = __PAIR64__(a3, LODWORD(a2));
    if (*v5 != 1)
    {
      v39 = a5;
      v10 = ((a2 * 0.088302) + (*&a3 * 0.28172)) + (a4 * 0.62998);
      v11 = vadd_f32(vadd_f32(vmul_n_f32(0x3E58FD3B3ED30EB1, a2), vmul_lane_f32(0x3F2E42533F094D17, __PAIR64__(a3, LODWORD(a2)), 1)), vmul_n_f32(0x3DDBF2F03D52B909, a4));
      v12 = vabs_f32(v11);
      v30 = v12.f32[0];
      v34 = powf(v12.f32[1], 0.33333);
      *v13.i32 = powf(v30, 0.33333);
      *&v13.i32[1] = v34;
      v35 = vbsl_s8(0x8000000080000000, v13, v11);
      v14 = powf(fabsf(v10), 0.33333);
      v15 = copysignf(v14, v10);
      v9 = v35;
      a5 = v39;
      a4 = v15;
    }
  }

  else
  {
    v16 = -a2;
    if (v7 > 0.0)
    {
      v16 = v7;
    }

    if (v16 <= 0.0031308)
    {
      v17 = v16 * 12.92;
    }

    else
    {
      v17 = 1.0;
      if (v16 != 1.0)
      {
        v36 = v7;
        v40 = a5;
        v27 = v6;
        v31 = a4;
        v18 = powf(v16, 0.41667);
        a4 = v31;
        v7 = v36;
        v6 = v27;
        a5 = v40;
        v17 = (v18 * 1.055) + -0.055;
      }
    }

    if (v7 <= 0.0)
    {
      v9.f32[0] = -v17;
    }

    else
    {
      v9.f32[0] = v17;
    }

    v19 = -v6;
    if (v6 > 0.0)
    {
      v19 = v6;
    }

    if (v19 <= 0.0031308)
    {
      v20 = v19 * 12.92;
    }

    else
    {
      v20 = 1.0;
      if (v19 != 1.0)
      {
        v37 = v9.i32[0];
        v41 = a5;
        v28 = v6;
        v32 = a4;
        v21 = powf(v19, 0.41667);
        v6 = v28;
        a4 = v32;
        v9.i32[0] = v37;
        a5 = v41;
        v20 = (v21 * 1.055) + -0.055;
      }
    }

    if (v6 <= 0.0)
    {
      v22 = -v20;
    }

    else
    {
      v22 = v20;
    }

    v23 = -a4;
    if (a4 > 0.0)
    {
      v23 = a4;
    }

    if (v23 <= 0.0031308)
    {
      v24 = v23 * 12.92;
    }

    else
    {
      v24 = 1.0;
      if (v23 != 1.0)
      {
        v38 = v9.i32[0];
        v42 = a5;
        v29 = v22;
        v33 = a4;
        v25 = powf(v23, 0.41667);
        v22 = v29;
        a4 = v33;
        v9.i32[0] = v38;
        a5 = v42;
        v24 = (v25 * 1.055) + -0.055;
      }
    }

    v9.f32[1] = v22;
    if (a4 <= 0.0)
    {
      a4 = -v24;
    }

    else
    {
      a4 = v24;
    }
  }

  *a1 = vmul_n_f32(v9, a5);
  result = a4 * a5;
  a1[1].f32[0] = a4 * a5;
  a1[1].f32[1] = a5;
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Any?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(a1 + 2);
  v11 = *a1;
  v12 = v5;
  v7 = v3;
  v8 = 0;
  v9 = v4;
  v10 = 0;
  return LayoutProxy.dimensions(in:)(&v7, a2);
}

void type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCyyXlGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *assignWithCopy for _ForegroundColorModifier(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t TrackedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  PropertyList.subscript.getter(v5, a1, v5, v4);
  LOBYTE(a1) = (*(v4 + 24))(v2, v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return a1 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyGradient(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 1;
  }

  else
  {
    return (*(**a1 + 88))() & 1;
  }
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance ResolvedColorProvider@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined copy of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

uint64_t SecondaryLayerGeometryQuery.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = *MEMORY[0x1E698D3F8];
  if (v1[4] == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v7 = *Value;
  v8 = Value[1];

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  v13 = v9[3];
  if (v3 == v5)
  {
    if (one-time initialization token for center != -1)
    {
      swift_once();
    }

    v14 = &static Alignment.center;
  }

  else
  {
    v14 = AGGraphGetValue();
  }

  v16 = *v14;
  v15 = v14[1];
  type metadata accessor for CGPoint(0);
  v17 = AGGraphGetValue();
  v18 = *v17;
  v50 = v17[1];
  ViewDimensions.subscript.getter(v16);
  v20 = v19;
  v51 = v7;
  v52 = v8;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  ViewDimensions.subscript.getter(v15);
  v49 = v21;
  if (v4 == v5)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v22 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v22 = AGGraphGetValue();
  }

  v23 = *v22;
  v24 = v22[1];

  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = v25[1];
  v28 = one-time initialization token for lockAssertionsAreEnabled;

  if (v28 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_22;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_22:
    v46 = v13;
    v47 = v12;
    v48 = v11;
    v29 = v10;
    v30 = v18 + v20;
    v51 = v26;
    LOBYTE(v52) = 0;
    v53 = v27;
    LOBYTE(v54) = 0;
    v31 = (*(*v23 + 120))(&v51);
    v33 = v32;
    v51 = v23;
    v52 = v24;
    v53 = v31;
    v54 = v32;
    v55 = v26;
    v56 = v27;
    ViewDimensions.subscript.getter(v16);
    v35 = v34;
    v51 = v23;
    v52 = v24;
    v53 = v31;
    v54 = v33;
    v55 = v26;
    v56 = v27;
    ViewDimensions.subscript.getter(v15);
    v37 = v36;
    v38 = v30 - v35;

    if (*AGGraphGetValue() == 1)
    {
      v39 = *AGGraphGetValue();
      if (one-time initialization token for center != -1)
      {
        swift_once();
      }

      v40 = static HorizontalAlignment.center;
      v51 = v7;
      v52 = v8;
      v53 = v29;
      v54 = v48;
      v55 = v47;
      v56 = v46;
      ViewDimensions.subscript.getter(static HorizontalAlignment.center);
      v42 = v39 + v41;
      v51 = v23;
      v52 = v24;
      v53 = v31;
      v54 = v33;
      v55 = v26;
      v56 = v27;
      ViewDimensions.subscript.getter(v40);
      v44 = v43;

      v38 = v42 - v44 + v42 - v44 - v38;
    }

    else
    {
    }

    *a1 = v38;
    *(a1 + 8) = v50 + v49 - v37;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v31;
    *(a1 + 40) = v33;
    *(a1 + 48) = v26;
    *(a1 + 56) = v27;
  }

  return result;
}

uint64_t _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(unint64_t a1)
{

  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v2) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v6);
  if (v7)
  {
    v3 = v8;
  }

  else
  {
    v3 = &protocol witness table for DefaultFallbackFontProvider;
  }

  v6[0] = a1;
  v4 = (v3[1])(v6);

  return v4;
}

uint64_t protocol witness for static FallbackFontProvider.makeFont(in:) in conformance DefaultFallbackFontProvider()
{
  if (one-time initialization token for body != -1)
  {
    swift_once();
  }
}

unint64_t specialized LazyMapSequence.Iterator.next()()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = LayoutSubviews.subscript.getter(v0[3], &v8);
  if (v2 >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v4 = v8;
    v5 = v9;
    v0[3] = v2 + 1;
    v6 = v0[4];
    v8 = v4;
    v9 = v5;
    v6(&v7, &v8);
    return v7;
  }

  return result;
}

uint64_t closure #1 in _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)@<X0>(void *a1@<X8>)
{
  result = LayoutProxy.layoutPriority.getter();
  *a1 = v3;
  return result;
}

uint64_t LayoutProxy.layoutPriority.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v2 + 88))();
  }

  return result;
}

uint64_t specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[41] = *MEMORY[0x1E69E9840];
  v20[0] = a6;
  v20[1] = a7;
  v20[4] = v20;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;

    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);
      v24[0] = v13;
      v24[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, a3, a4, a5, v24);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v24, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>, &v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24[41] = *MEMORY[0x1E69E9840];
  v20[0] = a6;
  v20[1] = a7;
  v20[4] = v20;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);

      v24[0] = v13;
      v24[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, a3, a4, a5, v24);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v24, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, &v19);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v24[41] = *MEMORY[0x1E69E9840];
  v20[0] = a6;
  v20[1] = a7;
  v20[4] = v20;
  v20[5] = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v13 = *OutputValue;
    v14 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v15 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v15 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<ZStackLayout>, lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout, &type metadata for ZStackLayout, type metadata accessor for ViewLayoutEngine);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(*v13 + 80))(v17);

      v24[0] = v13;
      v24[1] = v14 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm(a6, a7, a3, a4, a5, v24);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm(v24, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<ZStackLayout>>, &v19);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t outlined init with copy of LazyFilterSequence<LayoutSubviews>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyFilterSequence<LayoutSubviews>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL partial apply for closure #2 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v1 = *(v0 + 16);
  LayoutProxy.layoutPriority.getter();
  return v2 == v1;
}

uint64_t specialized DynamicLayoutComputer.updateValue()(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  Value = AGGraphGetValue();
  result = *(v2 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 4);
    v8 = *Value;
    v7 = Value[1];
    v9 = AGGraphGetValue();
    v10 = *(v9 + 8);
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v13 = *(v9 + 44);
    v15[0] = *v9;
    v15[1] = v10;
    v16 = *(v9 + 16);
    v17 = v11;
    v18 = v12;
    v19 = v13;

    v14 = specialized DynamicLayoutMap.attributes(info:)(v15);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v8, v7, v6, v14, a2);
  }

  return result;
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = result | (result << 32);

    a5(v5, v13, a3, v12, a4, a1, a2);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = result | (result << 32);

    a5(v5, v13, a3, v12, a4, a1, a2);
  }

  return result;
}

void type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>)
  {
    type metadata accessor for LazyFilterSequence<LayoutSubviews>();
    lazy protocol witness table accessor for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>();
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
    }
  }
}

uint64_t _ZStackLayout.spacing(subviews:cache:)@<X0>(int *a1@<X0>, int64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  LODWORD(v70) = *a1;
  *(&v70 + 1) = v4;
  v71 = v5;
  v72 = v6;
  v73 = 0;
  v74 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
  v75 = 0;
  swift_bridgeObjectRetain_n();
  v7 = specialized LazyMapSequence.Iterator.next()();
  if (v8)
  {

    v9 = 0.0;
  }

  else
  {
    v10 = *&v7;
    v11 = v73;
    v12 = *(v4 + 16);
    if (v73 != v12)
    {
      v13 = v4 + 32 + 12 * v73;
      v9 = *&v7;
      while (1)
      {
        if (v5)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          v14 = v13;
          if (v11 >= v12)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v11 >= v12)
          {
            goto LABEL_78;
          }

          v14 = (v4 + 32 + 8 * v11);
        }

        if (v11 >= v12)
        {
          break;
        }

        ++v11;
        v76 = v3;
        v77 = *v14;
        LayoutProxy.layoutPriority.getter();
        if (v10 < v15)
        {
          v9 = v15;
          v10 = v15;
        }

        v12 = *(v4 + 16);
        v13 += 12;
        if (v11 == v12)
        {
          goto LABEL_17;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v9 = *&v7;
LABEL_17:
    v73 = v11;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = *(v4 + 16);

  if (!v17)
  {
LABEL_29:
    if (one-time initialization token for zero == -1)
    {
LABEL_30:
      v23 = static ViewSpacing.zero;
      v24 = byte_1ED52A120;

      *a2 = v23;
      *(a2 + 8) = v24;
      return result;
    }

LABEL_82:
    swift_once();
    goto LABEL_30;
  }

  v18 = 0;
  v19 = (v4 + 32);
  v69 = v4 + 32;
  while (1)
  {
    if (v5)
    {
      if (v18 >= v17)
      {
        goto LABEL_73;
      }

      v20 = (v69 + 12 * v18);
    }

    else
    {
      v20 = v19;
      if (v18 >= v17)
      {
        goto LABEL_72;
      }
    }

    v21 = *(v16 + 16);
    LODWORD(v70) = v3;
    *(&v70 + 4) = *v20;
    LayoutProxy.layoutPriority.getter();
    v17 = *(v4 + 16);
    if (v22 == v21)
    {
      break;
    }

    if (v18 >= v17)
    {
      __break(1u);
      goto LABEL_71;
    }

    ++v18;
    ++v19;
    if (v18 == v17)
    {
      goto LABEL_29;
    }
  }

  if (v18 == v17)
  {
    goto LABEL_29;
  }

  v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v58 = *MEMORY[0x1E698D3F8];

  v26 = 0;
  v27 = v4 + 32;
LABEL_32:
  v28 = (v27 + 12 * v26);
  do
  {
    v29 = *(v4 + 16);
    if (v26 == v29)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v61;
      *(a2 + 8) = v6;
      return result;
    }

    if (v5)
    {
      v30 = v28;
      if (v26 >= v29)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v26 >= v29)
      {
        goto LABEL_80;
      }

      v30 = (v69 + 8 * v26);
    }

    if (v26 >= v29)
    {
      goto LABEL_74;
    }

    v28 = (v28 + 12);
    ++v26;
    v31 = *(v16 + 16);
    LODWORD(v70) = v3;
    v67 = *v30;
    *(&v70 + 4) = *v30;
    LayoutProxy.layoutPriority.getter();
  }

  while (v32 != v31);
  if (v67 == v58)
  {
    InputValue = &static LayoutComputer.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
      InputValue = &static LayoutComputer.defaultValue;
    }
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v34 = *InputValue;
  v35 = one-time initialization token for lockAssertionsAreEnabled;

  if (v35 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_51;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_51:
    v60 = v6;
    v57 = a2;
    (*(*v34 + 112))(&v70);

    v36 = v70;
    v59 = v70 + 64;
    v37 = 1 << *(v70 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v70 + 64);
    v40 = (v37 + 63) >> 6;

    v41 = v40;
    a2 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    v62 = v36;
    v63 = v41;
    while (v39)
    {
LABEL_61:
      v44 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v45 = v44 | (a2 << 6);
      v46 = *(v36 + 48) + 16 * v45;
      v47 = *(v46 + 8);
      if (v47 > 8 || (v47 & 4) == 0)
      {
        v68 = *v46;
        v48 = *(v36 + 56) + 40 * v45;
        v65 = *(v48 + 16);
        v66 = *v48;
        v49 = *(v48 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = v42;
        v64 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1);
          v42 = v70;
        }

        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        v53 = v52 + 1;
        v41 = v63;
        if (v52 >= v51 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
          v53 = v52 + 1;
          v41 = v63;
          v42 = v70;
        }

        *(v42 + 16) = v53;
        v54 = v42 + 56 * v52;
        *(v54 + 32) = v68;
        *(v54 + 40) = v47;
        *(v54 + 48) = v66;
        *(v54 + 64) = v65;
        *(v54 + 80) = v64;
        v36 = v62;
      }
    }

    v6 = v60;
    while (1)
    {
      v43 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v43 >= v41)
      {

        v55 = specialized _arrayForceCast<A, B>(_:)(v42);

        v56 = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = v61;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v55, v56, specialized max<A>(_:_:));
        v61 = v70;

        a2 = v57;
        v27 = v4 + 32;
        goto LABEL_32;
      }

      v39 = *(v59 + 8 * v43);
      ++a2;
      if (v39)
      {
        a2 = v43;
        goto LABEL_61;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5)
{
  v7 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v7;
  v32 = *(a1 + 40);
  v45 = *(a1 + 32);
  v44 = v45;
  v35 = *(&v7 + 1);
  v8 = v43[0];
  v9 = *(&v43[0] + 1);
  v10 = v7;
  v11 = BYTE1(v7);
  outlined init with copy of LazyFilterSequence<LayoutSubviews>(v43, &v36);

  v13 = *(v9 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v11 & 1;
    v16 = v9 + 32;
    v17 = v9 + 40;
    do
    {
      v18 = (v16 + 8 * v14);
      v19 = (v17 + 12 * v14);
      while (1)
      {
        if (v10)
        {
          if (v14 >= v13)
          {
            goto LABEL_22;
          }

          v20 = (v9 + 32 + 12 * v14);
          v21 = *v19;
        }

        else
        {
          if (v14 >= v13)
          {
            goto LABEL_21;
          }

          v20 = v18;
          v21 = v14;
        }

        if (v14 >= v13)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v22 = v14 + 1;
        LODWORD(v36) = v8;
        *(&v36 + 4) = *v20;
        HIDWORD(v36) = v21;
        LOBYTE(v37) = v15;
        result = v35(&v36);
        if (result)
        {
          break;
        }

        v13 = *(v9 + 16);
        ++v18;
        v19 += 3;
        ++v14;
        if (v22 == v13)
        {
          goto LABEL_19;
        }
      }

      v41 = v36;
      v42 = v37;
      v32(&v36, &v41);
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = v40;
      ViewDimensions.subscript.getter(a2);
      if (a4 <= v28)
      {
        a4 = v28;
      }

      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      v40 = v27;
      ViewDimensions.subscript.getter(a3);
      v30 = v29;

      if (a5 <= v30)
      {
        a5 = v30;
      }

      v13 = *(v9 + 16);
      v31 = v13 - 1 == v14++;
      v16 = v9 + 32;
      v17 = v9 + 40;
    }

    while (!v31);
  }

LABEL_19:
}

unint64_t lazy protocol witness table accessor for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>()
{
  result = lazy protocol witness table cache variable for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>;
  if (!lazy protocol witness table cache variable for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>)
  {
    type metadata accessor for LazyFilterSequence<LayoutSubviews>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFilterSequence<LayoutSubviews> and conformance LazyFilterSequence<A>);
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_ZStackLayout>>);
    }
  }
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_ZStackC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 344) = v11;
    *(v8 + 348) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x148uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_ZStackD0V_Tt3B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::UInt32 a3@<W3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 1;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 1;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 1;
  *(a6 + 208) = 0u;
  *(a6 + 224) = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(a6 + 320) = 0;
  *(a6 + 248) = 0;
  *(a6 + 256) = 0;
  *(a6 + 240) = v9;
  *(a6 + 264) = 0;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  *(a6 + 288) = 0;
  *(a6 + 296) = 0;
  *(a6 + 304) = 0;
  *(a6 + 312) = 0;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v10 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a6 + 32) = v10;
  *a6 = a1;
  *(a6 + 8) = a2;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

BOOL CoreColorDependsOnEnvironment(void *a1, char a2)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __CoreColorDependsOnEnvironment_block_invoke;
  v8 = &__block_descriptor_41_e5_v8__0l;
  LOBYTE(v10) = a2;
  v9 = sel_resolvedColorWithTraitCollection_;
  if (CoreColorDependsOnEnvironment_once != -1)
  {
    dispatch_once(&CoreColorDependsOnEnvironment_once, &v5);
  }

  v3 = [a1 methodForSelector:{sel_resolvedColorWithTraitCollection_, v5, v6, v7, v8, v9, v10}];
  return v3 != CoreColorDependsOnEnvironment_CoreColor_imp;
}

uint64_t __CoreColorDependsOnEnvironment_block_invoke(uint64_t a1)
{
  result = [CoreColorClass(*(a1 + 40)) instanceMethodForSelector:*(a1 + 32)];
  CoreColorDependsOnEnvironment_CoreColor_imp = result;
  return result;
}

Class __CoreColorClass_block_invoke(Class result)
{
  if (!*(result + 32))
  {
    result = NSClassFromString(&cfstr_Uicolor.isa);
    CoreColorClass_uiClass = result;
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>);
    }
  }
}

uint64_t FontBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t PreferenceValues.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PreferenceValues.Value();
  v13 = type metadata accessor for Optional();
  v24 = *(v13 - 8);
  v25 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v31 = *v4;
  v16 = v31;
  v31 = PreferenceValues.index<A>(of:)(a1);
  v32 = v17 & 1;
  v28 = a2;
  v29 = a3;
  v30 = v16;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PreferenceValues.subscript.getter, v27, MEMORY[0x1E69E73E0], v12, v18, v15);
  v19 = *(v12 - 8);
  v20 = *(v19 + 48);
  if (v20(v15, 1, v12) != 1)
  {
    return (*(v19 + 32))(v26, v15, v12);
  }

  (*(a3 + 16))(a2, a3);
  v21 = v26;
  (*(v9 + 32))(v26, v11, AssociatedTypeWitness);
  *(v21 + *(type metadata accessor for PreferenceValues.Value() + 28)) = 0;
  result = (v20)(v15, 1, v12);
  if (result != 1)
  {
    return (*(v24 + 8))(v15, v25);
  }

  return result;
}

unint64_t PreferenceValues.index<A>(of:)(uint64_t a1)
{
  v3 = *v1;
  result = PreferenceValues._index(of:)(a1);
  v5 = *(v3 + 16);
  if (result == v5)
  {
    return 0;
  }

  if (result >= v5)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + 56 * result + 32) != a1)
  {
    return 0;
  }

  return result;
}

unsigned int *storeEnumTagSinglePayload for _OpacityShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _OpacityShapeStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>>);
    }
  }
}

uint64_t specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, _OWORD *))
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  a3(v10, v8);
  v6 = v10[1];
  *a1 = v10[0];
  a1[1] = v6;
  return 1;
}

uint64_t closure #1 in compareValues<A>(_:_:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a1;
  v10 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:), v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for ForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v71 = a3;
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v11 = *(a1 + 5);
  v12 = *(a1 + 6);
  v14 = *(a1 + 7);
  v13 = *(a1 + 8);
  if (!(v13 >> 30))
  {
    if (v11 >> 60 == 4)
    {
      v29 = *(**((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x38) + 120);
      v30 = outlined copy of DisplayList.Content.Value(*(a1 + 5));
      if ((v29(v30) & 1) == 0)
      {
        v31 = *(a1 + 4);
        if (v31)
        {
          v32 = (2 * ((33 * WORD1(v31)) ^ v31)) | 1;
        }

        else
        {
          v32 = 0;
        }

        LOWORD(v84[0]) = v32;
        DisplayList.Item.addDrawingGroup(contentSeed:)(v84);
      }

      outlined consume of DisplayList.Item.Value(v11, v12, v14, v13);
    }

    goto LABEL_22;
  }

  if (v13 >> 30 != 1)
  {
    goto LABEL_22;
  }

  if (BYTE4(v12) == 1)
  {
    v34 = swift_projectBox();
    outlined init with copy of DisplayList.ArchiveIDs?(v34, v10);
    v35 = type metadata accessor for DisplayList.ArchiveIDs();
    v36 = (*(*(v35 - 8) + 48))(v10, 1, v35) != 1;
    DisplayList.Index.updateArchive(entering:)(v36);
    outlined destroy of DisplayList.ArchiveIDs?(v10);
    goto LABEL_22;
  }

  if (BYTE4(v12) == 10)
  {
    memmove(v84, (v11 + 16), 0x7CuLL);
    if (_s7SwiftUI14GraphicsFilterOWOg(v84) == 18)
    {
      _s7SwiftUI14GraphicsFilterOWOj17_(v84);
      v33 = *(a1 + 4);
      if (v33)
      {
        LODWORD(v33) = (2 * ((33 * (v33 >> 16)) ^ v33)) | 1;
      }

      LOWORD(v72) = v33;
      DisplayList.Item.addDrawingGroup(contentSeed:)(&v72);
    }

    goto LABEL_22;
  }

  if (BYTE4(v12) != 11)
  {
LABEL_22:
    *a4 = 0x7FF0000000000000;
    return;
  }

  v15 = *a2;
  outlined init with copy of AnyTrackedValue(v11 + 16, v81);
  v16 = *(*v71 + 8);
  v17 = v14;
  v19 = v4[8];
  v18 = v4[9];
  v66 = v17;
  outlined copy of DisplayList.Item.Value(v11, v12, v17, v13);
  outlined copy of DisplayList.Effect(v11, v12, 11);
  LODWORD(v65) = swift_isUniquelyReferenced_nonNull_native();
  v69 = v15;
  v70 = v4;
  v20 = v4[3];
  v84[0] = v20;
  v67 = v18;
  v68 = v19;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18, v15 & 3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v15) = v21;
  if (v20[3] >= v25)
  {
    v28 = v70;
    v18 = v66;
    if (v65)
    {
      goto LABEL_24;
    }

LABEL_39:
    v62 = v22;
    specialized _NativeDictionary.copy()();
    v22 = v62;
    v28 = v70;
    v20 = v84[0];
    goto LABEL_24;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v65);
  v20 = v84[0];
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v67, v69 & 3);
  v18 = v66;
  if ((v15 & 1) != (v27 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_41;
  }

  v22 = v26;
  v28 = v70;
LABEL_24:
  *(v28 + 24) = v20;
  if ((v15 & 1) == 0)
  {
    memset(v84, 0, sizeof(v84));
    v85 = 2;
    v86 = 0;
    v37 = v22;
    specialized _NativeDictionary._insert(at:key:value:)(v22, v68, v67, v69 & 3, v84, v20);
    v22 = v37;
  }

  v38 = v20[7] + 56 * v22;
  outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38, v84);
  v70 = v38;
  if (v85 == 2 && (v39 = vorrq_s8(*&v84[1], *&v84[3]), !(*&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | v84[0])))
  {
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84);
    v60 = v82;
    v61 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    (*(v61 + 32))(v84, v60, v61);
    v38 = v70;
    v85 = 0;
    outlined assign with take of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84, v70);
  }

  else
  {
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v84);
  }

  outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38, v84);
  if (!v85)
  {
    outlined init with take of _ViewList_Elements(v84, v78);
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(v38);
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0;
    *(v38 + 40) = 2;
    v77 = v16;
    v40 = a1[2];
    v41 = a1[3];
    v42 = v79;
    v43 = v80;
    __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    LODWORD(v69) = (*(v43 + 8))(&v72, v81, &v77, v42, v43, v40, v41);
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v67 = v13 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
    v68 = v73 | (v74 << 32);
    v47 = *(a1 + 5);
    v65 = *(a1 + 6);
    v66 = v47;
    v48 = *(a1 + 7);
    v63 = *(a1 + 8);
    v64 = v48;
    outlined copy of DisplayList.Effect(v72, v73, v74);

    outlined consume of DisplayList.Item.Value(v66, v65, v64, v63);
    v49 = v67;
    v50 = v68;
    *(a1 + 5) = v44;
    *(a1 + 6) = v50;
    *(a1 + 7) = v18;
    *(a1 + 8) = v49;
    v51 = *(*v71 + 16);
    *(a1 + 4) = v51;
    if (v69)
    {
      v72 = v44;
      v73 = v45;
      v74 = v46;
      v75 = v51;
      v52 = 1;
      v53 = 0x7FF0000000000000;
    }

    else
    {
      outlined consume of DisplayList.Effect(v44, v45, v46);
      outlined init with copy of AnyTrackedValue(v78, &v72);
      v52 = 0;
      v53 = v16;
    }

    v76 = v52;
    v59 = v70;
    outlined assign with take of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(&v72, v70);
    __swift_destroy_boxed_opaque_existential_1(v78);
    goto LABEL_36;
  }

  if (v85 == 1)
  {
    v71 = v84[0];
    v68 = LODWORD(v84[1]) | (BYTE4(v84[1]) << 32);
    v69 = v84[2];
    v54 = *(a1 + 5);
    v55 = *(a1 + 6);
    v56 = *(a1 + 7);
    v66 = *(a1 + 8);
    v67 = v13 & 0xFFFFFFFF0000FFFFLL | 0x40000000;

    outlined consume of DisplayList.Item.Value(v54, v55, v56, v66);
    v57 = v67;
    *(a1 + 6) = v68;
    *(a1 + 7) = v18;
    *(a1 + 8) = v57;
    v53 = 0x7FF0000000000000;
    v59 = v70;
    v58 = v71;
    *(a1 + 4) = v69;
    *(a1 + 5) = v58;
LABEL_36:
    *(v59 + 48) = v16;
    outlined consume of DisplayList.Item.Value(v11, v12, v18, v13);
    *a4 = v53;
    __swift_destroy_boxed_opaque_existential_1(v81);
    outlined consume of DisplayList.Effect(v11, v12, 11);
    return;
  }

LABEL_41:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t outlined consume of DisplayList.Content.Value(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

void *_setThreadGeometryProxyData()
{
  result = _perThreadGeometryProxyData();
  *result = v1;
  return result;
}

uint64_t outlined consume of DisplayList.Effect(uint64_t result, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      result = outlined consume of GraphicsBlendMode(result, a2 & 1);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined copy of DisplayList.Effect(uint64_t result, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      result = outlined copy of GraphicsBlendMode(result, a2 & 1);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined consume of DisplayList.Item.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {

      return outlined consume of DisplayList.Content.Value(result);
    }

    outlined consume of DisplayList.Effect(result, a2, SBYTE4(a2));
  }
}

uint64_t outlined copy of DisplayList.Item.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {

      return outlined copy of DisplayList.Content.Value(result);
    }

    outlined copy of DisplayList.Effect(result, a2, SBYTE4(a2));
  }
}

uint64_t outlined init with copy of DisplayList.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  outlined copy of DisplayList.Item.Value(v5, v6, v7, v8);
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = *(a1 + 72);
  return a2;
}

void DisplayList.Item.canonicalize(options:)(__int8 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    return;
  }

  v4 = v1 + 5;
  v3 = v1[5];
  v5 = v1[8];
  if ((v5 >> 30) - 2 < 2)
  {
    return;
  }

  v6 = v1[6];
  v8 = (v1 + 7);
  p_rect = v1[7];
  if (v5 >> 30)
  {
    v15 = HIDWORD(v6);
    v155 = v1[8];
    if (*(p_rect + 2))
    {
      v16 = v1[6];
      outlined copy of DisplayList.Effect(v3, v6, SBYTE4(v6));

      goto LABEL_9;
    }

    if (BYTE4(v6) > 0xAu)
    {
      if (BYTE4(v6) <= 0x12u)
      {
        if (((1 << SBYTE4(v6)) & 0x2A800) != 0)
        {
          v16 = v1[6];
          outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
LABEL_25:

          LOBYTE(v6) = v16;
LABEL_85:
          v76 = v3;
          v77 = v6;
          v78 = v15;
LABEL_86:
          outlined consume of DisplayList.Effect(v76, v77, v78);
          goto LABEL_87;
        }

        if (BYTE4(v6) == 18)
        {
          (*(*v3 + 112))(&v178);
          v15 = HIDWORD(v6);
LABEL_61:
          v154 = p_rect;
          outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
          goto LABEL_69;
        }
      }

LABEL_84:
      outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);

      goto LABEL_85;
    }

    switch(BYTE4(v6))
    {
      case 2u:
        if ((v3 & 4) != 0)
        {
          if ((v3 & 0x200) == 0)
          {
            goto LABEL_61;
          }

          v16 = v1[6];
          LOBYTE(v42) = 1;
        }

        else
        {
          if ((v3 & 0x200) == 0)
          {
            outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);

            v76 = v3;
            v77 = v6;
            v78 = 2;
            goto LABEL_86;
          }

          v16 = v1[6];
          LOBYTE(v42) = 0;
        }

        v43 = v1[5];
        v41 = v16;
        break;
      case 3u:
        outlined init with copy of AnyTrackedValue(v3 + 16, &v178);
        v152 = *(&v179 + 1);
        v16 = v180;
        v144 = v180;
        __swift_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
        v151 = *(v16 + 56);
        LODWORD(v16) = v6;
        outlined copy of DisplayList.Item.Value(v3, v6, p_rect, v5);
        v151(&v172, v152, v144);
        v85 = v172.i8[0];
        __swift_destroy_boxed_opaque_existential_1(&v178);
        if ((v85 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_9:
        v154 = p_rect;
        p_rect = &rect;
        if (v15 <= 8u)
        {
          LOBYTE(v6) = v16;
          if (v15 != 4)
          {
            if (v15 == 6)
            {
              v65 = *(v3 + 32);
              v191 = *(v3 + 16);
              v192 = v65;
              LOBYTE(v193) = *(v3 + 48);
              if (!*(v3 + 52))
              {
                v152 = HIDWORD(v5);
                v153 = v15;
                LOBYTE(p_rect) = *(v3 + 49);
                LOBYTE(v29) = *(v3 + 50);
                v86 = *(v3 + 32);
                rect = *(v3 + 16);
                v185 = v86;
                LOBYTE(v186) = *(v3 + 48);
                v87 = rect;
                v88 = v186 == 2;
                if (v186 >= 2u)
                {
                  goto LABEL_138;
                }

                v198.size.height = *(&v185 + 1);
                *&v198.origin.x = rect;
                *&v198.size.width = v185;
                v198.origin.y = *(&rect + 1);
                if (!CGRectIsInfinite(v198))
                {
                  goto LABEL_143;
                }

                goto LABEL_141;
              }
            }

            else if (v15 == 7)
            {
              v153 = v15;
              v15 = *(v3 + 16);
              LODWORD(v152) = *(v3 + 32);
              if (v152 || *(v154 + 2) != 1)
              {
              }

              else
              {
                v143 = *(v3 + 24);
                v142 = *(v3 + 28);
                v36 = *(v1 + 2);
                v35 = *(v1 + 3);
                v37 = v154[3];
                v38 = v154[5];
                v160 = v154[4];
                *v161 = v38;
                *&v161[12] = *(v154 + 92);
                v39 = v154[3];
                v158 = v154[2];
                v159 = v37;
                v40 = v154[5];
                v186 = v154[4];
                *v187 = v40;
                *&v187[12] = *(v154 + 92);
                rect = v154[2];
                v185 = v39;

                outlined init with copy of DisplayList.Item(&v158, &v191);
                DisplayList.Item.backdropFilter(size:)(&v172, v36, v35);
                v168 = v186;
                *v169 = *v187;
                *&v169[12] = *&v187[12];
                v166 = rect;
                v167 = v185;
                outlined destroy of DisplayList.Item(v166.i64);
                *&v181[16] = *&v175[16];
                v182 = v176;
                v183[0] = v177[0];
                *(v183 + 12) = *(v177 + 12);
                v178 = v172;
                v179 = v173;
                v180 = v174;
                *v181 = *v175;
                if (_s7SwiftUI14GraphicsFilterOSgWOg(&v178) != 1)
                {
                  v120 = swift_allocObject();
                  v121 = v182;
                  v120[5] = *&v181[16];
                  v120[6] = v121;
                  v120[7] = v183[0];
                  *(v120 + 124) = *(v183 + 12);
                  v122 = v179;
                  v120[1] = v178;
                  v120[2] = v122;
                  v123 = *v181;
                  v120[3] = v180;
                  v120[4] = v123;
                  p_rect = (v143 | (v142 << 32) | 0x40000000);
                  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

                  v1[5] = v120;
                  v1[6] = 0xA00000000;
                  v1[7] = v15;
                  v1[8] = p_rect;
                  LOBYTE(v15) = v153;
                  goto LABEL_70;
                }
              }

              if (*(v15 + 16) != 1)
              {

                goto LABEL_147;
              }

              v150 = v1;
              v80 = *(v15 + 48);
              v81 = *(v15 + 80);
              v174 = *(v15 + 64);
              *v175 = v81;
              p_rect = &v172;
              *&v175[12] = *(v15 + 92);
              v82 = *(v15 + 48);
              v172 = *(v15 + 32);
              v173 = v80;
              v83 = *(v15 + 80);
              v168 = *(v15 + 64);
              *v169 = v83;
              *&v169[12] = *(v15 + 92);
              v166 = *(v15 + 32);
              v167 = v82;
              outlined init with copy of DisplayList.Item(&v172, &v158);
              DisplayList.Item.opaqueContentPath()(&v158);
              v180 = v168;
              *v181 = *v169;
              *&v181[12] = *&v169[12];
              v178 = v166;
              v179 = v167;
              outlined destroy of DisplayList.Item(v178.i64);

              v84 = BYTE1(v160);
              if (BYTE1(v160) != 2)
              {
                v104 = BYTE2(v160);
                v105 = v160;
                v106 = swift_allocObject();
                v107 = v159;
                *(v106 + 16) = v158;
                *(v106 + 32) = v107;
                *(v106 + 48) = v105;
                *(v106 + 49) = v84 & 1;
                *(v106 + 50) = v104 & 1;
                *(v106 + 52) = v152;
                v152 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
                v1 = v150;
                v108 = v150[5];
                p_rect = v150[6];
                v109 = v150[7];
                v145 = v150[8];

                outlined init with copy of (Path, FillStyle)?(&v158, &v166);
                outlined consume of DisplayList.Item.Value(v108, p_rect, v109, v145);
                v150[5] = v106;
                v150[6] = 0x600000000;
                v150[7] = v154;
                v150[8] = v152;
                v166.i8[0] = v2;
                DisplayList.Item.canonicalize(options:)(&v166);
                outlined destroy of (Path, FillStyle)?(&v158);
                goto LABEL_147;
              }

              goto LABEL_92;
            }

            goto LABEL_69;
          }

          if (*&v3 < 1.0)
          {
            goto LABEL_69;
          }

          v148 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
          v152 = HIDWORD(v5);
          v57 = v15;
          v5 = v1[5];
          v15 = v1[6];
          p_rect = v1[7];
          v58 = v1[8];

          v59 = v15;
          LOBYTE(v15) = v57;
          outlined consume of DisplayList.Item.Value(v5, v59, p_rect, v58);
          *(v1 + 5) = xmmword_18DDA6ED0;
          v1[7] = v154;
          v1[8] = v148;
          v178.i64[0] = v154;
          LOBYTE(v5) = v155;
          v178.i16[4] = v155;
          v178.i32[3] = v152;
          v60 = &v178;
        }

        else
        {
          LOBYTE(v6) = v16;
          if (v15 > 0xEu)
          {
            if (v15 != 20 || v3 || v16)
            {
              goto LABEL_69;
            }

            v178.i64[0] = v154;
            v178.i16[4] = v5;
            v178.i32[3] = HIDWORD(v5);
            DisplayList.Item.canonicalizeIdentityEffect(list:)(&v178);
            goto LABEL_42;
          }

          if (v15 != 9)
          {
            if (v15 != 10)
            {
              goto LABEL_69;
            }

            v152 = HIDWORD(v5);
            v153 = v15;
            v17 = *(v3 + 96);
            *&v181[16] = *(v3 + 80);
            v182 = v17;
            v183[0] = *(v3 + 112);
            *(v183 + 12) = *(v3 + 124);
            v18 = *(v3 + 32);
            v178 = *(v3 + 16);
            v179 = v18;
            v19 = *(v3 + 64);
            v180 = *(v3 + 48);
            *v181 = v19;
            v20 = *(v3 + 96);
            *&v175[16] = *(v3 + 80);
            v176 = v20;
            v177[0] = *(v3 + 112);
            *(v177 + 12) = *(v3 + 124);
            v21 = *(v3 + 32);
            v172 = *(v3 + 16);
            v173 = v21;
            v22 = *(v3 + 64);
            v174 = *(v3 + 48);
            *v175 = v22;
            outlined init with copy of GraphicsFilter(&v178, &v166);
            if (GraphicsFilter.isIdentity.getter())
            {
              v23 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
              v5 = v1[5];
              v24 = v1[6];
              p_rect = v1[7];
              v25 = v1[8];

              outlined consume of DisplayList.Item.Value(v5, v24, p_rect, v25);
              *(v1 + 5) = xmmword_18DDA6ED0;
              v1[7] = v154;
              v1[8] = v23;
              v172.i64[0] = v154;
              LOBYTE(v5) = v155;
              v172.i16[4] = v155;
              v172.i32[3] = v152;
              DisplayList.Item.canonicalizeIdentityEffect(list:)(&v172);
              outlined destroy of GraphicsFilter(&v178);
              goto LABEL_142;
            }

            *&v175[16] = *&v181[16];
            v176 = v182;
            v177[0] = v183[0];
            *(v177 + 12) = *(v183 + 12);
            v172 = v178;
            v173 = v179;
            v174 = v180;
            *v175 = *v181;
            outlined init with copy of GraphicsFilter(&v178, &v166);
            specialized _ColorMatrix.init(_:premultiplied:)(&v172, 0, &rect);
            if (v188)
            {
              outlined destroy of GraphicsFilter(&v178);
              goto LABEL_147;
            }

            v193 = v186;
            v194 = *v187;
            v195 = *&v187[16];
            v191 = rect;
            v192 = v185;
            if (*(v154 + 2) == 1)
            {
              v91 = *(v1 + 2);
              v90 = *(v1 + 3);
              v92 = v154[3];
              v162 = v154[2];
              v163 = v92;
              v93 = v154[5];
              v164 = v154[4];
              *v165 = v93;
              *&v165[12] = *(v154 + 92);
              v94 = v162;
              v95 = v163;
              outlined init with copy of DisplayList.Item(&v162, &v172);
              v200.origin.x = 0.0;
              v200.origin.y = 0.0;
              v199.origin = v94;
              v199.size = v95;
              v200.size.width = v91;
              v200.size.height = v90;
              if (CGRectEqualToRect(v199, v200))
              {
                v96 = *&v165[16];
                if ((*&v165[16] & 0xC0000000) != 0x40000000 || v165[4] << 32 != 0xA00000000)
                {
                  outlined destroy of GraphicsFilter(&v178);
                  outlined destroy of DisplayList.Item(&v162);

                  goto LABEL_71;
                }

                v97 = *&v165[8];
                v98 = *(*(&v164 + 1) + 96);
                *&v175[16] = *(*(&v164 + 1) + 80);
                v176 = v98;
                v177[0] = *(*(&v164 + 1) + 112);
                *(v177 + 12) = *(*(&v164 + 1) + 124);
                v99 = *(*(&v164 + 1) + 32);
                v172 = *(*(&v164 + 1) + 16);
                v173 = v99;
                v100 = *(*(&v164 + 1) + 64);
                v174 = *(*(&v164 + 1) + 48);
                *v175 = v100;
                v101 = *(*(&v164 + 1) + 96);
                *&v169[16] = *(*(&v164 + 1) + 80);
                v170 = v101;
                v171[0] = *(*(&v164 + 1) + 112);
                *(v171 + 12) = *(*(&v164 + 1) + 124);
                v102 = *(*(&v164 + 1) + 32);
                v166 = *(*(&v164 + 1) + 16);
                v167 = v102;
                v103 = *(*(&v164 + 1) + 64);
                v168 = *(*(&v164 + 1) + 48);
                *v169 = v103;
                outlined init with copy of GraphicsFilter(&v172, &v158);
                specialized _ColorMatrix.init(_:premultiplied:)(&v166, 0, v189);
                if ((v190 & 1) == 0)
                {
                  v160 = v189[2];
                  *v161 = v189[3];
                  *&v161[16] = v189[4];
                  v158 = v189[0];
                  v159 = v189[1];

                  outlined destroy of GraphicsFilter(&v178);
                  outlined destroy of DisplayList.Item(&v162);
                  v15 = swift_allocObject();
                  specialized static _ColorMatrix.* infix(_:_:)(&v191, &v158, &v166, v136);
                  LOBYTE(v170) = 0;
                  _s7SwiftUI14GraphicsFilterOWOi5_(&v166);
                  v137 = v170;
                  *(v15 + 80) = *&v169[16];
                  *(v15 + 96) = v137;
                  *(v15 + 112) = v171[0];
                  *(v15 + 124) = *(v171 + 12);
                  v138 = v167;
                  *(v15 + 16) = v166;
                  *(v15 + 32) = v138;
                  v139 = *v169;
                  *(v15 + 48) = v168;
                  *(v15 + 64) = v139;
                  LOBYTE(p_rect) = v96;
                  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);

                  v1[5] = v15;
                  v1[6] = 0xA00000000;
                  LOBYTE(v15) = v153;
                  v1[7] = v97;
                  v1[8] = v96 & 0xFFFFFFFF4000FFFFLL;
                  goto LABEL_70;
                }

                outlined destroy of GraphicsFilter(&v178);
                outlined destroy of DisplayList.Item(&v162);
LABEL_69:

                goto LABEL_70;
              }

              outlined destroy of GraphicsFilter(&v178);
              outlined destroy of DisplayList.Item(&v162);
            }

            else
            {
              outlined destroy of GraphicsFilter(&v178);
            }

LABEL_42:

            goto LABEL_71;
          }

          if (*(v3 + 88))
          {
            goto LABEL_69;
          }

          v152 = HIDWORD(v5);
          v61 = *(v3 + 32);
          v178 = *(v3 + 16);
          v179 = v61;
          v180 = *(v3 + 48);
          v172 = 0x3FF0000000000000uLL;
          *&v173 = 0;
          *(&v173 + 1) = 0x3FF0000000000000;
          v174 = 0uLL;
          if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_69;
          }

          v149 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
          v62 = v15;
          v5 = v1[5];
          v15 = v1[6];
          p_rect = v1[7];
          v63 = v1[8];

          v64 = v15;
          LOBYTE(v15) = v62;
          outlined consume of DisplayList.Item.Value(v5, v64, p_rect, v63);
          *(v1 + 5) = xmmword_18DDA6ED0;
          v1[7] = v154;
          v1[8] = v149;
          v166.i64[0] = v154;
          LOBYTE(v5) = v155;
          v166.i16[4] = v155;
          v166.i32[3] = v152;
          v60 = &v166;
        }

        DisplayList.Item.canonicalizeIdentityEffect(list:)(v60);

        goto LABEL_71;
      case 7u:
        v41 = v1[6];
        v42 = *(v3 + 24);
        v43 = v1[5];
        LODWORD(v16) = v41;
        break;
      default:
        goto LABEL_84;
    }

    outlined copy of DisplayList.Item.Value(v43, v41, p_rect, v5);
    if ((v42 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 3);
  outlined copy of DisplayList.Content.Value(v1[5]);
  v197.origin.x = v9;
  v197.origin.y = v10;
  v197.size.width = v11;
  v197.size.height = v12;
  if (CGRectIsEmpty(v197))
  {
    v13 = *(v1 + 3);
    v180 = *(v1 + 2);
    *v181 = v13;
    *&v181[12] = *(v1 + 60);
    v14 = *(v1 + 1);
    v178 = *v1;
    v179 = v14;
    DisplayList.Item.features.getter(&v172);
    if ((v172.i8[0] & 1) == 0)
    {
      outlined consume of DisplayList.Item.Value(v3, v6, p_rect, v5);
LABEL_87:
      v51 = v1[5];
      v52 = v1[6];
      v53 = v1[7];
      v79 = v1[8];
LABEL_171:
      outlined consume of DisplayList.Item.Value(v51, v52, v53, v79);
      goto LABEL_172;
    }
  }

  v26 = v3 >> 60;
  if ((v3 >> 60) > 6)
  {
    if (v26 != 7)
    {
      if (v26 == 10)
      {
        v50 = *(*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 216);
        if (!v50 || ![v50 length])
        {
          goto LABEL_57;
        }
      }

      else if (v26 == 11 && !*(*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
LABEL_57:
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        v51 = v3;
        v52 = v6;
        v53 = p_rect;
LABEL_170:
        LODWORD(v79) = v5;
        goto LABEL_171;
      }

      goto LABEL_58;
    }

    v27 = p_rect;
    v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v44 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    p_rect = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v45 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x44);
    if (v30 <= 2)
    {
      if (v30 >= 2)
      {
        v49 = *(v8 + 16);
        v48 = *(v8 + 24);
        v47 = *(v8 + 32);
        v46 = *(v8 + 40);
      }

      else
      {
        v46 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v47 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v48 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v49 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      IsNull = CGRectIsNull(*&v49);
LABEL_160:
      if (!IsNull && v45 != 0.0)
      {
        goto LABEL_162;
      }

      goto LABEL_169;
    }

    if (v30 == 5)
    {
      if (*(v8 + 16))
      {
        if (*(v8 + 16) != 1)
        {
          outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
          outlined copy of Path.Storage(v8, v44, p_rect, v29, 5u);
          if (one-time initialization token for bufferCallbacks != -1)
          {
            swift_once();
          }

          goto LABEL_159;
        }

LABEL_97:
        outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
        outlined copy of Path.Storage(v8, v44, p_rect, v29, 5u);
LABEL_159:
        IsEmpty = RBPathIsEmpty();
        outlined consume of Path.Storage(v8, v44, p_rect, v29, 5u);
        outlined consume of DisplayList.Item.Value(v3, v6, v27, v5);
        IsNull = IsEmpty;
        goto LABEL_160;
      }

      if (*(v8 + 24))
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    goto LABEL_102;
  }

  if (v26 == 1)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x14) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == 0.0 && *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C) == 0.0)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v26 != 4)
  {
LABEL_58:
    v54 = v3;
    v55 = v6;
    v56 = p_rect;
LABEL_163:

    outlined consume of DisplayList.Item.Value(v54, v55, v56, v5);
    return;
  }

  v27 = p_rect;
  v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v28 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  p_rect = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v30 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  if (v30 <= 2)
  {
    if (v30 >= 2)
    {
      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v32 = *(v8 + 32);
      v31 = *(v8 + 40);
    }

    else
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v32 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v33 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    }

    if (!CGRectIsNull(*&v34))
    {
      goto LABEL_162;
    }

    goto LABEL_169;
  }

  if (v30 == 5)
  {
    if (*(v8 + 16))
    {
      if (*(v8 + 16) != 1)
      {
        outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
        outlined copy of Path.Storage(v8, v28, p_rect, v29, 5u);
        if (one-time initialization token for bufferCallbacks != -1)
        {
          swift_once();
        }

LABEL_168:
        v157 = RBPathIsEmpty();
        outlined consume of Path.Storage(v8, v28, p_rect, v29, 5u);
        outlined consume of DisplayList.Item.Value(v3, v6, v27, v5);
        if ((v157 & 1) == 0)
        {
LABEL_162:
          v54 = v3;
          v55 = v6;
          v56 = v27;
          goto LABEL_163;
        }

LABEL_169:
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        v51 = v3;
        v52 = v6;
        v53 = v27;
        goto LABEL_170;
      }
    }

    else if (!*(v8 + 24))
    {
      goto LABEL_194;
    }

    outlined copy of DisplayList.Item.Value(v3, v6, v27, v5);
    outlined copy of Path.Storage(v8, v28, p_rect, v29, 5u);
    goto LABEL_168;
  }

LABEL_102:
  if (v30 == 6)
  {
    goto LABEL_169;
  }

  while (1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_138:
    if (v88 && CGRectIsInfinite(*(v87 + 16)))
    {
LABEL_141:
      v110 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
      v5 = v1[5];
      v111 = v1[6];
      p_rect = v1[7];
      v112 = v1[8];

      outlined consume of DisplayList.Item.Value(v5, v111, p_rect, v112);
      *(v1 + 5) = xmmword_18DDA6ED0;
      v1[7] = v154;
      v1[8] = v110;
      v178.i64[0] = v154;
      LOBYTE(v5) = v155;
      v178.i16[4] = v155;
      v178.i32[3] = v152;
      DisplayList.Item.canonicalizeIdentityEffect(list:)(&v178);
LABEL_142:

      LOBYTE(v15) = v153;
    }

    else
    {
LABEL_143:
      if (*(v154 + 2) != 1)
      {
LABEL_147:

        LOBYTE(v15) = v153;
        goto LABEL_70;
      }

      v146 = p_rect;
      v113 = *(v1 + 2);
      v114 = *(v1 + 3);
      v150 = v1;
      v115 = v154[3];
      v116 = v154[5];
      v174 = v154[4];
      *v175 = v116;
      p_rect = &v172;
      *&v175[12] = *(v154 + 92);
      v117 = v154[3];
      v172 = v154[2];
      v173 = v115;
      v118 = v154[5];
      v168 = v154[4];
      *v169 = v118;
      *&v169[12] = *(v154 + 92);
      v166 = v154[2];
      v167 = v117;
      outlined init with copy of DisplayList.Item(&v172, &v158);
      v119 = DisplayList.Item.paint(in:)(0.0, 0.0, v113, v114);
      v180 = v168;
      *v181 = *v169;
      *&v181[12] = *&v169[12];
      v178 = v166;
      v179 = v167;
      outlined destroy of DisplayList.Item(v178.i64);
      if (!v119)
      {
LABEL_92:

        goto LABEL_93;
      }

      Path.roundedRect()(&v166);
      if (v169[0] == 2)
      {
        goto LABEL_146;
      }

      v126 = v168;
      v127 = v167;
      v128 = v166;
      v129 = v169[0] & 1;
      v169[0] &= 1u;
      v158 = 0uLL;
      *v159.i64 = v113;
      *&v159.i64[1] = v114;
      v160 = 0uLL;
      v161[0] = 0;
      if (!FixedRoundedRect.contains(_:)(&v158))
      {
        v166 = 0uLL;
        *&v167 = v113;
        *(&v167 + 1) = v114;
        v168 = 0uLL;
        v169[0] = 0;
        v158 = v128;
        v159 = v127;
        v160 = v126;
        v161[0] = v129;
        if (FixedRoundedRect.contains(_:)(&v158))
        {
          v132 = swift_allocObject();
          v133 = v192;
          *(v132 + 16) = v191;
          *(v132 + 32) = v133;
          *(v132 + 48) = v193;
          *(v132 + 56) = v119;
          *(v132 + 64) = v146;
          *(v132 + 65) = v29;
          v134 = v1[4];
          if (v134)
          {
            v135 = (2 * (((33 * WORD1(v134)) ^ v134) & 0x7FFFLL)) | 1;
          }

          else
          {
            v135 = 0;
          }

          v140 = v132 | 0x4000000000000000;
          v15 = v1[6];
          v152 = v1[5];
          p_rect = v1[7];
          v141 = v1[8];
          outlined init with copy of Path.Storage(&rect, &v166);
          outlined consume of DisplayList.Item.Value(v152, v15, p_rect, v141);

          v1[5] = v140;
          v1[6] = v135;
          *v8 = 0;
          *(v8 + 8) = 0;
          LOBYTE(v15) = v153;
          goto LABEL_70;
        }

LABEL_146:

LABEL_93:
        v1 = v150;
        LOBYTE(v15) = v153;
LABEL_70:
        LOBYTE(v5) = v155;
        goto LABEL_71;
      }

      v130 = v5 & 0xFFFFFFFF0000FFFFLL | 0x40000000;
      v5 = v1[5];
      p_rect = v1[6];
      v131 = v1[7];
      v147 = v1[8];

      outlined consume of DisplayList.Item.Value(v5, p_rect, v131, v147);
      *(v1 + 5) = xmmword_18DDA6ED0;
      v1[7] = v154;
      v1[8] = v130;
      v166.i64[0] = v154;
      LOBYTE(v5) = v155;
      v166.i16[4] = v155;
      v166.i32[3] = v152;
      DisplayList.Item.canonicalizeIdentityEffect(list:)(&v166);

      LOBYTE(v15) = v153;
    }

LABEL_71:
    if (v5)
    {
      goto LABEL_77;
    }

    if (v15 == 7)
    {
      break;
    }

    if (v15 != 6)
    {
      if (v15 != 4)
      {
LABEL_77:
        v66 = v3;
        v67 = v6;
        v68 = v15;
LABEL_78:
        outlined consume of DisplayList.Effect(v66, v67, v68);
        return;
      }

      if (*&v3 <= 0.0)
      {
        goto LABEL_87;
      }

      return;
    }

    v69 = *(v3 + 16);
    v29 = *(v3 + 24);
    v5 = *(v3 + 32);
    v70 = *(v3 + 40);
    v71 = *(v3 + 48);
    v8 = *(v3 + 52);
    if (v71 <= 2)
    {
      if (v71 >= 2)
      {
        v75 = v69[2];
        v74 = v69[3];
        v73 = v69[4];
        v72 = v69[5];
      }

      else
      {
        v72 = *(v3 + 40);
        v73 = *(v3 + 32);
        v74 = *(v3 + 24);
        v75 = *(v3 + 16);
      }

      if (!CGRectIsNull(*&v75))
      {
        goto LABEL_181;
      }

LABEL_180:
      if (!v8)
      {
        outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        outlined consume of DisplayList.Effect(v3, v6, 6);
        goto LABEL_172;
      }

LABEL_181:
      v66 = v3;
      v67 = v6;
      v68 = 6;
      goto LABEL_78;
    }

    if (v71 == 5)
    {
      if (*(v69 + 16))
      {
        if (*(v69 + 16) == 1)
        {
          goto LABEL_114;
        }

        v124 = one-time initialization token for bufferCallbacks;

        if (v124 != -1)
        {
          swift_once();
        }

LABEL_179:
        v125 = RBPathIsEmpty();
        outlined consume of Path.Storage(v69, v29, v5, v70, 5u);
        if (v125)
        {
          goto LABEL_180;
        }

        goto LABEL_181;
      }

      if (v69[3])
      {
LABEL_114:

        goto LABEL_179;
      }

LABEL_195:
      __break(1u);
      return;
    }

    if (v71 == 6)
    {
      goto LABEL_180;
    }
  }

  if (*(*(v3 + 16) + 16))
  {
    v66 = v3;
    v67 = v6;
    v68 = 7;
    goto LABEL_78;
  }

  outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
  outlined consume of DisplayList.Effect(v3, v6, 7);
LABEL_172:
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v1[8] = 3221225472;
}