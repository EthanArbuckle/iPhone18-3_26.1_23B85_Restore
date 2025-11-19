uint64_t sub_10001E5BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001E604(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000824C0;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E658(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_100064094();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001E6E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_100064094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10001E950(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100064094() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_10001ECA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_100063774();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  v5 = __chkstk_darwin(v3);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v51 - v7;
  v8 = sub_100064094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v53 = &v51 - v15;
  v59 = a1;
  v62 = *(a1 + 16);
  v52 = *(v62 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin(v14);
  v58 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100064134();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v51 - v24;
  v26 = sub_1000021D4(&qword_100085800, &unk_100067120);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v51 - v28;
  sub_100063934();
  v30 = sub_100064064();
  v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_10001F1F0(v29);
  if (v31 == 1 && (sub_1000639B4(), sub_100064114(), sub_10001F258(), v32 = sub_100064274(), v33 = *(v19 + 8), v33(v23, v18), v33(v25, v18), (v32 & 1) == 0))
  {
    v36 = v52;
    v37 = v60;
    (*(v52 + 16))(v58, v60, v62);
    v38 = v54;
    sub_1000638D4();
    v40 = v55;
    v39 = v56;
    v41 = v57;
    (*(v56 + 104))(v55, enum case for ColorScheme.dark(_:), v57);
    v42 = sub_100063764();
    v43 = *(v39 + 8);
    v43(v40, v41);
    v43(v38, v41);
    v44 = 36;
    if (v42)
    {
      v44 = 40;
    }

    v45 = v59;
    v46 = v37 + *(v59 + v44);
    v47 = v53;
    (*(v9 + 16))(v53, v46, v8);
    v48 = *(v45 + 24);
    v49 = v62;
    v50 = v58;
    sub_100063754();
    (*(v9 + 8))(v47, v8);
    return (*(v36 + 8))(v50, v49);
  }

  else
  {
    (*(v9 + 104))(v13, enum case for BlendMode.normal(_:), v8);
    v34 = *(v59 + 24);
    sub_100063754();
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_10001F1F0(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100085800, &unk_100067120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001F258()
{
  result = qword_100085808[0];
  if (!qword_100085808[0])
  {
    sub_100064134();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100085808);
  }

  return result;
}

uint64_t sub_10001F2E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100063B64();

  return swift_getWitnessTable();
}

uint64_t sub_10001F328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100063B34();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100063B44();
}

uint64_t sub_10001F420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100063B34();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100063B44();
}

unint64_t sub_10001F520()
{
  result = sub_100063454();
  if (v1 <= 0x3F)
  {
    result = sub_10001F5C0();
    if (v2 <= 0x3F)
    {
      result = sub_10001F610();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10001F5C0()
{
  result = qword_100085890;
  if (!qword_100085890)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100085890);
  }

  return result;
}

unint64_t sub_10001F610()
{
  result = qword_100085898[0];
  if (!qword_100085898[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_100085898);
  }

  return result;
}

void sub_10001F674(uint64_t a1)
{
  sub_10001FD18();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      type metadata accessor for WidgetCTAView.CTAInteraction();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001F724(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_100064134() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_100063454() - 8);
  v13 = 40;
  if (*(v12 + 64) > 0x28uLL)
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v15 = *(v12 + 80) & 0xF8 | 7;
  v16 = v13 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + *(v9 + 64) + v15) & ~v15) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_31:
      v22 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v24 = *(v9 + 48);

        return v24((v22 + v14 + 8) & ~v14, v10, v8);
      }

      else
      {
        v23 = *v22;
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_20:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 > 3)
    {
      LODWORD(v16) = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v16) = *a1;
      }
    }

    else if (v16 == 1)
    {
      LODWORD(v16) = *a1;
    }

    else
    {
      LODWORD(v16) = *a1;
    }
  }

  return v11 + (v16 | v21) + 1;
}

void sub_10001F9C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_100064134() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v28 = v11;
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(sub_100063454() - 8);
  v15 = 40;
  if (*(v14 + 64) > 0x28uLL)
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v11 + 80);
  v17 = *(v14 + 80) & 0xF8 | 7;
  v18 = v15 + (((((v9 & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16) + *(v11 + 64) + v17) & ~v17) + 1;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v13 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_52:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v25 = (&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v27 = *(v28 + 56);

    v27((v25 + v16 + 8) & ~v16, a2, v12, v10);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *v25 = v26;
  }
}

void sub_10001FD18()
{
  if (!qword_100085258)
  {
    sub_100064134();
    v0 = sub_100063784();
    if (!v1)
    {
      atomic_store(v0, &qword_100085258);
    }
  }
}

uint64_t sub_10001FDB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v132 = a2;
  v3 = sub_100064134();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v129 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = *(*(a1 + 16) - 8);
  v7 = *(v125 + 64);
  __chkstk_darwin(v5);
  v124 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v128 = v10;
  v123 = v9;
  v11 = type metadata accessor for BackgroundModifier();
  v127 = *(v11 - 8);
  v12 = *(v127 + 64);
  __chkstk_darwin(v11);
  v126 = &v101 - v13;
  v119 = sub_100063B84();
  v117 = *(v119 - 8);
  v14 = *(v117 + 64);
  __chkstk_darwin(v119);
  v113 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000021D4(&qword_100085920, &qword_1000671D0);
  v16 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v18 = &v101 - v17;
  v19 = sub_100063D94();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000021D4(&qword_100085928, &qword_1000671D8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v101 - v26;
  v102 = sub_1000021D4(&qword_100085930, &qword_1000671E0);
  v101 = *(v102 - 8);
  v28 = *(v101 + 64);
  __chkstk_darwin(v102);
  v30 = &v101 - v29;
  v104 = sub_1000021D4(&qword_100085938, &qword_1000671E8);
  v31 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v33 = &v101 - v32;
  v108 = sub_1000021D4(&qword_100085940, &qword_1000671F0);
  v34 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v105 = &v101 - v35;
  v110 = sub_1000021D4(&qword_100085948, &qword_1000671F8);
  v107 = *(v110 - 8);
  v36 = *(v107 + 64);
  __chkstk_darwin(v110);
  v106 = &v101 - v37;
  v38 = sub_1000021D4(&qword_100085950, &qword_100067200);
  v111 = *(v38 - 8);
  v39 = *(v111 + 64);
  __chkstk_darwin(v38);
  v109 = &v101 - v40;
  v112 = v41;
  v131 = v11;
  v42 = sub_100063834();
  v118 = *(v42 - 8);
  v43 = *(v118 + 64);
  __chkstk_darwin(v42);
  v114 = &v101 - v44;
  v120 = v45;
  v122 = sub_100063834();
  v121 = *(v122 - 8);
  v46 = *(v121 + 64);
  v47 = __chkstk_darwin(v122);
  v115 = &v101 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v116 = &v101 - v49;
  v130 = a1;
  sub_100020C24(a1, v27);
  sub_100063DB4();
  (*(v20 + 104))(v23, enum case for Font.Leading.tight(_:), v19);
  v50 = sub_100063DA4();

  (*(v20 + 8))(v23, v19);
  KeyPath = swift_getKeyPath();
  v52 = &v27[*(v24 + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  v53 = sub_100021F60();
  sub_100063F34();
  sub_10000494C(v27, &qword_100085928, &qword_1000671D8);
  v54 = enum case for DynamicTypeSize.xxLarge(_:);
  v55 = sub_100063814();
  (*(*(v55 - 8) + 104))(v18, v54, v55);
  sub_100022FDC(&qword_1000859A0, &type metadata accessor for DynamicTypeSize);
  result = sub_100064274();
  if (result)
  {
    *&v140 = v24;
    *(&v140 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859A8, &qword_100085920, &qword_1000671D0);
    v57 = v102;
    sub_100063EE4();
    sub_10000494C(v18, &qword_100085920, &qword_1000671D0);
    (*(v101 + 8))(v30, v57);
    v58 = sub_100063CB4();
    sub_100063714();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = &v33[*(sub_1000021D4(&qword_1000859B0, &qword_100067260) + 36)];
    *v67 = v58;
    *(v67 + 1) = v60;
    *(v67 + 2) = v62;
    *(v67 + 3) = v64;
    *(v67 + 4) = v66;
    v67[40] = 0;
    sub_100064084();
    sub_100063874();
    v68 = &v33[*(v104 + 36)];
    v69 = v145;
    *(v68 + 4) = v144;
    *(v68 + 5) = v69;
    *(v68 + 6) = v146;
    v70 = v141;
    *v68 = v140;
    *(v68 + 1) = v70;
    v71 = v143;
    *(v68 + 2) = v142;
    *(v68 + 3) = v71;
    v72 = v113;
    sub_100063B74();
    sub_1000221B4();
    sub_100022FDC(&qword_1000859C8, &type metadata accessor for BorderlessButtonStyle);
    v73 = v105;
    v74 = v119;
    sub_100063EB4();
    (*(v117 + 8))(v72, v74);
    sub_10000494C(v33, &qword_100085938, &qword_1000671E8);
    v75 = (v73 + *(sub_1000021D4(&qword_1000859D0, &qword_100067268) + 36));
    v76 = v75 + *(sub_1000021D4(&qword_1000859D8, &qword_100067270) + 28);
    sub_100063884();
    *v75 = swift_getKeyPath();
    v77 = sub_100063F74();
    v78 = v108;
    *(v73 + *(v108 + 36)) = v77;
    v79 = sub_100022494();
    v80 = v106;
    sub_100063EA4();
    sub_10000494C(v73, &qword_100085940, &qword_1000671F0);
    v138 = v78;
    v139 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v109;
    v83 = v110;
    sub_100063E24();
    (*(v107 + 8))(v80, v83);
    v84 = v124;
    v85 = v128;
    (*(v125 + 16))(v124, v133 + *(v130 + 40), v128);
    v86 = v129;
    sub_1000309E0(v129);
    v87 = v126;
    sub_100021544(v84, v86, v85, v126);
    v138 = v83;
    v139 = OpaqueTypeConformance2;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = v114;
    v90 = v112;
    v91 = v131;
    sub_100063F54();
    (*(v127 + 8))(v87, v91);
    (*(v111 + 8))(v82, v90);
    sub_100063F64();
    sub_100063F84();

    WitnessTable = swift_getWitnessTable();
    v136 = v88;
    v137 = WitnessTable;
    v93 = v120;
    v94 = swift_getWitnessTable();
    v95 = v115;
    sub_100063F44();

    (*(v118 + 8))(v89, v93);
    v134 = v94;
    v135 = &protocol witness table for _ShadowEffect;
    v96 = v122;
    swift_getWitnessTable();
    v97 = v121;
    v98 = *(v121 + 16);
    v99 = v116;
    v98(v116, v95, v96);
    v100 = *(v97 + 8);
    v100(v95, v96);
    v98(v132, v99, v96);
    return (v100)(v99, v96);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100020C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_1000021D4(&qword_100085998, &unk_100067250);
  v59 = *(v65 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v65);
  v58 = &v53 - v4;
  v61 = sub_1000021D4(&qword_100085A08, &qword_1000672B0);
  v5 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v63 = &v53 - v6;
  v55 = sub_1000021D4(qword_100085A10, &qword_1000672B8);
  v7 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v54 = &v53 - v8;
  v62 = sub_1000021D4(&qword_100085978, &qword_100067240);
  v9 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v57 = &v53 - v10;
  v56 = sub_1000021D4(&qword_100085988, &qword_100067248);
  v53 = *(v56 - 8);
  v11 = *(v53 + 64);
  __chkstk_darwin(v56);
  v13 = &v53 - v12;
  v14 = sub_100063454();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = type metadata accessor for WidgetCTAView.CTAInteraction();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v28 = *(a1 + 44);
  v29 = v60;
  (*(v30 + 16))(v27, v60 + v28, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = *v27;
      v32 = *(v27 + 1);
      __chkstk_darwin(EnumCaseMultiPayload);
      *(&v53 - 4) = v23;
      *(&v53 - 3) = v22;
      *(&v53 - 2) = v29;

      v34 = v58;
      sub_100064044();
      v35 = v59;
      v36 = v65;
      (*(v59 + 16))(v54, v34, v65);
      swift_storeEnumTagMultiPayload();
      sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248);
      sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250);
      v37 = v57;
      sub_100063B44();
      sub_10002273C(v37, v63);
      swift_storeEnumTagMultiPayload();
      sub_1000220D0();
      sub_100063B44();

      sub_10000494C(v37, &qword_100085978, &qword_100067240);
      return (*(v35 + 8))(v34, v36);
    }

    else
    {
      sub_100022690(v27, v66);
      v43 = v67;
      v44 = sub_1000226A8(v66, v67);
      v45 = *(*(v43 - 8) + 64);
      __chkstk_darwin(v44);
      v48 = (*(v47 + 16))(&v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      __chkstk_darwin(v48);
      *(&v53 - 4) = v23;
      *(&v53 - 3) = v22;
      *(&v53 - 2) = v49;
      v50 = v58;
      sub_100064034();
      v51 = v59;
      v52 = v65;
      (*(v59 + 16))(v63, v50, v65);
      swift_storeEnumTagMultiPayload();
      sub_1000220D0();
      sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250);
      sub_100063B44();
      (*(v51 + 8))(v50, v52);
      return sub_1000226EC(v66);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v27, v14);
    v39 = (*(v15 + 16))(v19, v21, v14);
    __chkstk_darwin(v39);
    *(&v53 - 4) = v23;
    *(&v53 - 3) = v22;
    *(&v53 - 2) = v29;
    sub_100063DC4();
    v40 = v53;
    v41 = v56;
    (*(v53 + 16))(v54, v13, v56);
    swift_storeEnumTagMultiPayload();
    sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248);
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250);
    v42 = v57;
    sub_100063B44();
    sub_10002273C(v42, v63);
    swift_storeEnumTagMultiPayload();
    sub_1000220D0();
    sub_100063B44();
    sub_10000494C(v42, &qword_100085978, &qword_100067240);
    (*(v40 + 8))(v13, v41);
    return (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_100021544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for BackgroundModifier() + 36);
  v7 = sub_100064134();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_100021620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v62 = a3;
  swift_getWitnessTable();
  v4 = sub_100063B94();
  sub_10000221C(&qword_100085A98, &qword_100067338);
  v5 = sub_100063834();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  v7 = __chkstk_darwin(v5);
  v55 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = v53 - v9;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = sub_100022F88();
  v53[2] = v11;
  v79 = v11;
  v80 = &type metadata for Circle;
  v53[3] = v10;
  v81 = v10;
  v82 = v12;
  v53[1] = v12;
  v63 = sub_100063C54();
  v64 = v4;
  v13 = sub_100063834();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = v53 - v19;
  v20 = sub_100064134();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100063B54();
  v60 = *(v61 - 8);
  v25 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = v53 - v26;
  v27 = *(a2 + 36);
  sub_100064124();
  sub_100022FDC(qword_100085808, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(v27) = sub_100064274();
  (*(v21 + 8))(v24, v20);
  if (v27)
  {
    sub_100064084();
    sub_1000021D4(&qword_100085AB0, &qword_100067340);
    WitnessTable = swift_getWitnessTable();
    v29 = sub_10000221C(&qword_100085AB8, &qword_100067348);
    v30 = sub_100023024();
    v79 = v29;
    v80 = v30;
    swift_getOpaqueTypeConformance2();
    v31 = v55;
    sub_100063E64();
    v32 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338);
    v67 = WitnessTable;
    v68 = v32;
    v58 = swift_getWitnessTable();
    v33 = v57;
    v34 = *(v57 + 16);
    v35 = v56;
    v34(v56, v31, v5);
    v36 = *(v33 + 8);
    v36(v31, v5);
    v34(v31, v35, v5);
    v37 = swift_getWitnessTable();
    v65 = WitnessTable;
    v66 = v37;
    swift_getWitnessTable();
    v38 = v59;
    sub_10001F420(v31, v13, v5);
    v36(v31, v5);
    v36(v35, v5);
  }

  else
  {
    v39 = swift_getWitnessTable();
    sub_100063E74();
    v40 = swift_getWitnessTable();
    v77 = v39;
    v78 = v40;
    v58 = swift_getWitnessTable();
    v41 = v14[2];
    v42 = v54;
    v41(v54, v18, v13);
    v43 = v14[1];
    v43(v18, v13);
    v41(v18, v42, v13);
    v44 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338);
    v75 = v39;
    v76 = v44;
    swift_getWitnessTable();
    v38 = v59;
    sub_10001F328(v18, v13);
    v43(v18, v13);
    v43(v42, v13);
  }

  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v73 = v45;
  v74 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338);
  v71 = v45;
  v72 = v48;
  v49 = swift_getWitnessTable();
  v69 = v47;
  v70 = v49;
  v50 = v61;
  swift_getWitnessTable();
  v51 = v60;
  (*(v60 + 16))(v62, v38, v50);
  return (*(v51 + 8))(v38, v50);
}

uint64_t sub_100021EA0()
{
  sub_100063F64();
  sub_1000021D4(&qword_100085AB8, &qword_100067348);
  sub_100023024();
  sub_100063E24();
}

unint64_t sub_100021F60()
{
  result = qword_100085958;
  if (!qword_100085958)
  {
    sub_10000221C(&qword_100085928, &qword_1000671D8);
    sub_100022018();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085958);
  }

  return result;
}

unint64_t sub_100022018()
{
  result = qword_100085960;
  if (!qword_100085960)
  {
    sub_10000221C(&qword_100085968, &qword_100067238);
    sub_1000220D0();
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085960);
  }

  return result;
}

unint64_t sub_1000220D0()
{
  result = qword_100085970;
  if (!qword_100085970)
  {
    sub_10000221C(&qword_100085978, &qword_100067240);
    sub_100009F14(&qword_100085980, &qword_100085988, &qword_100067248);
    sub_100009F14(&qword_100085990, &qword_100085998, &unk_100067250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085970);
  }

  return result;
}

unint64_t sub_1000221B4()
{
  result = qword_1000859B8;
  if (!qword_1000859B8)
  {
    sub_10000221C(&qword_100085938, &qword_1000671E8);
    sub_100022240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859B8);
  }

  return result;
}

unint64_t sub_100022240()
{
  result = qword_1000859C0;
  if (!qword_1000859C0)
  {
    sub_10000221C(&qword_1000859B0, &qword_100067260);
    sub_10000221C(&qword_100085930, &qword_1000671E0);
    sub_10000221C(&qword_100085920, &qword_1000671D0);
    sub_10000221C(&qword_100085928, &qword_1000671D8);
    sub_100021F60();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859A8, &qword_100085920, &qword_1000671D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859C0);
  }

  return result;
}

uint64_t sub_1000223C8(uint64_t a1)
{
  v2 = sub_100063894();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100063924();
}

unint64_t sub_100022494()
{
  result = qword_1000859E0;
  if (!qword_1000859E0)
  {
    sub_10000221C(&qword_100085940, &qword_1000671F0);
    sub_10002254C();
    sub_100009F14(&qword_1000859F8, &qword_100085A00, &qword_1000672A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859E0);
  }

  return result;
}

unint64_t sub_10002254C()
{
  result = qword_1000859E8;
  if (!qword_1000859E8)
  {
    sub_10000221C(&qword_1000859D0, &qword_100067268);
    sub_10000221C(&qword_100085938, &qword_1000671E8);
    sub_100063B84();
    sub_1000221B4();
    sub_100022FDC(&qword_1000859C8, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000859F0, &qword_1000859D8, &qword_100067270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000859E8);
  }

  return result;
}

uint64_t sub_100022690(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000226A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000226EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10002273C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085978, &qword_100067240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227AC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = *(v4 + *(type metadata accessor for WidgetCTAView() + 36));
}

uint64_t sub_1000227F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_100064134();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100022880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_100064134();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100022AE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_100064134() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_100022DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10000221C(&qword_100085950, &qword_100067200);
  type metadata accessor for BackgroundModifier();
  sub_100063834();
  sub_100063834();
  sub_10000221C(&qword_100085948, &qword_1000671F8);
  sub_10000221C(&qword_100085940, &qword_1000671F0);
  sub_100022494();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100022F88()
{
  result = qword_100085AA0;
  if (!qword_100085AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AA0);
  }

  return result;
}

uint64_t sub_100022FDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100023024()
{
  result = qword_100085AC0;
  if (!qword_100085AC0)
  {
    sub_10000221C(&qword_100085AB8, &qword_100067348);
    sub_1000230B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AC0);
  }

  return result;
}

unint64_t sub_1000230B0()
{
  result = qword_100085AC8;
  if (!qword_100085AC8)
  {
    sub_10000221C(&qword_100085AD0, &qword_100067350);
    sub_100009F14(&qword_100085AD8, &qword_100085AE0, &qword_100067358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085AC8);
  }

  return result;
}

uint64_t sub_100023168(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BackgroundModifier();
  swift_getWitnessTable();
  sub_100063B94();
  sub_100022F88();
  sub_100063C54();
  sub_100063834();
  sub_10000221C(&qword_100085A98, &qword_100067338);
  sub_100063834();
  sub_100063B54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100009F14(&qword_100085AA8, &qword_100085A98, &qword_100067338);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_10002339C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CC60;
  v8._countAndFlagsBits = 0x6C616E72756F4ALL;
  v6._object = 0x800000010006CC40;
  v6._countAndFlagsBits = 0xD000000000000016;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE700000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090330 = v2;
  *algn_100090338 = v4;
}

void sub_100023460()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CC20;
  v8._countAndFlagsBits = 0x72746E452077654ELL;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x800000010006CC00;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE900000000000079;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090340 = v2;
  *algn_100090348 = v4;
}

void sub_100023528()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D160;
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x800000010006D0F0;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x800000010006D120;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090350 = v2;
  *algn_100090358 = v4;
}

void sub_1000235EC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CCC0;
  v8._countAndFlagsBits = 0x72746E452077654ELL;
  v6._object = 0x800000010006CD40;
  v6._countAndFlagsBits = 0xD000000000000023;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE900000000000079;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090360 = v2;
  *algn_100090368 = v4;
}

void sub_1000236B0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CCC0;
  v8._countAndFlagsBits = 0x6F7250207478654ELL;
  v8._object = 0xEB0000000074706DLL;
  v6._object = 0x800000010006CC90;
  v6._countAndFlagsBits = 0xD000000000000024;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090370 = v2;
  *algn_100090378 = v4;
}

void sub_100023778()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072660;
  v6._object = 0x8000000100072600;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x8000000100072630;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090380 = v2;
  *algn_100090388 = v4;
}

void sub_10002383C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000725B0;
  v6._object = 0x8000000100072550;
  v8._countAndFlagsBits = 0xD000000000000027;
  v8._object = 0x8000000100072580;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090390 = v2;
  *algn_100090398 = v4;
}

void sub_100023900()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000724F0;
  v6._object = 0x8000000100072480;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x80000001000724B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903A0 = v2;
  *algn_1000903A8 = v4;
}

void sub_1000239C4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072420;
  v6._object = 0x80000001000723B0;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x80000001000723E0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903B0 = v2;
  *algn_1000903B8 = v4;
}

void sub_100023A88()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072350;
  v6._object = 0x80000001000722E0;
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x8000000100072310;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903C0 = v2;
  *algn_1000903C8 = v4;
}

void sub_100023B4C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072290;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100072230;
  v8._object = 0x8000000100072260;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903D0 = v2;
  *algn_1000903D8 = v4;
}

void sub_100023C10()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000721D0;
  v6._object = 0x8000000100072170;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x80000001000721A0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903E0 = v2;
  *algn_1000903E8 = v4;
}

void sub_100023CD4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D740;
  v6._object = 0x800000010006D6E0;
  v8._object = 0x800000010006D710;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000903F0 = v2;
  *algn_1000903F8 = v4;
}

void sub_100023D9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D690;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006D640;
  v8._object = 0x800000010006D670;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090400 = v2;
  *algn_100090408 = v4;
}

void sub_100023E60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DBA0;
  v6._object = 0x800000010006DB40;
  v8._object = 0x800000010006DB70;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ALL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090410 = v2;
  *algn_100090418 = v4;
}

void sub_100023F28()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DAF0;
  v6._object = 0x800000010006DA90;
  v8._countAndFlagsBits = 0xD000000000000027;
  v8._object = 0x800000010006DAC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090420 = v2;
  *algn_100090428 = v4;
}

void sub_100023FEC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072110;
  v6._object = 0x80000001000720A0;
  v8._object = 0x80000001000720D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000036;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090430 = v2;
  *algn_100090438 = v4;
}

void sub_1000240B4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100072050;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071FF0;
  v8._object = 0x8000000100072020;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090440 = v2;
  *algn_100090448 = v4;
}

void sub_100024178()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071FA0;
  v6._object = 0x8000000100071F40;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100071F70;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090450 = v2;
  *algn_100090458 = v4;
}

void sub_10002423C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071EF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071EA0;
  v8._object = 0x8000000100071ED0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090460 = v2;
  *algn_100090468 = v4;
}

void sub_100024300()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071E50;
  v6._object = 0x8000000100071DF0;
  v8._object = 0x8000000100071E20;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090470 = v2;
  *algn_100090478 = v4;
}

void sub_1000243C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071DA0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071D40;
  v8._object = 0x8000000100071D70;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090480 = v2;
  *algn_100090488 = v4;
}

void sub_10002448C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071CF0;
  v6._object = 0x8000000100071C90;
  v8._object = 0x8000000100071CC0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090490 = v2;
  *algn_100090498 = v4;
}

void sub_100024554()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071C40;
  v6._object = 0x8000000100071BE0;
  v8._object = 0x8000000100071C10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000904A0 = v2;
  *algn_1000904A8 = v4;
}

void sub_10002461C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071B90;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071B30;
  v8._object = 0x8000000100071B60;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000904B0 = v2;
  *algn_1000904B8 = v4;
}

void sub_1000246E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071AE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071A80;
  v8._object = 0x8000000100071AB0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000904C0 = v2;
  *algn_1000904C8 = v4;
}

uint64_t sub_1000247A4()
{
  if (qword_1000844E0 != -1)
  {
    swift_once();
  }

  qword_1000904D0 = qword_1000903D0;
  *algn_1000904D8 = *algn_1000903D8;
}

void sub_100024810()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071A30;
  v6._object = 0x80000001000719D0;
  v8._object = 0x8000000100071A00;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000904E0 = v2;
  *algn_1000904E8 = v4;
}

void sub_1000248D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071980;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071920;
  v8._object = 0x8000000100071950;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000904F0 = v2;
  *algn_1000904F8 = v4;
}

uint64_t sub_10002499C()
{
  if (qword_1000844F0 != -1)
  {
    swift_once();
  }

  qword_100090500 = qword_1000903F0;
  *algn_100090508 = *algn_1000903F8;
}

void sub_100024A08()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DEE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DE80;
  v8._object = 0x800000010006DEB0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090510 = v2;
  *algn_100090518 = v4;
}

void sub_100024ACC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000718D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071880;
  v8._object = 0x80000001000718B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090520 = v2;
  *algn_100090528 = v4;
}

uint64_t sub_100024B90()
{
  if (qword_1000844F8 != -1)
  {
    swift_once();
  }

  qword_100090530 = qword_100090400;
  *algn_100090538 = *algn_100090408;
}

void sub_100024BFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071830;
  v6._object = 0x80000001000717D0;
  v8._object = 0x8000000100071800;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090540 = v2;
  *algn_100090548 = v4;
}

void sub_100024CC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071780;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071730;
  v8._object = 0x8000000100071760;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090550 = v2;
  *algn_100090558 = v4;
}

void sub_100024D88()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000716F0;
  v6._object = 0x80000001000716A0;
  v8._object = 0x80000001000716D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000018;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090560 = v2;
  *algn_100090568 = v4;
}

void sub_100024E54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071660;
  v6._object = 0x8000000100071610;
  v8._object = 0x8000000100071640;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090570 = v2;
  *algn_100090578 = v4;
}

void sub_100024F1C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000715D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071580;
  v8._object = 0x80000001000715B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090580 = v2;
  *algn_100090588 = v4;
}

void sub_100024FE0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071540;
  v6._object = 0x80000001000714F0;
  v8._object = 0x8000000100071520;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090590 = v2;
  *algn_100090598 = v4;
}

void sub_1000250A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E250;
  v6._object = 0x800000010006E200;
  v8._object = 0x800000010006E230;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905A0 = v2;
  *algn_1000905A8 = v4;
}

void sub_100025170()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E1C0;
  v6._object = 0x800000010006E170;
  v8._object = 0x800000010006E1A0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905B0 = v2;
  *algn_1000905B8 = v4;
}

void sub_100025238()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000714B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071460;
  v8._object = 0x8000000100071490;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905C0 = v2;
  *algn_1000905C8 = v4;
}

void sub_1000252FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071420;
  v6._object = 0x80000001000713D0;
  v8._object = 0x8000000100071400;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000010;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905D0 = v2;
  *algn_1000905D8 = v4;
}

void sub_1000253C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071380;
  v6._object = 0x8000000100071320;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100071350;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905E0 = v2;
  *algn_1000905E8 = v4;
}

void sub_10002548C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000712D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100071280;
  v8._object = 0x80000001000712B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000905F0 = v2;
  *algn_1000905F8 = v4;
}

void sub_100025550()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071220;
  v6._object = 0x80000001000711C0;
  v8._object = 0x80000001000711F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002FLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090600 = v2;
  *algn_100090608 = v4;
}

void sub_100025618()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071160;
  v6._object = 0x80000001000710F0;
  v8._object = 0x8000000100071120;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000035;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090610 = v2;
  *algn_100090618 = v4;
}

void sub_1000256E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100071090;
  v6._object = 0x8000000100071020;
  v8._object = 0x8000000100071050;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090620 = v2;
  *algn_100090628 = v4;
}

void sub_1000257A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070FC0;
  v6._object = 0x8000000100070F50;
  v8._countAndFlagsBits = 0xD000000000000034;
  v8._object = 0x8000000100070F80;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090630 = v2;
  *algn_100090638 = v4;
}

void sub_10002586C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070EF0;
  v6._object = 0x8000000100070E90;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100070EC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090640 = v2;
  *algn_100090648 = v4;
}

void sub_100025930()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070E30;
  v6._object = 0x8000000100070DC0;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x8000000100070DF0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090650 = v2;
  *algn_100090658 = v4;
}

void sub_1000259F4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D5E0;
  v6._object = 0x800000010006D580;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  v8._object = 0x800000010006D5B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090660 = v2;
  *algn_100090668 = v4;
}

void sub_100025AB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D530;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006D4D0;
  v8._object = 0x800000010006D500;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090670 = v2;
  *algn_100090678 = v4;
}

void sub_100025B7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DA30;
  v6._object = 0x800000010006D9C0;
  v8._object = 0x800000010006D9F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090680 = v2;
  *algn_100090688 = v4;
}

void sub_100025C44()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D970;
  v6._object = 0x800000010006D910;
  v8._object = 0x800000010006D940;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000028;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090690 = v2;
  *algn_100090698 = v4;
}

void sub_100025D0C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070D70;
  v6._object = 0x8000000100070D10;
  v8._object = 0x8000000100070D40;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906A0 = v2;
  *algn_1000906A8 = v4;
}

void sub_100025DD4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070CB0;
  v6._object = 0x8000000100070C50;
  v8._object = 0x8000000100070C80;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ALL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906B0 = v2;
  *algn_1000906B8 = v4;
}

void sub_100025E9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070BF0;
  v6._object = 0x8000000100070B90;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x8000000100070BC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906C0 = v2;
  *algn_1000906C8 = v4;
}

void sub_100025F60()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070B30;
  v6._object = 0x8000000100070AC0;
  v8._object = 0x8000000100070AF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906D0 = v2;
  *algn_1000906D8 = v4;
}

void sub_100026028()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070A60;
  v6._object = 0x8000000100070A00;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x8000000100070A30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906E0 = v2;
  *algn_1000906E8 = v4;
}

void sub_1000260F0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000709B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070950;
  v8._object = 0x8000000100070980;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000906F0 = v2;
  *algn_1000906F8 = v4;
}

void sub_1000261B4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000708F0;
  v6._object = 0x8000000100070890;
  v8._object = 0x80000001000708C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002ELL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090700 = v2;
  *algn_100090708 = v4;
}

void sub_10002627C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DD90;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DD40;
  v8._object = 0x800000010006DD70;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090710 = v2;
  *algn_100090718 = v4;
}

void sub_100026340()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DE30;
  v6._object = 0x800000010006DDE0;
  v8._object = 0x800000010006DE10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000001CLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090720 = v2;
  *algn_100090728 = v4;
}

void sub_100026408()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070830;
  v6._object = 0x80000001000707C0;
  v8._object = 0x80000001000707F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090730 = v2;
  *algn_100090738 = v4;
}

void sub_1000264D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070770;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070710;
  v8._object = 0x8000000100070740;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090740 = v2;
  *algn_100090748 = v4;
}

void sub_100026594()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000706C0;
  v6._object = 0x8000000100070660;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x8000000100070690;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090750 = v2;
  *algn_100090758 = v4;
}

void sub_100026658()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070600;
  v6._object = 0x80000001000705A0;
  v8._object = 0x80000001000705D0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002FLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090760 = v2;
  *algn_100090768 = v4;
}

void sub_100026720()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070540;
  v6._object = 0x80000001000704E0;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v8._object = 0x8000000100070510;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090770 = v2;
  *algn_100090778 = v4;
}

void sub_1000267E4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070490;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070440;
  v8._object = 0x8000000100070470;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090780 = v2;
  *algn_100090788 = v4;
}

void sub_1000268A8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000703E0;
  v6._object = 0x8000000100070380;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x80000001000703B0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090790 = v2;
  *algn_100090798 = v4;
}

void sub_10002696C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070320;
  v6._object = 0x80000001000702C0;
  v8._object = 0x80000001000702F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000907A0 = v2;
  *algn_1000907A8 = v4;
}

void sub_100026A34()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070280;
  v6._object = 0x8000000100070230;
  v8._object = 0x8000000100070260;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000907B0 = v2;
  *algn_1000907B8 = v4;
}

void sub_100026AFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000701E0;
  v6._object = 0x8000000100070180;
  v8._object = 0x80000001000701B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000907C0 = v2;
  *algn_1000907C8 = v4;
}

uint64_t sub_100026BC4()
{
  if (qword_1000845F0 != -1)
  {
    swift_once();
  }

  qword_1000907D0 = qword_1000905F0;
  *algn_1000907D8 = *algn_1000905F8;
}

void sub_100026C30()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070130;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001000700D0;
  v8._object = 0x8000000100070100;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000907E0 = v2;
  *algn_1000907E8 = v4;
}

void sub_100026CF4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100070080;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x8000000100070020;
  v8._object = 0x8000000100070050;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000907F0 = v2;
  *algn_1000907F8 = v4;
}

void sub_100026DB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FFD0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FF70;
  v8._object = 0x800000010006FFA0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090800 = v2;
  *algn_100090808 = v4;
}

uint64_t sub_100026E7C()
{
  if (qword_100084688 != -1)
  {
    swift_once();
  }

  qword_100090810 = qword_100090720;
  *algn_100090818 = *algn_100090728;
}

uint64_t sub_100026EE8()
{
  if (qword_100084680 != -1)
  {
    swift_once();
  }

  qword_100090820 = qword_100090710;
  *algn_100090828 = *algn_100090718;
}

void sub_100026F54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FF20;
  v6._object = 0x800000010006FEC0;
  v8._object = 0x800000010006FEF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090830 = v2;
  *algn_100090838 = v4;
}

void sub_10002701C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FE70;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FE10;
  v8._object = 0x800000010006FE40;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090840 = v2;
  *algn_100090848 = v4;
}

void sub_1000270E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FDC0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FD70;
  v8._object = 0x800000010006FDA0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090850 = v2;
  *algn_100090858 = v4;
}

void sub_1000271A4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FD30;
  v6._object = 0x800000010006FCE0;
  v8._object = 0x800000010006FD10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090860 = v2;
  *algn_100090868 = v4;
}

void sub_10002726C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E0A0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E050;
  v8._object = 0x800000010006E080;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090870 = v2;
  *algn_100090878 = v4;
}

void sub_100027334()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FCA0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FC50;
  v8._object = 0x800000010006FC80;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090880 = v2;
  *algn_100090888 = v4;
}

void sub_1000273F8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FC10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006FBC0;
  v8._object = 0x800000010006FBF0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000011;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090890 = v2;
  *algn_100090898 = v4;
}

void sub_1000274C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E130;
  v6._object = 0x800000010006E0E0;
  v8._object = 0x800000010006E110;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000908A0 = v2;
  *algn_1000908A8 = v4;
}

uint64_t sub_100027588()
{
  if (qword_100084730 != -1)
  {
    swift_once();
  }

  qword_1000908B0 = qword_100090870;
  *algn_1000908B8 = *algn_100090878;
}

uint64_t sub_1000275F4()
{
  if (qword_100084738 != -1)
  {
    swift_once();
  }

  qword_1000908C0 = qword_100090880;
  *algn_1000908C8 = *algn_100090888;
}

uint64_t sub_100027660()
{
  if (qword_100084740 != -1)
  {
    swift_once();
  }

  qword_1000908D0 = qword_100090890;
  *algn_1000908D8 = *algn_100090898;
}

uint64_t sub_1000276CC()
{
  if (qword_1000845E8 != -1)
  {
    swift_once();
  }

  qword_1000908E0 = qword_1000905E0;
  *algn_1000908E8 = *algn_1000905E8;
}

void sub_100027738()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FB60;
  v6._object = 0x800000010006FB00;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x800000010006FB30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000908F0 = v2;
  *algn_1000908F8 = v4;
}

void sub_100027800()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006FAA0;
  v6._object = 0x800000010006FA30;
  v8._object = 0x800000010006FA60;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090900 = v2;
  *algn_100090908 = v4;
}

void sub_1000278C8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F9D0;
  v6._object = 0x800000010006F960;
  v8._object = 0x800000010006F990;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090910 = v2;
  *algn_100090918 = v4;
}

void sub_100027990()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F900;
  v6._object = 0x800000010006F890;
  v8._object = 0x800000010006F8C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000033;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090920 = v2;
  *algn_100090928 = v4;
}

void sub_100027A58()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F840;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006F7E0;
  v8._object = 0x800000010006F810;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090930 = v2;
  *algn_100090938 = v4;
}

void sub_100027B1C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F780;
  v6._object = 0x800000010006F710;
  v8._object = 0x800000010006F740;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090940 = v2;
  *algn_100090948 = v4;
}

void sub_100027BE4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F6C0;
  v6._object = 0x800000010006F660;
  v8._object = 0x800000010006F690;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090950 = v2;
  *algn_100090958 = v4;
}

void sub_100027CAC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F600;
  v6._object = 0x800000010006F590;
  v8._object = 0x800000010006F5C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000036;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090960 = v2;
  *algn_100090968 = v4;
}

void sub_100027D74()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F530;
  v6._object = 0x800000010006F4C0;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010006F4F0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090970 = v2;
  *algn_100090978 = v4;
}

void sub_100027E38()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F460;
  v6._object = 0x800000010006F400;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  v8._object = 0x800000010006F430;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090980 = v2;
  *algn_100090988 = v4;
}

void sub_100027EFC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F3A0;
  v6._object = 0x800000010006F330;
  v8._countAndFlagsBits = 0xD000000000000034;
  v8._object = 0x800000010006F360;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090990 = v2;
  *algn_100090998 = v4;
}

void sub_100027FC0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F2D0;
  v6._object = 0x800000010006F260;
  v8._object = 0x800000010006F290;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000030;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909A0 = v2;
  *algn_1000909A8 = v4;
}

void sub_100028088()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F200;
  v6._object = 0x800000010006F1A0;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x800000010006F1D0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909B0 = v2;
  *algn_1000909B8 = v4;
}

void sub_10002814C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F150;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006F0F0;
  v8._object = 0x800000010006F120;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909C0 = v2;
  *algn_1000909C8 = v4;
}

void sub_100028210()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D470;
  v6._object = 0x800000010006D400;
  v8._object = 0x800000010006D430;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909D0 = v2;
  *algn_1000909D8 = v4;
}

void sub_1000282D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D3B0;
  v6._object = 0x800000010006D350;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x800000010006D380;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909E0 = v2;
  *algn_1000909E8 = v4;
}

void sub_10002839C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D8C0;
  v6._object = 0x800000010006D860;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010006D890;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000909F0 = v2;
  *algn_1000909F8 = v4;
}

void sub_100028460()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D800;
  v6._object = 0x800000010006D790;
  v8._object = 0x800000010006D7C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000031;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A00 = v2;
  *algn_100090A08 = v4;
}

void sub_100028528()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006F090;
  v6._object = 0x800000010006F030;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v8._object = 0x800000010006F060;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A10 = v2;
  *algn_100090A18 = v4;
}

void sub_1000285EC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EFE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EF90;
  v8._object = 0x800000010006EFC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A20 = v2;
  *algn_100090A28 = v4;
}

void sub_1000286B0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EF40;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EEE0;
  v8._object = 0x800000010006EF10;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A30 = v2;
  *algn_100090A38 = v4;
}

void sub_100028774()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DCF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DCA0;
  v8._object = 0x800000010006DCD0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A40 = v2;
  *algn_100090A48 = v4;
}

void sub_100028838()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EE80;
  v6._object = 0x800000010006EE20;
  v8._object = 0x800000010006EE50;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x100000000000002CLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A50 = v2;
  *algn_100090A58 = v4;
}

void sub_100028900()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EDC0;
  v6._object = 0x800000010006ED60;
  v8._countAndFlagsBits = 0xD00000000000002DLL;
  v8._object = 0x800000010006ED90;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A60 = v2;
  *algn_100090A68 = v4;
}

void sub_1000289C4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006ED10;
  v6._object = 0x800000010006ECB0;
  v8._object = 0x800000010006ECE0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A70 = v2;
  *algn_100090A78 = v4;
}

void sub_100028A8C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EC60;
  v6._object = 0x800000010006EC00;
  v8._object = 0x800000010006EC30;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A80 = v2;
  *algn_100090A88 = v4;
}

void sub_100028B54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EBA0;
  v6._object = 0x800000010006EB40;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x800000010006EB70;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090A90 = v2;
  *algn_100090A98 = v4;
}

uint64_t sub_100028C18()
{
  if (qword_1000847D8 != -1)
  {
    swift_once();
  }

  qword_100090AA0 = qword_1000909C0;
  *algn_100090AA8 = *algn_1000909C8;
}

void sub_100028C84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EAF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006EA90;
  v8._object = 0x800000010006EAC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000021;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090AB0 = v2;
  *algn_100090AB8 = v4;
}

void sub_100028D48()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006EA40;
  v6._object = 0x800000010006E9E0;
  v8._object = 0x800000010006EA10;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000026;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090AC0 = v2;
  *algn_100090AC8 = v4;
}

void sub_100028E10()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E990;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E940;
  v8._object = 0x800000010006E970;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090AD0 = v2;
  *algn_100090AD8 = v4;
}

void sub_100028ED4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E8F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E890;
  v8._object = 0x800000010006E8C0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000024;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090AE0 = v2;
  *algn_100090AE8 = v4;
}

void sub_100028F98()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E840;
  v6._object = 0x800000010006E7E0;
  v8._object = 0x800000010006E810;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090AF0 = v2;
  *algn_100090AF8 = v4;
}

uint64_t sub_100029060()
{
  if (qword_100084818 != -1)
  {
    swift_once();
  }

  qword_100090B00 = qword_100090A40;
  *algn_100090B08 = *algn_100090A48;
}

void sub_1000290CC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DC50;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006DC00;
  v8._object = 0x800000010006DC30;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B10 = v2;
  *algn_100090B18 = v4;
}

void sub_100029190()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E790;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E730;
  v8._object = 0x800000010006E760;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000022;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B20 = v2;
  *algn_100090B28 = v4;
}

uint64_t sub_100029254()
{
  if (qword_100084808 != -1)
  {
    swift_once();
  }

  qword_100090B30 = qword_100090A20;
  *algn_100090B38 = *algn_100090A28;
}

void sub_1000292C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E6E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E680;
  v8._object = 0x800000010006E6B0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000020;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B40 = v2;
  *algn_100090B48 = v4;
}

void sub_100029384()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E010;
  v6._object = 0x800000010006DFC0;
  v8._object = 0x800000010006DFF0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000013;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B50 = v2;
  *algn_100090B58 = v4;
}

void sub_10002944C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006DF80;
  v6._object = 0x800000010006DF30;
  v8._object = 0x800000010006DF60;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B60 = v2;
  *algn_100090B68 = v4;
}

void sub_100029514()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E640;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E5F0;
  v8._object = 0x800000010006E620;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B70 = v2;
  *algn_100090B78 = v4;
}

void sub_1000295D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E5B0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E560;
  v8._object = 0x800000010006E590;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B80 = v2;
  *algn_100090B88 = v4;
}

void sub_10002969C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E520;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E4D0;
  v8._object = 0x800000010006E500;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090B90 = v2;
  *algn_100090B98 = v4;
}

void sub_100029760()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E490;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E440;
  v8._object = 0x800000010006E470;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090BA0 = v2;
  *algn_100090BA8 = v4;
}

uint64_t sub_100029824()
{
  if (qword_1000848A0 != -1)
  {
    swift_once();
  }

  qword_100090BB0 = qword_100090B50;
  *algn_100090BB8 = *algn_100090B58;
}

uint64_t sub_100029890()
{
  if (qword_1000848A8 != -1)
  {
    swift_once();
  }

  qword_100090BC0 = qword_100090B60;
  *algn_100090BC8 = *algn_100090B68;
}

void sub_1000298FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E400;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E3B0;
  v8._object = 0x800000010006E3E0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000013;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090BD0 = v2;
  *algn_100090BD8 = v4;
}

uint64_t sub_1000299C0()
{
  if (qword_1000848B8 != -1)
  {
    swift_once();
  }

  qword_100090BE0 = qword_100090B80;
  *algn_100090BE8 = *algn_100090B88;
}

void sub_100029A2C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E370;
  v6._object = 0x800000010006E320;
  v8._object = 0x800000010006E350;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x1000000000000015;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090BF0 = v2;
  *algn_100090BF8 = v4;
}

void sub_100029AF4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006E2E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x800000010006E290;
  v8._object = 0x800000010006E2C0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000014;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C00 = v2;
  *algn_100090C08 = v4;
}

void sub_100029BB8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D1C0;
  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x800000010006D180;
  v8._object = 0x800000010006D1A0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000016;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C10 = v2;
  *algn_100090C18 = v4;
}

void sub_100029C7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CDD0;
  v6._object = 0x800000010006CD70;
  v8._countAndFlagsBits = 0xD000000000000039;
  v8._object = 0x800000010006CD90;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C20 = v2;
  *algn_100090C28 = v4;
}

void sub_100029D40()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D210;
  v8._countAndFlagsBits = 0x736F746F6850;
  v6._object = 0x800000010006D1F0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C30 = v2;
  *algn_100090C38 = v4;
}

void sub_100029E00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CE70;
  v6._object = 0x800000010006CE10;
  v8._countAndFlagsBits = 0xD000000000000036;
  v8._object = 0x800000010006CE30;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C40 = v2;
  *algn_100090C48 = v4;
}

void sub_100029EC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D250;
  v8._countAndFlagsBits = 0x6172656D6143;
  v6._object = 0x800000010006D230;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C50 = v2;
  *algn_100090C58 = v4;
}

void sub_100029F84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CF00;
  v6._object = 0x800000010006CEA0;
  v8._countAndFlagsBits = 0xD00000000000003DLL;
  v8._object = 0x800000010006CEC0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C60 = v2;
  *algn_100090C68 = v4;
}

void sub_10002A04C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D290;
  v8._countAndFlagsBits = 0x6552206F69647541;
  v8._object = 0xEF676E6964726F63;
  v6._object = 0x800000010006D270;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C70 = v2;
  *algn_100090C78 = v4;
}

void sub_10002A11C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006CFA0;
  v6._object = 0x800000010006CF30;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x800000010006CF60;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000022;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C80 = v2;
  *algn_100090C88 = v4;
}

void sub_10002A1E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D2E0;
  v8._countAndFlagsBits = 0x736563616C50;
  v6._object = 0x800000010006D2C0;
  v6._countAndFlagsBits = 0xD000000000000016;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xE600000000000000;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090C90 = v2;
  *algn_100090C98 = v4;
}

void sub_10002A2A0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D020;
  v6._object = 0x800000010006CFD0;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x800000010006CFF0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090CA0 = v2;
  *algn_100090CA8 = v4;
}

void sub_10002A364()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D320;
  v8._countAndFlagsBits = 0x666F206574617453;
  v8._object = 0xED0000646E694D20;
  v6._object = 0x800000010006D300;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090CB0 = v2;
  *algn_100090CB8 = v4;
}

void sub_10002A434()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010006D0C0;
  v6._object = 0x800000010006D050;
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x800000010006D080;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000020;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_100063374(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100090CC0 = v2;
  *algn_100090CC8 = v4;
}

uint64_t sub_10002A568()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000633F4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100064294();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100063244();
  sub_100009DBC(v15, qword_100090CD0);
  sub_1000049B4(v15, qword_100090CD0);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100063414();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100063234();
}

uint64_t sub_10002A85C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v41 = v34 - v3;
  v4 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v40 = v34 - v6;
  v7 = sub_1000633F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000635E4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100064294();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v36 = sub_100063404();
  v16 = *(v36 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v36);
  v38 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v37 = v34 - v20;
  sub_100064284();
  sub_1000635D4();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v8 + 104);
  v34[0] = v7;
  v22(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  v34[1] = "Always Use Moment Date";
  v35 = v22;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v22(v11, v21, v7);
  v23 = v40;
  sub_100063414();
  v24 = *(v16 + 56);
  v16 += 56;
  v24(v23, 0, 1, v36);
  v25 = v41;
  sub_1000630F4();
  v26 = sub_100063114();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v27 = *(v16 + 16);
  v28 = (*(v16 + 24) + 32) & ~*(v16 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100065BA0;
  sub_100064284();
  sub_1000635D4();
  v29 = v21;
  v30 = v21;
  v31 = v34[0];
  v32 = v35;
  v35(v11, v30, v34[0]);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v29, v31);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v29, v31);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_10002AE5C()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090CE8);
  sub_1000049B4(v0, qword_100090CE8);
  return sub_1000633E4();
}

uint64_t sub_10002AEC0()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090D00);
  v1 = sub_1000049B4(v0, qword_100090D00);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002AF80()
{
  result = swift_getKeyPath();
  qword_100090D18 = result;
  return result;
}

uint64_t sub_10002AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v7 = *(*(sub_1000021D4(&qword_100084DE0, &qword_1000659E0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = *(*(sub_1000021D4(&qword_100084DE8, &qword_1000659E8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(sub_1000021D4(&qword_100085CC0, &qword_100067CD0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = sub_100062E34();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = sub_1000021D4(&qword_100085CC8, &qword_100067CD8);
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_100064334();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v5[20] = v16;
  v5[21] = v18;

  return _swift_task_switch(sub_10002B1C0, v16, v18);
}

uint64_t sub_10002B1C0()
{
  v1 = v0[8];
  sub_100062E84();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_10002C544();
  *v3 = v0;
  v3[1] = sub_10002B290;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10002EC34, 0, &type metadata for SaveToPhotosEntity, v4);
}

uint64_t sub_10002B290()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10002B3B0, v4, v3);
}

uint64_t sub_10002B3B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100062E84();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 184) = v3;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_100084978 != -1)
  {
    swift_once();
  }

  v4 = qword_100090D18;
  *(v0 + 192) = qword_100090D18;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = sub_100009F14(&qword_100085CB0, &qword_100085CB8, &qword_100067CC0);
  *v6 = v0;
  v6[1] = sub_10002B510;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v4, &type metadata for Bool, v7);
}

uint64_t sub_10002B510()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100006034;
  }

  else
  {
    v8 = sub_10002B664;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10002B664()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_100062E84();
  v0[6] = v0[5];
  v8 = sub_100063224();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100063254();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000193BC();
  sub_10002C758();
  sub_100062E04();
  (*(v2 + 16))(v12, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10002B8D0()
{
  v0 = sub_1000021D4(&qword_100085CD0, &qword_100067CE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100084978 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_10002C758();
  sub_100009F14(&qword_100085CD8, &qword_100085CD0, &qword_100067CE0);
  sub_1000630D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10002BA44(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_10002BAB8(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_10002BB2C()
{
  if (qword_100084978 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002BB8C()
{
  result = qword_100085BA0;
  if (!qword_100085BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BA0);
  }

  return result;
}

unint64_t sub_10002BBE4()
{
  result = qword_100085BA8;
  if (!qword_100085BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BA8);
  }

  return result;
}

uint64_t sub_10002BCBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084970 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090D00);

  return sub_100009E78(v3, a1);
}

uint64_t sub_10002BD40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_10002BD68, 0, 0);
}

uint64_t sub_10002BD68()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_10002AFA8(v4, 0, 0, v2, v3);
}

uint64_t sub_10002BE08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002DF20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10002BE50()
{
  result = qword_100085BB0;
  if (!qword_100085BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BB0);
  }

  return result;
}

unint64_t sub_10002BEA8()
{
  result = qword_100085BB8;
  if (!qword_100085BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BB8);
  }

  return result;
}

uint64_t sub_10002BEFC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10002BFBC, 0, 0);
}

uint64_t sub_10002BFBC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.saveToPhotos(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002C0E0(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_10002C1A8, 0, 0);
}

uint64_t sub_10002C1A8()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_100009E20();
  v5 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v3 + 104))(v2, enum case for SettingsKey.saveToPhotos(_:), v4);
  sub_100063674();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1000642A4();

  [v5 setValue:isa forKey:v7];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002C2DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10002E384(0);
}

unint64_t sub_10002C38C()
{
  result = qword_100085BC0;
  if (!qword_100085BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BC0);
  }

  return result;
}

uint64_t sub_10002C3E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002C9F4();
  *v5 = v2;
  v5[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10002C494()
{
  result = qword_100085BC8;
  if (!qword_100085BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BC8);
  }

  return result;
}

unint64_t sub_10002C4EC()
{
  result = qword_100085BD0;
  if (!qword_100085BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BD0);
  }

  return result;
}

unint64_t sub_10002C544()
{
  result = qword_100085BD8;
  if (!qword_100085BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BD8);
  }

  return result;
}

uint64_t sub_10002C598(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002C9F4();
  *v6 = v2;
  v6[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10002C64C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002C9F4();
  *v5 = v2;
  v5[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10002C700()
{
  result = qword_100085BE0;
  if (!qword_100085BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BE0);
  }

  return result;
}

unint64_t sub_10002C758()
{
  result = qword_100085BE8;
  if (!qword_100085BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BE8);
  }

  return result;
}

unint64_t sub_10002C7B0()
{
  result = qword_100085BF0;
  if (!qword_100085BF0)
  {
    sub_10000221C(&qword_100085BF8, qword_100067680);
    sub_10002C758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085BF0);
  }

  return result;
}

uint64_t sub_10002C834(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002C38C();
  *v6 = v2;
  v6[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10002C8EC()
{
  result = qword_100085C00;
  if (!qword_100085C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C00);
  }

  return result;
}

unint64_t sub_10002C944()
{
  result = qword_100085C08;
  if (!qword_100085C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C08);
  }

  return result;
}

unint64_t sub_10002C99C()
{
  result = qword_100085C10;
  if (!qword_100085C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C10);
  }

  return result;
}

unint64_t sub_10002C9F4()
{
  result = qword_100085C18;
  if (!qword_100085C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C18);
  }

  return result;
}

unint64_t sub_10002CA4C()
{
  result = qword_100085C20;
  if (!qword_100085C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C20);
  }

  return result;
}

uint64_t sub_10002CAA0(uint64_t a1)
{
  v2 = sub_10002C544();

  return EntityURLRepresentation.init(_:)(0xD00000000000004CLL, 0x8000000100072940, a1, v2);
}

unint64_t sub_10002CB08()
{
  result = qword_100085C28;
  if (!qword_100085C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C28);
  }

  return result;
}

unint64_t sub_10002CB60()
{
  result = qword_100085C30;
  if (!qword_100085C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C30);
  }

  return result;
}

unint64_t sub_10002CBB8()
{
  result = qword_100085C38;
  if (!qword_100085C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C38);
  }

  return result;
}

uint64_t sub_10002CC0C@<X0>(uint64_t *a1@<X8>)
{
  sub_10002BEA8();
  result = sub_100062E64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002CC4C()
{
  sub_10002EBA8();
  v1 = sub_100063194();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10002CD34(uint64_t a1)
{
  v2 = sub_10002C544();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002CD84()
{
  result = qword_100085C50;
  if (!qword_100085C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C50);
  }

  return result;
}

uint64_t sub_10002CDDC(uint64_t a1)
{
  v2 = sub_10002CBB8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002CE2C()
{
  result = qword_100085C58;
  if (!qword_100085C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C58);
  }

  return result;
}

uint64_t sub_10002CE80()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D20);
  sub_1000049B4(v0, qword_100090D20);
  return sub_1000633E4();
}

uint64_t sub_10002CEE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000633F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000635E4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100064294();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100063404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100064284();
  sub_1000635D4();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100063414();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100063084();
  v18 = sub_100063074();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_10002D1E0(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_10002D258()
{
  result = qword_100085C60;
  if (!qword_100085C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C60);
  }

  return result;
}

uint64_t sub_10002D2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB00();
  v5 = sub_10002EBA8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10002D314()
{
  v0 = qword_100085B80;

  return v0;
}

unint64_t sub_10002D350()
{
  result = qword_100085C68;
  if (!qword_100085C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C68);
  }

  return result;
}

unint64_t sub_10002D3A8()
{
  result = qword_100085C70;
  if (!qword_100085C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C70);
  }

  return result;
}

uint64_t sub_10002D4A4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002EB00();
  v7 = sub_10002EB54();
  v8 = sub_10002EBA8();
  *v5 = v2;
  v5[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10002D570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002E6A4();
  *a1 = result;
  return result;
}

uint64_t sub_10002D598(uint64_t a1)
{
  v2 = sub_10002D258();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002D69C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  swift_getKeyPath();
  sub_10002BEA8();
  sub_100064184();
  sub_100063A34();
  v14 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70);
  sub_100063B04();

  (*(v19 + 8))(v4, v1);
  sub_100063A34();
  v24 = v1;
  v25 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v20 + 8))(v8, v5);
  v24 = v5;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v21;
  sub_100063B24();
  return (*(v22 + 8))(v13, v16);
}

uint64_t sub_10002DA94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10002DCA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10002DF20()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000631F4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_100063404();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_1000021D4(&qword_100085C90, &qword_100067CA0);
  sub_1000633E4();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_100062E34();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10002C544();
  v28 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100064314();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_100062EC4();
  return v28;
}

uint64_t sub_10002E384(uint64_t a1)
{
  v3 = sub_1000633F4();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = *(*(sub_1000635E4() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = *(*(sub_100064294() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = *(*(sub_100063404() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(sub_10002E4F0, v9, v11);
}

uint64_t sub_10002E4F0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000021D4(&qword_100085B98, qword_1000673E0);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  sub_100009F14(&qword_100085CB0, &qword_100085CB8, &qword_100067CC0);
  v7 = sub_100063284();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10002E6A4()
{
  v0 = sub_1000631F4();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000633F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000635E4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100064294();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100063404();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_1000021D4(&qword_100085C90, &qword_100067CA0);
  sub_100064284();
  sub_1000635D4();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100063414();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_100062E34();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10002C544();
  return sub_100062EB4();
}

unint64_t sub_10002EB00()
{
  result = qword_100085C98;
  if (!qword_100085C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085C98);
  }

  return result;
}

unint64_t sub_10002EB54()
{
  result = qword_100085CA0;
  if (!qword_100085CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085CA0);
  }

  return result;
}

unint64_t sub_10002EBA8()
{
  result = qword_100085CA8;
  if (!qword_100085CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085CA8);
  }

  return result;
}

uint64_t sub_10002EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    started = type metadata accessor for StartWritingWidgetTimelineEntry();
    v11 = *(*(started - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, started);
  }
}

uint64_t sub_10002ED78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    started = type metadata accessor for StartWritingWidgetTimelineEntry();
    v13 = *(*(started - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, started);
  }
}

uint64_t type metadata accessor for StartWritingWidgetView()
{
  result = qword_100085D40;
  if (!qword_100085D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002EECC()
{
  sub_10002EF50();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StartWritingWidgetTimelineEntry();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002EF50()
{
  if (!qword_100085D50)
  {
    sub_100064154();
    v0 = sub_100063784();
    if (!v1)
    {
      atomic_store(v0, &qword_100085D50);
    }
  }
}

uint64_t sub_10002F014@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v48 - v4;
  v5 = sub_100064154();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v48 = type metadata accessor for AppLaunchAction();
  v13 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000021D4(&qword_100085D80, &qword_100067E10);
  v16 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v18 = &v48 - v17;
  v19 = sub_1000021D4(&qword_100085D88, &unk_100067E18);
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v52 = &v48 - v21;
  v50 = v18;
  sub_10002F6F8(v18);
  v57 = v1;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v12);
  v22 = v6[13];
  v61 = enum case for WidgetFamily.accessoryCircular(_:);
  v59 = v22;
  v60 = v6 + 13;
  v22(v10);
  v58 = sub_100030E7C(&qword_100085768, &type metadata accessor for WidgetFamily);
  v23 = sub_100064274();
  v51 = v6;
  v24 = v6[1];
  v24(v10, v5);
  v24(v12, v5);
  v25 = 0;
  v26 = 0;
  if ((v23 & 1) == 0)
  {
    v27 = v57 + *(type metadata accessor for StartWritingWidgetView() + 20);
    v28 = v27 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 20);
    v25 = *(v28 + 16);
    v26 = *(v28 + 24);
  }

  v29 = sub_1000021D4(&qword_100084BC8, &qword_1000669D0);
  v30 = *(v29 + 48);
  *v15 = v25;
  *(v15 + 1) = v26;
  v31 = v57;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v12);
  v59(v10, v61, v5);
  v32 = sub_100064274();
  v24(v10, v5);
  v24(v12, v5);
  if (v32)
  {
    v33 = type metadata accessor for CanvasContentInputType();
    (*(*(v33 - 8) + 56))(&v15[v30], 1, 1, v33);
  }

  else
  {
    v15[v30] = 1;
    v34 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v34 - 8) + 56))(&v15[v30], 0, 1, v34);
  }

  v35 = *(v29 + 64);
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v12);
  v59(v10, v61, v5);
  v36 = sub_100064274();
  v24(v10, v5);
  v24(v12, v5);
  if (v36)
  {
    v37 = 1;
  }

  else
  {
    sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, &v15[v35]);
    v37 = 0;
  }

  (v51[7])(&v15[v35], v37, 1, v5);
  swift_storeEnumTagMultiPayload();
  v38 = v55;
  sub_1000197E8(v55);
  sub_1000310C4(v15, type metadata accessor for AppLaunchAction);
  sub_100030A30();
  v39 = v52;
  v40 = v50;
  sub_100063E34();
  sub_10000494C(v38, &qword_100084BC0, qword_100064C60);
  sub_10000494C(v40, &qword_100085D80, &qword_100067E10);
  v41 = v31 + *(type metadata accessor for StartWritingWidgetView() + 20);
  v42 = *(v41 + *(type metadata accessor for StartWritingWidgetTimelineEntry() + 28));
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v45 = v56;
  (*(v53 + 32))(v56, v39, v54);
  result = sub_1000021D4(&qword_100085E00, &unk_100067E78);
  v47 = (v45 + *(result + 36));
  *v47 = KeyPath;
  v47[1] = sub_100030E74;
  v47[2] = v44;
  return result;
}

uint64_t sub_10002F6F8@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v71 = sub_1000021D4(&qword_100085E08, &qword_100067E88);
  v2 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v72 = &v63 - v3;
  v85 = sub_1000021D4(&qword_100085DF0, &qword_100067E40);
  v4 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v74 = &v63 - v5;
  started = type metadata accessor for StartWritingWidgetSystemMediumView();
  v6 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v73 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for StartWritingWidgetSystemSmallView();
  v8 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_1000021D4(&qword_100085E10, &qword_100067E90);
  v11 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v13 = &v63 - v12;
  v79 = sub_1000021D4(&qword_100085DD0, &qword_100067E38);
  v14 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v81 = &v63 - v15;
  v75 = type metadata accessor for StartWritingWidgetAccessoryRectangularView();
  v16 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000021D4(&qword_100085E18, &qword_100067E98);
  v18 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v20 = &v63 - v19;
  v77 = sub_1000021D4(&qword_100085E20, &qword_100067EA0);
  v21 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v23 = &v63 - v22;
  v67 = sub_1000021D4(&qword_100085E28, &qword_100067EA8);
  v24 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v68 = &v63 - v25;
  v78 = sub_1000021D4(&qword_100085DB0, &qword_100067E30);
  v26 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v69 = &v63 - v27;
  v83 = sub_1000021D4(&qword_100085DA0, &qword_100067E28);
  v28 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v30 = &v63 - v29;
  v66 = type metadata accessor for StartWritingWidgetAccessoryInlineView();
  v31 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v64 = (&v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100064154();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v63 - v39;
  sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, &v63 - v39);
  v41 = (*(v34 + 88))(v40, v33);
  if (v41 == enum case for WidgetFamily.systemSmall(_:))
  {
    v42 = type metadata accessor for StartWritingWidgetView();
    v43 = v76;
    sub_10003105C(v1 + *(v42 + 20), v10 + *(v76 + 24), type metadata accessor for StartWritingWidgetTimelineEntry);
    *v10 = swift_getKeyPath();
    sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
    swift_storeEnumTagMultiPayload();
    v44 = *(v43 + 20);
    *(v10 + v44) = swift_getKeyPath();
    sub_1000021D4(&qword_100085318, &qword_100066A08);
    swift_storeEnumTagMultiPayload();
    sub_10003105C(v10, v13, type metadata accessor for StartWritingWidgetSystemSmallView);
    swift_storeEnumTagMultiPayload();
    sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView);
    sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView);
    v45 = v81;
    sub_100063B44();
    sub_100016718(v45, v23, &qword_100085DD0, &qword_100067E38);
    swift_storeEnumTagMultiPayload();
    sub_100030B48();
    sub_100030C58();
    sub_100063B44();
    sub_10000494C(v45, &qword_100085DD0, &qword_100067E38);
    sub_100016718(v30, v20, &qword_100085DA0, &qword_100067E28);
    swift_storeEnumTagMultiPayload();
    sub_100030ABC();
    sub_100030D44();
    sub_100063B44();
    sub_10000494C(v30, &qword_100085DA0, &qword_100067E28);
    v46 = type metadata accessor for StartWritingWidgetSystemSmallView;
    v47 = v10;
  }

  else
  {
    v48 = v1;
    v49 = v81;
    v63 = v20;
    if (v41 == enum case for WidgetFamily.systemMedium(_:))
    {
      v50 = type metadata accessor for StartWritingWidgetView();
      v51 = started;
      v52 = v73;
      sub_10003105C(v48 + *(v50 + 20), v73 + *(started + 28), type metadata accessor for StartWritingWidgetTimelineEntry);
      *v52 = swift_getKeyPath();
      sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
      swift_storeEnumTagMultiPayload();
      v53 = *(v51 + 20);
      *(v52 + v53) = swift_getKeyPath();
      sub_1000021D4(&qword_100085318, &qword_100066A08);
      swift_storeEnumTagMultiPayload();
      v54 = *(v51 + 24);
      *(v52 + v54) = swift_getKeyPath();
      sub_1000021D4(&qword_100085E38, &qword_100067F20);
      swift_storeEnumTagMultiPayload();
      sub_10003105C(v52, v72, type metadata accessor for StartWritingWidgetSystemMediumView);
      swift_storeEnumTagMultiPayload();
      sub_100030E7C(&qword_100085DF8, type metadata accessor for StartWritingWidgetSystemMediumView);
      v55 = v74;
      sub_100063B44();
      sub_100016718(v55, v63, &qword_100085DF0, &qword_100067E40);
      swift_storeEnumTagMultiPayload();
      sub_100030ABC();
      sub_100030D44();
      sub_100063B44();
      sub_10000494C(v55, &qword_100085DF0, &qword_100067E40);
      v56 = type metadata accessor for StartWritingWidgetSystemMediumView;
    }

    else
    {
      if (v41 == enum case for WidgetFamily.accessoryCircular(_:))
      {
        swift_storeEnumTagMultiPayload();
        sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView);
        sub_100030C04();
        v58 = v69;
        sub_100063B44();
        sub_100016718(v58, v23, &qword_100085DB0, &qword_100067E30);
        swift_storeEnumTagMultiPayload();
        sub_100030B48();
        sub_100030C58();
        sub_100063B44();
        sub_10000494C(v58, &qword_100085DB0, &qword_100067E30);
        sub_100016718(v30, v63, &qword_100085DA0, &qword_100067E28);
        swift_storeEnumTagMultiPayload();
        sub_100030ABC();
        sub_100030D44();
        sub_100063B44();
        return sub_10000494C(v30, &qword_100085DA0, &qword_100067E28);
      }

      if (v41 == enum case for WidgetFamily.accessoryRectangular(_:))
      {
        v59 = type metadata accessor for StartWritingWidgetView();
        v60 = v65;
        sub_10003105C(v48 + *(v59 + 20), v65, type metadata accessor for StartWritingWidgetTimelineEntry);
        sub_10003105C(v60, v13, type metadata accessor for StartWritingWidgetAccessoryRectangularView);
        swift_storeEnumTagMultiPayload();
        sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView);
        sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView);
        sub_100063B44();
        sub_100016718(v49, v23, &qword_100085DD0, &qword_100067E38);
        swift_storeEnumTagMultiPayload();
        sub_100030B48();
        sub_100030C58();
        sub_100063B44();
        sub_10000494C(v49, &qword_100085DD0, &qword_100067E38);
        sub_100016718(v30, v63, &qword_100085DA0, &qword_100067E28);
        swift_storeEnumTagMultiPayload();
        sub_100030ABC();
        sub_100030D44();
        sub_100063B44();
        sub_10000494C(v30, &qword_100085DA0, &qword_100067E28);
        v46 = type metadata accessor for StartWritingWidgetAccessoryRectangularView;
        v47 = v60;
        return sub_1000310C4(v47, v46);
      }

      if (v41 != enum case for WidgetFamily.accessoryInline(_:))
      {
        v86 = 0;
        v87 = 0xE000000000000000;
        sub_100064434(27);

        v86 = 0xD000000000000019;
        v87 = 0x8000000100072CC0;
        sub_1000307E0(&qword_100084C00, &qword_100066BB0, &type metadata accessor for WidgetFamily, v38);
        sub_100030E7C(&qword_100085E30, &type metadata accessor for WidgetFamily);
        v88._countAndFlagsBits = sub_100064584();
        sub_1000642D4(v88);

        (*(v34 + 8))(v38, v33);
        result = sub_100064474();
        __break(1u);
        return result;
      }

      v61 = type metadata accessor for StartWritingWidgetView();
      v52 = v64;
      sub_10003105C(v48 + *(v61 + 20), v64, type metadata accessor for StartWritingWidgetTimelineEntry);
      sub_10003105C(v52, v68, type metadata accessor for StartWritingWidgetAccessoryInlineView);
      swift_storeEnumTagMultiPayload();
      sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView);
      sub_100030C04();
      v62 = v69;
      sub_100063B44();
      sub_100016718(v62, v23, &qword_100085DB0, &qword_100067E30);
      swift_storeEnumTagMultiPayload();
      sub_100030B48();
      sub_100030C58();
      sub_100063B44();
      sub_10000494C(v62, &qword_100085DB0, &qword_100067E30);
      sub_100016718(v30, v63, &qword_100085DA0, &qword_100067E28);
      swift_storeEnumTagMultiPayload();
      sub_100030ABC();
      sub_100030D44();
      sub_100063B44();
      sub_10000494C(v30, &qword_100085DA0, &qword_100067E28);
      v56 = type metadata accessor for StartWritingWidgetAccessoryInlineView;
    }

    v46 = v56;
    v47 = v52;
  }

  return sub_1000310C4(v47, v46);
}

uint64_t sub_1000307E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000639F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000021D4(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100016718(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_100064384();
    v22 = sub_100063C64();
    sub_1000636D4();

    sub_1000639E4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_100030A30()
{
  result = qword_100085D90;
  if (!qword_100085D90)
  {
    sub_10000221C(&qword_100085D80, &qword_100067E10);
    sub_100030ABC();
    sub_100030D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D90);
  }

  return result;
}

unint64_t sub_100030ABC()
{
  result = qword_100085D98;
  if (!qword_100085D98)
  {
    sub_10000221C(&qword_100085DA0, &qword_100067E28);
    sub_100030B48();
    sub_100030C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085D98);
  }

  return result;
}

unint64_t sub_100030B48()
{
  result = qword_100085DA8;
  if (!qword_100085DA8)
  {
    sub_10000221C(&qword_100085DB0, &qword_100067E30);
    sub_100030E7C(&qword_100085DB8, type metadata accessor for StartWritingWidgetAccessoryInlineView);
    sub_100030C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DA8);
  }

  return result;
}

unint64_t sub_100030C04()
{
  result = qword_100085DC0;
  if (!qword_100085DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DC0);
  }

  return result;
}

unint64_t sub_100030C58()
{
  result = qword_100085DC8;
  if (!qword_100085DC8)
  {
    sub_10000221C(&qword_100085DD0, &qword_100067E38);
    sub_100030E7C(&qword_100085DD8, type metadata accessor for StartWritingWidgetAccessoryRectangularView);
    sub_100030E7C(&qword_100085DE0, type metadata accessor for StartWritingWidgetSystemSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DC8);
  }

  return result;
}

unint64_t sub_100030D44()
{
  result = qword_100085DE8;
  if (!qword_100085DE8)
  {
    sub_10000221C(&qword_100085DF0, &qword_100067E40);
    sub_100030E7C(&qword_100085DF8, type metadata accessor for StartWritingWidgetSystemMediumView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085DE8);
  }

  return result;
}

uint64_t sub_100030E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10003105C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000310C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100031128()
{
  result = qword_100085E40;
  if (!qword_100085E40)
  {
    sub_10000221C(&qword_100085E00, &unk_100067E78);
    sub_10000221C(&qword_100085D80, &qword_100067E10);
    sub_100030A30();
    swift_getOpaqueTypeConformance2();
    sub_1000311F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085E40);
  }

  return result;
}

unint64_t sub_1000311F0()
{
  result = qword_100085E48;
  if (!qword_100085E48)
  {
    sub_10000221C(&qword_100085E50, &qword_100067F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085E48);
  }

  return result;
}

uint64_t type metadata accessor for CanvasContentInputType()
{
  result = qword_100085EC8;
  if (!qword_100085EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000312A0()
{
  sub_100031314();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100031314()
{
  if (!qword_1000856B0)
  {
    sub_10003135C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000856B0);
    }
  }
}

void sub_10003135C()
{
  if (!qword_1000856B8)
  {
    sub_1000635A4();
    v0 = sub_1000643A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000856B8);
    }
  }
}

uint64_t sub_1000313D0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100031418(uint64_t a1)
{
  v2 = sub_100035BAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031454(uint64_t a1)
{
  v2 = sub_100035BAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000314DC(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_1000021D4(&qword_1000860B0, &qword_1000681D0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_1000021D4(&qword_1000860B8, &qword_1000681D8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_1000021D4(&qword_1000860C0, &qword_1000681E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100035B58();
  sub_100064604();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_100035BAC();
    sub_100064524();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_100035C00();
    sub_100064524();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_100031798()
{
  if (*v0)
  {
    result = 2036625250;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1000317C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_100064594() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100064594();

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

uint64_t sub_1000318AC(uint64_t a1)
{
  v2 = sub_100035B58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000318E8(uint64_t a1)
{
  v2 = sub_100035B58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100031924(uint64_t a1)
{
  v2 = sub_100035C00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031960(uint64_t a1)
{
  v2 = sub_100035C00();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10003199C()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000645C4(v1);
  return sub_1000645E4();
}

Swift::Int sub_1000319E4()
{
  v1 = *v0;
  sub_1000645B4();
  sub_1000645C4(v1);
  return sub_1000645E4();
}

uint64_t sub_100031A28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003571C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100031A78()
{
  result = qword_100085F00;
  if (!qword_100085F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F00);
  }

  return result;
}

uint64_t sub_100031ACC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100031C90(void *a1)
{
  v2 = sub_1000021D4(&qword_100086000, &qword_100068140);
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  __chkstk_darwin(v2);
  v103 = &v71 - v4;
  v5 = sub_1000021D4(&qword_100086008, &qword_100068148);
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  __chkstk_darwin(v5);
  v100 = &v71 - v7;
  v8 = sub_1000021D4(&qword_100086010, &qword_100068150);
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = *(v98 + 64);
  __chkstk_darwin(v8);
  v97 = &v71 - v10;
  v11 = sub_1000021D4(&qword_100086018, &qword_100068158);
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  __chkstk_darwin(v11);
  v94 = &v71 - v13;
  v14 = sub_1000021D4(&qword_100086020, &qword_100068160);
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  __chkstk_darwin(v14);
  v90 = &v71 - v16;
  v91 = sub_1000021D4(&qword_100086028, &qword_100068168);
  v89 = *(v91 - 8);
  v17 = *(v89 + 64);
  __chkstk_darwin(v91);
  v88 = &v71 - v18;
  v87 = sub_1000021D4(&qword_100086030, &qword_100068170);
  v86 = *(v87 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v87);
  v83 = &v71 - v20;
  v82 = sub_1000021D4(&qword_100086038, &qword_100068178);
  v80 = *(v82 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v71 - v22;
  v85 = sub_1000021D4(&qword_100086040, &qword_100068180);
  v84 = *(v85 - 8);
  v23 = *(v84 + 64);
  __chkstk_darwin(v85);
  v81 = &v71 - v24;
  v25 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v78 = &v71 - v27;
  v77 = sub_1000021D4(&qword_100086048, &qword_100068188);
  v76 = *(v77 - 8);
  v28 = *(v76 + 64);
  __chkstk_darwin(v77);
  v73 = &v71 - v29;
  v75 = sub_1000021D4(&qword_100086050, &qword_100068190);
  v74 = *(v75 - 8);
  v30 = *(v74 + 64);
  __chkstk_darwin(v75);
  v32 = &v71 - v31;
  v33 = sub_1000021D4(&qword_100086058, &qword_100068198);
  v72 = *(v33 - 8);
  v34 = *(v72 + 64);
  __chkstk_darwin(v33);
  v36 = &v71 - v35;
  v37 = type metadata accessor for CanvasContentInputType();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = &v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000021D4(&qword_100086060, &unk_1000681A0);
  v42 = *(v41 - 8);
  v108 = v41;
  v109 = v42;
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v71 - v44;
  v46 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100034B84();
  v107 = v45;
  sub_100064604();
  sub_100034A40(v106, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v120 = 9;
        sub_100034C80();
        v53 = v97;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        v57 = v98;
        v56 = v99;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v121 = 10;
        sub_100034C2C();
        v53 = v100;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        v57 = v101;
        v56 = v102;
      }

      else
      {
        v122 = 11;
        sub_100034BD8();
        v53 = v103;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        v57 = v104;
        v56 = v105;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v116 = 5;
        sub_100034DD0();
        v64 = v83;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        (*(v86 + 8))(v64, v87);
        return (*(v109 + 8))(v54, v55);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v118 = 7;
        sub_100034D28();
        v53 = v90;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        v57 = v92;
        v56 = v93;
      }

      else
      {
        v119 = 8;
        sub_100034CD4();
        v53 = v94;
        v54 = v107;
        v55 = v108;
        sub_100064524();
        v57 = v95;
        v56 = v96;
      }
    }

    (*(v57 + 8))(v53, v56);
    return (*(v109 + 8))(v54, v55);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v110 = 0;
      sub_100034FC8();
      v66 = v107;
      v65 = v108;
      sub_100064524();
      (*(v72 + 8))(v36, v33);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v113 = 2;
        sub_100034ECC();
        v58 = v73;
        v59 = v107;
        v60 = v108;
        sub_100064524();
        (*(v76 + 8))(v58, v77);
        return (*(v109 + 8))(v59, v60);
      }

      v115 = 4;
      sub_100034E24();
      v70 = v79;
      v66 = v107;
      v65 = v108;
      sub_100064524();
      (*(v80 + 8))(v70, v82);
    }

    return (*(v109 + 8))(v66, v65);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v48 = v78;
        sub_100034AA4(v40, v78);
        v114 = 3;
        sub_100034E78();
        v49 = v81;
        v51 = v107;
        v50 = v108;
        sub_100064524();
        sub_1000635A4();
        sub_1000356D4(&qword_100086068, &type metadata accessor for UUID);
        v52 = v85;
        sub_100064544();
        (*(v84 + 8))(v49, v52);
        sub_10000494C(v48, &qword_100085600, &qword_100066EC0);
      }

      else
      {
        v67 = *v40;
        v117 = 6;
        sub_100034D7C();
        v68 = v88;
        v51 = v107;
        v50 = v108;
        sub_100064524();
        v69 = v91;
        sub_100064564();
        (*(v89 + 8))(v68, v69);
      }
    }

    else
    {
      v62 = *v40;
      v112 = 1;
      sub_100034F20();
      v51 = v107;
      v50 = v108;
      sub_100064524();
      v111 = v62;
      sub_10003501C();
      v63 = v75;
      sub_100064574();
      (*(v74 + 8))(v32, v63);
    }

    return (*(v109 + 8))(v51, v50);
  }
}

void sub_1000329EC()
{
  v1 = sub_1000635A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for CanvasContentInputType();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034A40(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v18 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v18 = 10;
      }

      else
      {
        v18 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v18 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v18 = 7;
    }

    else
    {
      v18 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v18 = 2;
    }

    else
    {
      v18 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v19 = *v16;
    sub_1000645C4(1uLL);
    v18 = v19;
LABEL_25:
    sub_1000645C4(v18);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100034AA4(v16, v12);
    sub_1000645C4(3uLL);
    sub_100034B14(v12, v10);
    if ((*(v2 + 48))(v10, 1, v1) == 1)
    {
      sub_1000645D4(0);
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
      sub_1000645D4(1u);
      sub_1000356D4(&qword_100085F10, &type metadata accessor for UUID);
      sub_100064244();
      (*(v2 + 8))(v5, v1);
    }

    sub_10000494C(v12, &qword_100085600, &qword_100066EC0);
  }

  else
  {
    v20 = *v16;
    sub_1000645C4(6uLL);
    sub_1000645D4(v20);
  }
}

uint64_t sub_100032D40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v130 = sub_1000021D4(&qword_100085F18, &qword_1000680D0);
  v143 = *(v130 - 8);
  v3 = *(v143 + 64);
  __chkstk_darwin(v130);
  v139 = &v101 - v4;
  v129 = sub_1000021D4(&qword_100085F20, &qword_1000680D8);
  v128 = *(v129 - 8);
  v5 = *(v128 + 64);
  __chkstk_darwin(v129);
  v138 = &v101 - v6;
  v127 = sub_1000021D4(&qword_100085F28, &qword_1000680E0);
  v126 = *(v127 - 8);
  v7 = *(v126 + 64);
  __chkstk_darwin(v127);
  v135 = &v101 - v8;
  v125 = sub_1000021D4(&qword_100085F30, &qword_1000680E8);
  v124 = *(v125 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v125);
  v137 = &v101 - v10;
  v123 = sub_1000021D4(&qword_100085F38, &qword_1000680F0);
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  __chkstk_darwin(v123);
  v136 = &v101 - v12;
  v121 = sub_1000021D4(&qword_100085F40, &qword_1000680F8);
  v120 = *(v121 - 8);
  v13 = *(v120 + 64);
  __chkstk_darwin(v121);
  v142 = &v101 - v14;
  v119 = sub_1000021D4(&qword_100085F48, &qword_100068100);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v119);
  v134 = &v101 - v16;
  v116 = sub_1000021D4(&qword_100085F50, &qword_100068108);
  v114 = *(v116 - 8);
  v17 = *(v114 + 64);
  __chkstk_darwin(v116);
  v133 = &v101 - v18;
  v115 = sub_1000021D4(&qword_100085F58, &qword_100068110);
  v117 = *(v115 - 8);
  v19 = *(v117 + 64);
  __chkstk_darwin(v115);
  v141 = &v101 - v20;
  v113 = sub_1000021D4(&qword_100085F60, &qword_100068118);
  v112 = *(v113 - 8);
  v21 = *(v112 + 64);
  __chkstk_darwin(v113);
  v131 = &v101 - v22;
  v111 = sub_1000021D4(&qword_100085F68, &qword_100068120);
  v110 = *(v111 - 8);
  v23 = *(v110 + 64);
  __chkstk_darwin(v111);
  v132 = &v101 - v24;
  v108 = sub_1000021D4(&qword_100085F70, &qword_100068128);
  v109 = *(v108 - 8);
  v25 = *(v109 + 64);
  __chkstk_darwin(v108);
  v140 = &v101 - v26;
  v27 = sub_1000021D4(&qword_100085F78, &qword_100068130);
  v145 = *(v27 - 8);
  v146 = v27;
  v28 = *(v145 + 64);
  __chkstk_darwin(v27);
  v30 = &v101 - v29;
  v31 = type metadata accessor for CanvasContentInputType();
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v101 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v101 - v40;
  __chkstk_darwin(v39);
  v43 = &v101 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v148 = a1;
  sub_1000226A8(a1, v45);
  sub_100034B84();
  v46 = v147;
  sub_1000645F4();
  if (!v46)
  {
    v102 = v41;
    v103 = v35;
    v47 = v140;
    v104 = v38;
    v49 = v141;
    v48 = v142;
    v106 = 0;
    v50 = v143;
    v107 = v31;
    v105 = v43;
    v51 = v144;
    v147 = v30;
    v52 = sub_100064514();
    if (*(v52 + 16) != 1 || (v53 = *(v52 + 32), v53 == 12))
    {
      v59 = sub_100064454();
      swift_allocError();
      v61 = v60;
      v62 = *(sub_1000021D4(&qword_100085F88, &qword_100068138) + 48);
      *v61 = v107;
      v64 = v146;
      v63 = v147;
      sub_1000644B4();
      sub_100064444();
      (*(*(v59 - 8) + 104))(v61, enum case for DecodingError.typeMismatch(_:), v59);
      swift_willThrow();
      goto LABEL_11;
    }

    if (*(v52 + 32) <= 5u)
    {
      if (*(v52 + 32) <= 2u)
      {
        v54 = v106;
        if (*(v52 + 32))
        {
          v143 = v52;
          v55 = v146;
          if (v53 == 1)
          {
            v151 = 1;
            sub_100034F20();
            v56 = v132;
            v57 = v147;
            sub_1000644A4();
            v58 = v145;
            if (v54)
            {
              (*(v145 + 8))(v57, v55);
LABEL_12:
              swift_unknownObjectRelease();
              return sub_1000226EC(v148);
            }

            sub_100034F74();
            v96 = v111;
            sub_100064504();
            (*(v110 + 8))(v56, v96);
            (*(v58 + 8))(v57, v55);
            swift_unknownObjectRelease();
            v99 = v102;
            *v102 = v150;
            goto LABEL_50;
          }

          v152 = 2;
          sub_100034ECC();
          v89 = v131;
          v90 = v147;
          sub_1000644A4();
          v91 = v145;
          if (v54)
          {
            (*(v145 + 8))(v90, v55);
            goto LABEL_12;
          }

          (*(v112 + 8))(v89, v113);
          (*(v91 + 8))(v90, v55);
          swift_unknownObjectRelease();
          v72 = v105;
LABEL_46:
          swift_storeEnumTagMultiPayload();
LABEL_52:
          v69 = v51;
          goto LABEL_53;
        }

        v149 = 0;
        sub_100034FC8();
        v64 = v146;
        v63 = v147;
        sub_1000644A4();
        if (!v54)
        {
          (*(v109 + 8))(v47, v108);
          (*(v145 + 8))(v63, v64);
          swift_unknownObjectRelease();
          v72 = v105;
          goto LABEL_46;
        }

LABEL_11:
        (*(v145 + 8))(v63, v64);
        goto LABEL_12;
      }

      v73 = v106;
      if (v53 != 3)
      {
        v74 = v145;
        v75 = v147;
        if (v53 == 4)
        {
          v154 = 4;
          sub_100034E24();
          v76 = v133;
          v77 = v146;
          sub_1000644A4();
          if (!v73)
          {
            v69 = v51;
            (*(v114 + 8))(v76, v116);
            (*(v74 + 8))(v75, v77);
            swift_unknownObjectRelease();
            v72 = v105;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        else
        {
          v155 = 5;
          sub_100034DD0();
          v93 = v134;
          v77 = v146;
          sub_1000644A4();
          if (!v73)
          {
            v69 = v51;
            (*(v118 + 8))(v93, v119);
            (*(v74 + 8))(v75, v77);
            swift_unknownObjectRelease();
            v72 = v105;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        (*(v74 + 8))(v75, v77);
        goto LABEL_12;
      }

      v153 = 3;
      sub_100034E78();
      v84 = v49;
      v79 = v146;
      v68 = v147;
      sub_1000644A4();
      v67 = v145;
      if (!v73)
      {
        sub_1000635A4();
        sub_1000356D4(&qword_100085FD8, &type metadata accessor for UUID);
        v85 = v104;
        v86 = v115;
        sub_1000644D4();
        (*(v117 + 8))(v84, v86);
        (*(v67 + 8))(v68, v146);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v100 = v85;
LABEL_51:
        v72 = v105;
        sub_10001BF8C(v100, v105);
        goto LABEL_52;
      }

LABEL_34:
      (*(v67 + 8))(v68, v79);
      goto LABEL_12;
    }

    v67 = v145;
    v66 = v146;
    v68 = v147;
    if (*(v52 + 32) <= 8u)
    {
      if (v53 == 6)
      {
        v156 = 6;
        sub_100034D7C();
        v81 = v48;
        v79 = v66;
        v82 = v106;
        sub_1000644A4();
        if (!v82)
        {
          v83 = v121;
          v97 = sub_1000644F4();
          (*(v120 + 8))(v81, v83);
          (*(v67 + 8))(v68, v146);
          swift_unknownObjectRelease();
          v98 = v97 & 1;
          v99 = v103;
          *v103 = v98;
LABEL_50:
          swift_storeEnumTagMultiPayload();
          v100 = v99;
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v69 = v51;
      v70 = v106;
      if (v53 == 7)
      {
        v157 = 7;
        sub_100034D28();
        v71 = v136;
        sub_1000644A4();
        if (!v70)
        {
          (*(v122 + 8))(v71, v123);
          (*(v67 + 8))(v68, v146);
          swift_unknownObjectRelease();
          v72 = v105;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      else
      {
        v158 = 8;
        sub_100034CD4();
        v92 = v137;
        sub_1000644A4();
        if (!v70)
        {
          (*(v124 + 8))(v92, v125);
          (*(v67 + 8))(v68, v146);
          swift_unknownObjectRelease();
          v72 = v105;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      (*(v67 + 8))(v68, v146);
      goto LABEL_12;
    }

    v69 = v51;
    if (v53 == 9)
    {
      v159 = 9;
      sub_100034C80();
      v87 = v135;
      v79 = v66;
      v88 = v106;
      sub_1000644A4();
      if (!v88)
      {
        (*(v126 + 8))(v87, v127);
        (*(v67 + 8))(v68, v66);
        swift_unknownObjectRelease();
        v72 = v105;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v53 == 10)
    {
      v160 = 10;
      sub_100034C2C();
      v78 = v138;
      v79 = v66;
      v80 = v106;
      sub_1000644A4();
      if (!v80)
      {
        (*(v128 + 8))(v78, v129);
        (*(v67 + 8))(v68, v66);
        swift_unknownObjectRelease();
        v72 = v105;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    v161 = 11;
    sub_100034BD8();
    v94 = v139;
    v95 = v106;
    sub_1000644A4();
    if (v95)
    {
      (*(v67 + 8))(v68, v66);
      swift_unknownObjectRelease();
      return sub_1000226EC(v148);
    }

    (*(v50 + 8))(v94, v130);
    (*(v67 + 8))(v68, v66);
    swift_unknownObjectRelease();
    v72 = v105;
    swift_storeEnumTagMultiPayload();
    v69 = v51;
LABEL_53:
    sub_10001BF8C(v72, v69);
  }

  return sub_1000226EC(v148);
}

uint64_t sub_1000340F4(uint64_t a1)
{
  v2 = sub_100034D7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034130(uint64_t a1)
{
  v2 = sub_100034D7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003416C(uint64_t a1)
{
  v2 = sub_100034DD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000341A8(uint64_t a1)
{
  v2 = sub_100034DD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100036C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100034234(uint64_t a1)
{
  v2 = sub_100034B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034270(uint64_t a1)
{
  v2 = sub_100034B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000342AC(uint64_t a1)
{
  v2 = sub_100034ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000342E8(uint64_t a1)
{
  v2 = sub_100034ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034324(uint64_t a1)
{
  v2 = sub_100034C2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034360(uint64_t a1)
{
  v2 = sub_100034C2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000343D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100064594();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100034450(uint64_t a1)
{
  v2 = sub_100034F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003448C(uint64_t a1)
{
  v2 = sub_100034F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000344C8(uint64_t a1)
{
  v2 = sub_100034D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034504(uint64_t a1)
{
  v2 = sub_100034D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034540(uint64_t a1)
{
  v2 = sub_100034FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003457C(uint64_t a1)
{
  v2 = sub_100034FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000345B8(uint64_t a1)
{
  v2 = sub_100034BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000345F4(uint64_t a1)
{
  v2 = sub_100034BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034630(uint64_t a1)
{
  v2 = sub_100034E24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003466C(uint64_t a1)
{
  v2 = sub_100034E24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000346A8(uint64_t a1)
{
  v2 = sub_100034C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000346E4(uint64_t a1)
{
  v2 = sub_100034C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034720(uint64_t a1)
{
  v2 = sub_100034CD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003475C(uint64_t a1)
{
  v2 = sub_100034CD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100034798()
{
  sub_1000645B4();
  sub_1000645C4(0);
  return sub_1000645E4();
}

Swift::Int sub_1000347DC()
{
  sub_1000645B4();
  sub_1000645C4(0);
  return sub_1000645E4();
}

uint64_t sub_100034838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100072D90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_100064594();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000348CC(uint64_t a1)
{
  v2 = sub_100034E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034908(uint64_t a1)
{
  v2 = sub_100034E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100034944()
{
  sub_1000645B4();
  sub_1000329EC();
  return sub_1000645E4();
}

Swift::Int sub_100034988()
{
  sub_1000645B4();
  sub_1000329EC();
  return sub_1000645E4();
}

uint64_t sub_100034A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100034B84()
{
  result = qword_100085F80;
  if (!qword_100085F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F80);
  }

  return result;
}

unint64_t sub_100034BD8()
{
  result = qword_100085F90;
  if (!qword_100085F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F90);
  }

  return result;
}

unint64_t sub_100034C2C()
{
  result = qword_100085F98;
  if (!qword_100085F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085F98);
  }

  return result;
}

unint64_t sub_100034C80()
{
  result = qword_100085FA0;
  if (!qword_100085FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FA0);
  }

  return result;
}

unint64_t sub_100034CD4()
{
  result = qword_100085FA8;
  if (!qword_100085FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FA8);
  }

  return result;
}

unint64_t sub_100034D28()
{
  result = qword_100085FB0;
  if (!qword_100085FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FB0);
  }

  return result;
}

unint64_t sub_100034D7C()
{
  result = qword_100085FB8;
  if (!qword_100085FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FB8);
  }

  return result;
}

unint64_t sub_100034DD0()
{
  result = qword_100085FC0;
  if (!qword_100085FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FC0);
  }

  return result;
}

unint64_t sub_100034E24()
{
  result = qword_100085FC8;
  if (!qword_100085FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FC8);
  }

  return result;
}

unint64_t sub_100034E78()
{
  result = qword_100085FD0;
  if (!qword_100085FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FD0);
  }

  return result;
}

unint64_t sub_100034ECC()
{
  result = qword_100085FE0;
  if (!qword_100085FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FE0);
  }

  return result;
}

unint64_t sub_100034F20()
{
  result = qword_100085FE8;
  if (!qword_100085FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FE8);
  }

  return result;
}

unint64_t sub_100034F74()
{
  result = qword_100085FF0;
  if (!qword_100085FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FF0);
  }

  return result;
}

unint64_t sub_100034FC8()
{
  result = qword_100085FF8;
  if (!qword_100085FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085FF8);
  }

  return result;
}

unint64_t sub_10003501C()
{
  result = qword_100086070;
  if (!qword_100086070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086070);
  }

  return result;
}

uint64_t sub_100035070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000635A4();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100085600, &qword_100066EC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v44 = &v43 - v9;
  v10 = sub_1000021D4(&qword_100085750, &qword_100067088);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for CanvasContentInputType();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v43 - v20;
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = sub_1000021D4(&qword_100086078, &qword_1000681B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v43 - v27;
  v29 = *(v26 + 56);
  sub_100034A40(a1, &v43 - v27);
  sub_100034A40(a2, &v28[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100034A40(v28, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v10 + 48);
        sub_100034AA4(v21, v13);
        sub_100034AA4(&v28[v29], &v13[v31]);
        v33 = v45;
        v32 = v46;
        v34 = *(v45 + 48);
        if (v34(v13, 1, v46) == 1)
        {
          if (v34(&v13[v31], 1, v32) == 1)
          {
            sub_10000494C(v13, &qword_100085600, &qword_100066EC0);
LABEL_38:
            sub_100035678(v28);
            v37 = 1;
            return v37 & 1;
          }
        }

        else
        {
          v39 = v44;
          sub_100034B14(v13, v44);
          if (v34(&v13[v31], 1, v32) != 1)
          {
            v40 = v43;
            (*(v33 + 32))(v43, &v13[v31], v32);
            sub_1000356D4(&qword_100085770, &type metadata accessor for UUID);
            v41 = sub_100064274();
            v42 = *(v33 + 8);
            v42(v40, v32);
            v42(v39, v32);
            sub_10000494C(v13, &qword_100085600, &qword_100066EC0);
            if (v41)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v33 + 8))(v39, v32);
        }

        sub_10000494C(v13, &qword_100085750, &qword_100067088);
LABEL_46:
        sub_100035678(v28);
        goto LABEL_41;
      }

      sub_10000494C(v21, &qword_100085600, &qword_100066EC0);
LABEL_40:
      sub_10000494C(v28, &qword_100086078, &qword_1000681B0);
LABEL_41:
      v37 = 0;
      return v37 & 1;
    }

    sub_100034A40(v28, v18);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v35 = *v18;
  }

  else
  {
    sub_100034A40(v28, v23);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v35 = *v23;
  }

  v36 = v35 ^ v28[v29];
  sub_100035678(v28);
  v37 = v36 ^ 1;
  return v37 & 1;
}

uint64_t sub_100035678(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000356D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003571C(uint64_t *a1)
{
  v29 = sub_1000021D4(&qword_100086080, &qword_1000681B8);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_1000021D4(&qword_100086088, &qword_1000681C0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_1000021D4(&qword_100086090, &qword_1000681C8);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_1000226A8(a1, a1[3]);
  sub_100035B58();
  v14 = v31;
  sub_1000645F4();
  if (v14)
  {
    return sub_1000226EC(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_100064514();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_100064454();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_1000021D4(&qword_100085F88, &qword_100068138) + 48);
    *v22 = &type metadata for CanvasContentInputType.KeyboardFocus;
    sub_1000644B4();
    sub_100064444();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_1000226EC(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_100035BAC();
    sub_1000644A4();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_100035C00();
    sub_1000644A4();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_1000226EC(v31);
  return v32;
}

unint64_t sub_100035B58()
{
  result = qword_100086098;
  if (!qword_100086098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086098);
  }

  return result;
}

unint64_t sub_100035BAC()
{
  result = qword_1000860A0;
  if (!qword_1000860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860A0);
  }

  return result;
}

unint64_t sub_100035C00()
{
  result = qword_1000860A8;
  if (!qword_1000860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100035E48(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_100035E98(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100035F78()
{
  result = qword_1000860C8;
  if (!qword_1000860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860C8);
  }

  return result;
}

unint64_t sub_100035FD0()
{
  result = qword_1000860D0;
  if (!qword_1000860D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860D0);
  }

  return result;
}

unint64_t sub_100036028()
{
  result = qword_1000860D8;
  if (!qword_1000860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860D8);
  }

  return result;
}

unint64_t sub_100036080()
{
  result = qword_1000860E0;
  if (!qword_1000860E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E0);
  }

  return result;
}

unint64_t sub_1000360D8()
{
  result = qword_1000860E8;
  if (!qword_1000860E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860E8);
  }

  return result;
}

unint64_t sub_100036130()
{
  result = qword_1000860F0;
  if (!qword_1000860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F0);
  }

  return result;
}

unint64_t sub_100036188()
{
  result = qword_1000860F8;
  if (!qword_1000860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000860F8);
  }

  return result;
}

unint64_t sub_1000361E0()
{
  result = qword_100086100;
  if (!qword_100086100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086100);
  }

  return result;
}

unint64_t sub_100036238()
{
  result = qword_100086108;
  if (!qword_100086108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086108);
  }

  return result;
}

unint64_t sub_100036290()
{
  result = qword_100086110;
  if (!qword_100086110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086110);
  }

  return result;
}

unint64_t sub_1000362E8()
{
  result = qword_100086118;
  if (!qword_100086118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086118);
  }

  return result;
}

unint64_t sub_100036340()
{
  result = qword_100086120;
  if (!qword_100086120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086120);
  }

  return result;
}

unint64_t sub_100036398()
{
  result = qword_100086128;
  if (!qword_100086128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086128);
  }

  return result;
}

unint64_t sub_1000363F0()
{
  result = qword_100086130;
  if (!qword_100086130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086130);
  }

  return result;
}

unint64_t sub_100036448()
{
  result = qword_100086138;
  if (!qword_100086138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086138);
  }

  return result;
}

unint64_t sub_1000364A0()
{
  result = qword_100086140;
  if (!qword_100086140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086140);
  }

  return result;
}

unint64_t sub_1000364F8()
{
  result = qword_100086148;
  if (!qword_100086148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086148);
  }

  return result;
}

unint64_t sub_100036550()
{
  result = qword_100086150;
  if (!qword_100086150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086150);
  }

  return result;
}

unint64_t sub_1000365A8()
{
  result = qword_100086158;
  if (!qword_100086158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086158);
  }

  return result;
}

unint64_t sub_100036600()
{
  result = qword_100086160;
  if (!qword_100086160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086160);
  }

  return result;
}

unint64_t sub_100036658()
{
  result = qword_100086168;
  if (!qword_100086168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086168);
  }

  return result;
}

unint64_t sub_1000366B0()
{
  result = qword_100086170;
  if (!qword_100086170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086170);
  }

  return result;
}

unint64_t sub_100036708()
{
  result = qword_100086178;
  if (!qword_100086178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086178);
  }

  return result;
}

unint64_t sub_100036760()
{
  result = qword_100086180;
  if (!qword_100086180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086180);
  }

  return result;
}

unint64_t sub_1000367B8()
{
  result = qword_100086188;
  if (!qword_100086188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086188);
  }

  return result;
}

unint64_t sub_100036810()
{
  result = qword_100086190;
  if (!qword_100086190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086190);
  }

  return result;
}

unint64_t sub_100036868()
{
  result = qword_100086198;
  if (!qword_100086198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086198);
  }

  return result;
}

unint64_t sub_1000368C0()
{
  result = qword_1000861A0;
  if (!qword_1000861A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861A0);
  }

  return result;
}

unint64_t sub_100036918()
{
  result = qword_1000861A8;
  if (!qword_1000861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861A8);
  }

  return result;
}

unint64_t sub_100036970()
{
  result = qword_1000861B0;
  if (!qword_1000861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861B0);
  }

  return result;
}

unint64_t sub_1000369C8()
{
  result = qword_1000861B8;
  if (!qword_1000861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861B8);
  }

  return result;
}

unint64_t sub_100036A20()
{
  result = qword_1000861C0;
  if (!qword_1000861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861C0);
  }

  return result;
}

unint64_t sub_100036A78()
{
  result = qword_1000861C8;
  if (!qword_1000861C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861C8);
  }

  return result;
}

unint64_t sub_100036AD0()
{
  result = qword_1000861D0;
  if (!qword_1000861D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861D0);
  }

  return result;
}

unint64_t sub_100036B28()
{
  result = qword_1000861D8;
  if (!qword_1000861D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861D8);
  }

  return result;
}

unint64_t sub_100036B80()
{
  result = qword_1000861E0;
  if (!qword_1000861E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861E0);
  }

  return result;
}

unint64_t sub_100036BD8()
{
  result = qword_1000861E8;
  if (!qword_1000861E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000861E8);
  }

  return result;
}

uint64_t sub_100036C2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072D10 == a2 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072D30 == a2 || (sub_100064594() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (sub_100064594() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (sub_100064594() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (sub_100064594() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (sub_100064594() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100072D50 == a2 || (sub_100064594() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100072D70 == a2 || (sub_100064594() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (sub_100064594() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = sub_100064594();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100037068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100063574();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000371B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100063574();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for StartWritingWidgetTimelineEntry()
{
  result = qword_100086250;
  if (!qword_100086250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037330()
{
  sub_100063574();
  if (v0 <= 0x3F)
  {
    sub_1000373D4();
    if (v1 <= 0x3F)
    {
      sub_10003742C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000373D4()
{
  if (!qword_100086260)
  {
    sub_100064204();
    v0 = sub_1000643A4();
    if (!v1)
    {
      atomic_store(v0, &qword_100086260);
    }
  }
}

void sub_10003742C()
{
  if (!qword_100086268)
  {
    v0 = sub_1000643A4();
    if (!v1)
    {
      atomic_store(v0, &qword_100086268);
    }
  }
}

uint64_t sub_10003748C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000861F0, &unk_100068FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037544()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000633F4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000635E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100064294();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100063404();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100063244();
  sub_100009DBC(v15, qword_100090D38);
  sub_1000049B4(v15, qword_100090D38);
  sub_100064284();
  sub_1000635D4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100063414();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100063234();
}

uint64_t sub_100037834@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1000021D4(&qword_100084DB8, "̷");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = v34 - v3;
  v4 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v41 = v34 - v6;
  v7 = sub_1000633F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000635E4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100064294();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v37 = sub_100063404();
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v37);
  v39 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v38 = v34 - v20;
  sub_100064284();
  sub_1000635D4();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v8 + 104);
  v22(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  v34[2] = "Always Use Moment Date";
  v35 = v22;
  v34[1] = v8 + 104;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v23 = v7;
  v22(v11, v21, v7);
  v24 = v41;
  sub_100063414();
  v25 = *(v16 + 56);
  v16 += 56;
  v25(v24, 0, 1, v37);
  v26 = v42;
  sub_1000630F4();
  v27 = sub_100063114();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v28 = *(v16 + 16);
  v29 = (*(v16 + 24) + 32) & ~*(v16 + 24);
  v36 = 2 * v28;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100066C80;
  sub_100064284();
  sub_1000635D4();
  v30 = v21;
  v31 = v21;
  v32 = v35;
  v35(v11, v31, v23);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v30, v23);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v30, v23);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v11, v30, v23);
  sub_100063414();
  return sub_100063124();
}

uint64_t sub_100037EA4()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D50);
  sub_1000049B4(v0, qword_100090D50);
  return sub_1000633E4();
}

uint64_t sub_100037F08()
{
  v0 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  sub_100009DBC(v0, qword_100090D68);
  v1 = sub_1000049B4(v0, qword_100090D68);
  sub_100063064();
  v2 = sub_100063074();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100037FC8()
{
  result = swift_getKeyPath();
  qword_100090D80 = result;
  return result;
}

uint64_t sub_100037FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v7 = *(*(sub_1000021D4(&qword_100084DE0, &qword_1000659E0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = *(*(sub_1000021D4(&qword_100084DE8, &qword_1000659E8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(sub_1000021D4(&qword_1000863E0, &qword_100069900) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = sub_100062E34();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = sub_1000021D4(&qword_1000863E8, &qword_100069908);
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_100064334();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v5[20] = v16;
  v5[21] = v18;

  return _swift_task_switch(sub_100038208, v16, v18);
}

uint64_t sub_100038208()
{
  v1 = v0[8];
  sub_100062E84();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_10003958C();
  *v3 = v0;
  v3[1] = sub_1000382D8;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10003BC88, 0, &type metadata for SkipJournalingSuggestionsEntity, v4);
}

uint64_t sub_1000382D8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_1000383F8, v4, v3);
}

uint64_t sub_1000383F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100062E84();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 184) = v3;
  sub_100062E84();
  *(v0 + 217) = *(v0 + 216);
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }

  v4 = qword_100090D80;
  *(v0 + 192) = qword_100090D80;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  v7 = sub_100009F14(&qword_1000863D0, &qword_1000863D8, &qword_1000698F0);
  *v6 = v0;
  v6[1] = sub_100038558;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 217, v4, &type metadata for Bool, v7);
}

uint64_t sub_100038558()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_100006034;
  }

  else
  {
    v8 = sub_1000386AC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1000386AC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_100062E84();
  v0[6] = v0[5];
  v8 = sub_100063224();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100063254();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100019368();
  sub_1000397A0();
  sub_100062E04();
  (*(v2 + 16))(v12, v1, v3);
  sub_100062E24();
  sub_100062E44();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100038918()
{
  v0 = sub_1000021D4(&qword_1000863F0, &qword_100069910);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }

  sub_1000630E4();

  sub_1000397A0();
  sub_100009F14(&qword_1000863F8, &qword_1000863F0, &qword_100069910);
  sub_1000630D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100038A8C(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_100062E74();
  return sub_100006368;
}

uint64_t (*sub_100038B00(uint64_t *a1))()
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

uint64_t sub_100038B74()
{
  if (qword_1000849A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100038BD4()
{
  result = qword_1000862C0;
  if (!qword_1000862C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862C0);
  }

  return result;
}

unint64_t sub_100038C2C()
{
  result = qword_1000862C8;
  if (!qword_1000862C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862C8);
  }

  return result;
}

uint64_t sub_100038D04@<X0>(uint64_t a1@<X8>)
{
  if (qword_100084998 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100084E10, &unk_100065A30);
  v3 = sub_1000049B4(v2, qword_100090D68);

  return sub_100009E78(v3, a1);
}

uint64_t sub_100038D88(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_100038DB0, 0, 0);
}

uint64_t sub_100038DB0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100006768;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100037FF0(v4, 0, 0, v2, v3);
}

uint64_t sub_100038E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003AF6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100038E98()
{
  result = qword_1000862D0;
  if (!qword_1000862D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862D0);
  }

  return result;
}

unint64_t sub_100038EF0()
{
  result = qword_1000862D8;
  if (!qword_1000862D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862D8);
  }

  return result;
}

uint64_t sub_100038F44(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100063684();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039004, 0, 0);
}

uint64_t sub_100039004()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100009E20();
  v5 = sub_100064394();
  (*(v2 + 104))(v1, enum case for SettingsKey.skipJournalingSuggestions(_:), v3);
  sub_100063674();
  (*(v2 + 8))(v1, v3);
  v6 = sub_1000642A4();

  LOBYTE(v3) = [v5 BOOLForKey:v6];

  *v4 = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100039128(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100063684();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a2;

  return _swift_task_switch(sub_1000391F0, 0, 0);
}

uint64_t sub_1000391F0()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_100009E20();
  v5 = sub_100064394();
  isa = sub_100064324().super.super.isa;
  (*(v3 + 104))(v2, enum case for SettingsKey.skipJournalingSuggestions(_:), v4);
  sub_100063674();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1000642A4();

  [v5 setValue:isa forKey:v7];

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100039324(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A088;

  return sub_10003B3E0(0);
}

unint64_t sub_1000393D4()
{
  result = qword_1000862E0;
  if (!qword_1000862E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862E0);
  }

  return result;
}

uint64_t sub_100039428(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100039A3C();
  *v5 = v2;
  v5[1] = sub_100006EE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}