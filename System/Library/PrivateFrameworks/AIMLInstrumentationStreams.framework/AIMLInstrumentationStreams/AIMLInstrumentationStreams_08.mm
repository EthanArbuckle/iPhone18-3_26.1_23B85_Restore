uint64_t sub_23C61DEBC@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C86E780();
  if (v3)
  {
    v4 = v3;
    v5 = sub_23C870CF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = EventGraph.uei.getter();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_32;
  }

  v8 = v6;
  v50 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v38 = v8;
    v40 = v5;
    v41 = a1;
    v11 = 0;
    v5 = (v9 & 0xC000000000000001);
    v8 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v12 = MEMORY[0x23EED7610](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v1 = v12;
      v7 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7F8, 0x277D5AC58);
      v13 = sub_23C870D44();
      if (v13)
      {

        sub_23C871D54();
        a1 = v50[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v11;
      if (v7 == i)
      {
        v14 = v50;
        a1 = v41;
        v7 = MEMORY[0x277D84F90];
        v8 = v38;
        v5 = v40;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!*(v14 + 16))
  {
LABEL_31:

LABEL_32:
    v17 = 0;
    goto LABEL_33;
  }

LABEL_23:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v17 = sub_23C870CF4();

LABEL_33:
  v1 = sub_23C62A1DC(v5, v17);
  LOBYTE(v19) = v18;

  v5 = sub_23C86E780();
  v20 = EventGraph.uei.getter();
  if (v20)
  {
    v50 = v7;
    v21 = v20;
    swift_beginAccess();
    v22 = *(v21 + 16);
    if (v22 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {
      LOBYTE(v40) = v19;

      if (!j)
      {
        break;
      }

      v37 = v5;
      v39 = v1;
      v42 = a1;
      v24 = 0;
      v1 = (v22 & 0xC000000000000001);
      v5 = (v22 & 0xFFFFFFFFFFFFFF8);
      v19 = 0x277D5AC58uLL;
      while (1)
      {
        if (v1)
        {
          v25 = MEMORY[0x23EED7610](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7F8, 0x277D5AC58);
        v28 = sub_23C870D44();
        if (v28)
        {

          sub_23C871D54();
          a1 = v50[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v24;
        if (v27 == j)
        {
          v8 = v50;
          a1 = v42;
          v5 = v37;
          v1 = v39;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_50:

    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_53:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (!*(v8 + 16))
          {
            __break(1u);
            return result;
          }

          v31 = *(v8 + 32);
          goto LABEL_56;
        }

LABEL_79:
        v31 = MEMORY[0x23EED7610](0, v8);
LABEL_56:
        v29 = v31;

LABEL_62:
        LOBYTE(v19) = v40;
        goto LABEL_63;
      }
    }

    else
    {
      result = *(v8 + 16);
      if (result)
      {
        goto LABEL_53;
      }
    }

    v29 = 0;
    goto LABEL_62;
  }

  v29 = 0;
LABEL_63:
  v61 = v19 & 1;
  if (v19)
  {
    v32 = 0xD000000000000015;
    if (v5)
    {
      if (v29)
      {
        v32 = 0xD000000000000016;
      }

      else
      {
        v32 = 0x20676E697373694DLL;
      }

      v33 = 0xEB00000000646E45;
      if (v29)
      {
        v33 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v29)
      {
        v32 = 0x20676E697373694DLL;
      }

      v33 = 0xED00007472617453;
      if (!v29)
      {
        v33 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  *&v44 = v1;
  BYTE8(v44) = v61;
  *&v45 = v32;
  *(&v45 + 1) = v33;
  *&v46 = v5;
  *(&v46 + 1) = v29;
  *&v47 = 0;
  BYTE8(v47) = 0;
  v48 = 0uLL;
  v49 = xmmword_27E1FB9A0;
  v50 = v1;
  v51 = v61;
  v52 = v32;
  v53 = v33;
  v54 = v5;
  v55 = v29;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = xmmword_27E1FB9A0;

  sub_23C61FD0C(&v44, v43);
  result = sub_23C61FD68(&v50);
  v34 = v47;
  a1[2] = v46;
  a1[3] = v34;
  v35 = v49;
  a1[4] = v48;
  a1[5] = v35;
  v36 = v45;
  *a1 = v44;
  a1[1] = v36;
  return result;
}

uint64_t sub_23C61E3E4@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_23C86E780();
  if (v3)
  {
    v4 = v3;
    v5 = sub_23C870CF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = SiriTurn.tts.getter();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_34;
  }

  v8 = v6;
  v56 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (v9 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v44 = v8;
    v46 = v5;
    v47 = a1;
    v11 = 0;
    v5 = (v9 & 0xC000000000000001);
    v8 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v12 = MEMORY[0x23EED7610](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v1 = v12;
      v7 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7F0, 0x277D5B150);
      v13 = sub_23C870D44();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 startedOrChanged];
        if (v15)
        {
          v16 = v15;

          sub_23C871D54();
          a1 = v56[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v11;
      if (v7 == i)
      {
        v17 = v56;
        a1 = v47;
        v7 = MEMORY[0x277D84F90];
        v8 = v44;
        v5 = v46;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (!*(v17 + 16))
  {
LABEL_33:

LABEL_34:
    v20 = 0;
    goto LABEL_35;
  }

LABEL_25:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x23EED7610](0, v17);
  }

  else
  {
    if (!*(v17 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = sub_23C870CF4();

LABEL_35:
  v1 = sub_23C62A1DC(v5, v20);
  LOBYTE(v22) = v21;

  v5 = sub_23C86E780();
  v23 = SiriTurn.tts.getter();
  if (v23)
  {
    v56 = v7;
    v24 = v23;
    swift_beginAccess();
    v25 = *(v24 + 16);
    if (v25 >> 62)
    {
      goto LABEL_63;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {
      LOBYTE(v46) = v22;

      if (!j)
      {
        break;
      }

      v43 = v5;
      v45 = v1;
      v48 = a1;
      v27 = 0;
      v1 = (v25 & 0xC000000000000001);
      v5 = (v25 & 0xFFFFFFFFFFFFFF8);
      v22 = 0x277D5B150uLL;
      while (1)
      {
        if (v1)
        {
          v28 = MEMORY[0x23EED7610](v27, v25);
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7F0, 0x277D5B150);
        v31 = sub_23C870D44();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 startedOrChanged];
          if (v33)
          {
            v34 = v33;

            sub_23C871D54();
            a1 = v56[2];
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v27;
        if (v30 == j)
        {
          v8 = v56;
          a1 = v48;
          v5 = v43;
          v1 = v45;
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_54:

    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_57:
        if ((v8 & 0xC000000000000001) == 0)
        {
          if (!*(v8 + 16))
          {
            __break(1u);
            return result;
          }

          v37 = *(v8 + 32);
          goto LABEL_60;
        }

LABEL_83:
        v37 = MEMORY[0x23EED7610](0, v8);
LABEL_60:
        v35 = v37;

LABEL_66:
        LOBYTE(v22) = v46;
        goto LABEL_67;
      }
    }

    else
    {
      result = *(v8 + 16);
      if (result)
      {
        goto LABEL_57;
      }
    }

    v35 = 0;
    goto LABEL_66;
  }

  v35 = 0;
LABEL_67:
  v67 = v22 & 1;
  if (v22)
  {
    v38 = 0xD000000000000015;
    if (v5)
    {
      if (v35)
      {
        v38 = 0xD000000000000016;
      }

      else
      {
        v38 = 0x20676E697373694DLL;
      }

      v39 = 0xEB00000000646E45;
      if (v35)
      {
        v39 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v35)
      {
        v38 = 0x20676E697373694DLL;
      }

      v39 = 0xED00007472617453;
      if (!v35)
      {
        v39 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  *&v50 = v1;
  BYTE8(v50) = v67;
  *&v51 = v38;
  *(&v51 + 1) = v39;
  *&v52 = v5;
  *(&v52 + 1) = v35;
  *&v53 = 0;
  BYTE8(v53) = 0;
  v54 = 0uLL;
  v55 = xmmword_27E1FB9B0;
  v56 = v1;
  v57 = v67;
  v58 = v38;
  v59 = v39;
  v60 = v5;
  v61 = v35;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = xmmword_27E1FB9B0;

  sub_23C61FD0C(&v50, v49);
  result = sub_23C61FD68(&v56);
  v40 = v53;
  a1[2] = v52;
  a1[3] = v40;
  v41 = v55;
  a1[4] = v54;
  a1[5] = v41;
  v42 = v51;
  *a1 = v50;
  a1[1] = v42;
  return result;
}

uint64_t sub_23C61E9AC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = EventGraph.asr.getter();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_31;
  }

  v11 = v9;
  v89 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (v12 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v10 = v12 & 0xC000000000000001;
    v6 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v14 = MEMORY[0x23EED7610](v5, v12);
      }

      else
      {
        if (v5 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v12 + 8 * v5 + 32);
      }

      v7 = v14;
      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v16 = sub_23C870D44();
      if (v16)
      {
        v17 = v16;
        v18 = [v16 startedOrChanged];
        if (v18)
        {
          v19 = v18;

          sub_23C871D54();
          v20 = *(v89 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v5;
      if (v15 == i)
      {
        v21 = v89;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!*(v21 + 16))
  {
LABEL_30:

LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

LABEL_22:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x23EED7610](0, v21);
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      goto LABEL_140;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;

  v5 = sub_23C870CF4();

LABEL_32:
  v24 = EventGraph.asr.getter();
  if (v24)
  {
    v25 = v24;
    v89 = v10;
    swift_beginAccess();
    v26 = *(v25 + 16);
    if (v26 >> 62)
    {
      goto LABEL_59;
    }

    for (j = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v75 = v5;
      v5 = 0;
      v7 = (v26 & 0xC000000000000001);
      v6 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v7)
        {
          v28 = MEMORY[0x23EED7610](v5, v26);
        }

        else
        {
          if (v5 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v28 = *(v26 + 8 * v5 + 32);
        }

        v29 = v28;
        v30 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v31 = sub_23C870D44();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 ended];
          if (v33)
          {
            v34 = v33;

            sub_23C871D54();
            v10 = *(v89 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v5;
        if (v30 == j)
        {
          v21 = v89;
          v10 = MEMORY[0x277D84F90];
          v5 = v75;
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_50:

    if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_53:
        if ((v21 & 0xC000000000000001) == 0)
        {
          if (!*(v21 + 16))
          {
            __break(1u);
            goto LABEL_142;
          }

          v35 = *(v21 + 32);
          goto LABEL_56;
        }

LABEL_140:
        v35 = MEMORY[0x23EED7610](0, v21);
LABEL_56:
        v36 = v35;

        v37 = sub_23C870CF4();

        goto LABEL_63;
      }
    }

    else if (*(v21 + 16))
    {
      goto LABEL_53;
    }
  }

  v37 = 0;
LABEL_63:
  v6 = sub_23C62A1DC(v5, v37);
  LOBYTE(v26) = v38;

  v39 = EventGraph.asr.getter();
  if (v39)
  {
    v40 = v39;
    v89 = v10;
    swift_beginAccess();
    v41 = *(v40 + 16);
    if (v41 >> 62)
    {
      goto LABEL_90;
    }

    for (k = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23C871C34())
    {

      if (!k)
      {
        break;
      }

      v73 = v26;
      v76 = v6;
      v6 = 0;
      v26 = v41 & 0xC000000000000001;
      v7 = (v41 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v26)
        {
          v43 = MEMORY[0x23EED7610](v6, v41);
        }

        else
        {
          if (v6 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v43 = *(v41 + 8 * v6 + 32);
        }

        v44 = v43;
        v45 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, a1, a2);
        v46 = sub_23C870D44();
        if (v46)
        {
          v47 = v46;
          v48 = [v46 startedOrChanged];
          if (v48)
          {
            v49 = v48;

            sub_23C871D54();
            v10 = *(v89 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v6;
        if (v45 == k)
        {
          v21 = v89;
          v10 = MEMORY[0x277D84F90];
          v6 = v76;
          LOBYTE(v26) = v73;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      ;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_81:

    if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
    {
      if (sub_23C871C34())
      {
LABEL_84:
        if ((v21 & 0xC000000000000001) == 0)
        {
          if (!*(v21 + 16))
          {
            __break(1u);
            goto LABEL_144;
          }

          v50 = *(v21 + 32);
          goto LABEL_87;
        }

LABEL_142:
        v50 = MEMORY[0x23EED7610](0, v21);
LABEL_87:
        v7 = v50;

        goto LABEL_94;
      }
    }

    else if (*(v21 + 16))
    {
      goto LABEL_84;
    }
  }

  v7 = 0;
LABEL_94:
  v51 = EventGraph.asr.getter();
  if (!v51)
  {
LABEL_124:
    v64 = 0;
    goto LABEL_125;
  }

  v89 = v10;
  v52 = v51;
  swift_beginAccess();
  v53 = *(v52 + 16);
  if (v53 >> 62)
  {
    goto LABEL_121;
  }

  for (m = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); ; m = sub_23C871C34())
  {

    if (!m)
    {
      break;
    }

    v72 = v7;
    v74 = v26;
    v77 = v6;
    v6 = 0;
    v7 = (v53 & 0xC000000000000001);
    while (1)
    {
      if (v7)
      {
        v55 = MEMORY[0x23EED7610](v6, v53);
      }

      else
      {
        if (v6 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v55 = *(v53 + 8 * v6 + 32);
      }

      v56 = v55;
      v57 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, a1, a2);
      v58 = sub_23C870D44();
      if (v58)
      {
        v59 = v58;
        v60 = [v58 ended];
        if (v60)
        {
          v61 = v60;

          sub_23C871D54();
          v26 = *(v89 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v6;
      if (v57 == m)
      {
        v21 = v89;
        v6 = v77;
        LOBYTE(v26) = v74;
        v7 = v72;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_112:

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    result = *(v21 + 16);
    if (result)
    {
      goto LABEL_115;
    }

    goto LABEL_123;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_123:

    goto LABEL_124;
  }

LABEL_115:
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v63 = *(v21 + 32);
    goto LABEL_118;
  }

LABEL_144:
  v63 = MEMORY[0x23EED7610](0, v21);
LABEL_118:
  v64 = v63;

LABEL_125:
  v65 = *a3;
  v66 = *a4;
  v101 = v26 & 1;
  if (v26)
  {
    if (v7)
    {
      v67 = 0x800000023C8A91F0;
      if (v64)
      {
        v68 = 0xD000000000000016;
      }

      else
      {
        v68 = 0x20676E697373694DLL;
      }

      if (!v64)
      {
        v67 = 0xEB00000000646E45;
      }
    }

    else
    {
      v67 = 0x800000023C8A91D0;
      v68 = 0x20676E697373694DLL;
      if (v64)
      {
        v67 = 0xED00007472617453;
      }

      else
      {
        v68 = 0xD000000000000015;
      }
    }
  }

  else
  {
    v68 = 0;
    v67 = 0;
  }

  *&v83 = v6;
  BYTE8(v83) = v101;
  *&v84 = v68;
  *(&v84 + 1) = v67;
  *&v85 = v7;
  *(&v85 + 1) = v64;
  *&v86 = 0;
  BYTE8(v86) = 0;
  v87 = 0uLL;
  *&v88 = v65;
  *(&v88 + 1) = v66;
  v89 = v6;
  v90 = v101;
  v91 = v68;
  v92 = v67;
  v93 = v7;
  v94 = v64;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = v65;
  v100 = v66;

  sub_23C61FD0C(&v83, v82);
  result = sub_23C61FD68(&v89);
  v69 = v86;
  a5[2] = v85;
  a5[3] = v69;
  v70 = v88;
  a5[4] = v87;
  a5[5] = v70;
  v71 = v84;
  *a5 = v83;
  a5[1] = v71;
  return result;
}

double sub_23C61F2D0@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_23C61FFE8();
  if (v6)
  {
    v7 = v6;
    v8 = sub_23C870CF4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23C620A78();
  if (v9)
  {
    v10 = v9;
    v11 = sub_23C870CF4();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_23C62A1DC(v8, v11);
  v14 = v13;

  v15 = sub_23C61FFE8();
  v16 = sub_23C620A78();
  v17 = sub_23C620A78();
  if (v17)
  {
    v18 = v17;
    v36 = v12;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v19 = sub_23C870D44();
    if (!v19)
    {
LABEL_14:

      v23 = 0;
LABEL_15:
      v26 = 0;
      v12 = v36;
      goto LABEL_17;
    }

    v20 = v19;
    v21 = [v19 eventMetadata];
    if (!v21)
    {
LABEL_13:

      goto LABEL_14;
    }

    v22 = v21;
    v23 = [v21 requestId];

    if (!v23)
    {

      goto LABEL_15;
    }

    sub_23C871AB4();

    v24 = sub_23C870B74();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v5, 1, v24) == 1)
    {
      sub_23C5FE4E4(v5);
      goto LABEL_13;
    }

    v35 = v24;
    v23 = sub_23C870B04();
    v33 = v25;
    v26 = v34;
    (*(v33 + 8))(v5, v35);

    v12 = v36;
  }

  else
  {
    v23 = 0;
    v26 = 0;
  }

LABEL_17:
  v55 = v14 & 1;
  if (v14)
  {
    v27 = 0xD000000000000015;
    if (v15)
    {
      if (v16)
      {
        v27 = 0xD000000000000016;
      }

      else
      {
        v27 = 0x20676E697373694DLL;
      }

      v28 = 0xEB00000000646E45;
      if (v16)
      {
        v28 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v16)
      {
        v27 = 0x20676E697373694DLL;
      }

      v28 = 0xED00007472617453;
      if (!v16)
      {
        v28 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  *&v38 = v12;
  BYTE8(v38) = v55;
  *&v39 = v27;
  *(&v39 + 1) = v28;
  *&v40 = v15;
  *(&v40 + 1) = v16;
  *&v41 = 0;
  BYTE8(v41) = 0;
  *&v42 = v23;
  *(&v42 + 1) = v26;
  v43 = xmmword_27E1FB9E0;
  v44 = v12;
  v45 = v55;
  v46 = v27;
  v47 = v28;
  v48 = v15;
  v49 = v16;
  v50 = 0;
  v51 = 0;
  v52 = v23;
  v53 = v26;
  v54 = xmmword_27E1FB9E0;

  sub_23C61FD0C(&v38, &v37);
  sub_23C61FD68(&v44);
  v29 = v41;
  a1[2] = v40;
  a1[3] = v29;
  v30 = v43;
  a1[4] = v42;
  a1[5] = v30;
  result = *&v38;
  v32 = v39;
  *a1 = v38;
  a1[1] = v32;
  return result;
}

uint64_t sub_23C61F640@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v53 - v5;
  v6 = EventGraph.uei.getter();
  v7 = MEMORY[0x277D84F90];
  v55 = a1;
  v58 = v1;
  if (!v6)
  {
    goto LABEL_29;
  }

  v66 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = v6[2];
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v57 = v6;
    v7 = 0;
    a1 = (v8 & 0xC000000000000001);
    while (1)
    {
      if (a1)
      {
        v10 = MEMORY[0x23EED7610](v7, v8);
      }

      else
      {
        if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v10 = *(v8 + 8 * v7 + 32);
      }

      v6 = v10;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
      v12 = sub_23C870D44();
      if (v12)
      {

        sub_23C871D54();
        v13 = v66[2];
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        v14 = v66;
        a1 = v55;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_17:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    if (sub_23C871C34())
    {
      goto LABEL_20;
    }

LABEL_28:

    v6 = 0;
    goto LABEL_29;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      goto LABEL_90;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v6 = sub_23C870CF4();

LABEL_29:
  v17 = sub_23C620A78();
  if (v17)
  {
    v18 = v17;
    v19 = sub_23C870CF4();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_23C62A1DC(v6, v19);
  v22 = v21;

  v23 = EventGraph.uei.getter();
  v57 = v20;
  v56 = v22;
  if (v23)
  {
    v24 = v23;
    v66 = v7;
    swift_beginAccess();
    v25 = v24[2];
    if (v25 >> 62)
    {
      goto LABEL_57;
    }

    for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_23C871C34())
    {

      if (!j)
      {
        break;
      }

      v53 = v24;
      v27 = 0;
      a1 = (v25 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x23EED7610](v27, v25);
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v24 = v28;
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FB7D8, 0x277D5A7B8);
        v30 = sub_23C870D44();
        if (v30)
        {

          sub_23C871D54();
          v31 = v66[2];
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }

        ++v27;
        if (v29 == j)
        {
          v14 = v66;
          a1 = v55;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_48:

    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      result = sub_23C871C34();
      if (result)
      {
LABEL_51:
        if ((v14 & 0xC000000000000001) == 0)
        {
          if (!*(v14 + 16))
          {
            __break(1u);
            return result;
          }

          v33 = *(v14 + 32);
          goto LABEL_54;
        }

LABEL_90:
        v33 = MEMORY[0x23EED7610](0, v14);
LABEL_54:
        v34 = v33;

        goto LABEL_61;
      }
    }

    else
    {
      result = *(v14 + 16);
      if (result)
      {
        goto LABEL_51;
      }
    }
  }

  v34 = 0;
LABEL_61:
  v35 = sub_23C620A78();
  v36 = sub_23C620A78();
  if (!v36)
  {
LABEL_69:
    v42 = 0;
    goto LABEL_70;
  }

  v37 = v36;
  sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
  v38 = sub_23C870D44();
  if (!v38)
  {
LABEL_68:

    goto LABEL_69;
  }

  v39 = v38;
  v40 = [v38 eventMetadata];
  if (!v40)
  {

    goto LABEL_68;
  }

  v41 = v40;
  v42 = [v40 requestId];

  if (v42)
  {
    v43 = v54;
    sub_23C871AB4();

    v44 = sub_23C870B74();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v43, 1, v44) == 1)
    {
      sub_23C5FE4E4(v43);

      v42 = 0;
      v46 = 0;
    }

    else
    {
      v42 = sub_23C870B04();
      v46 = v52;
      (*(v45 + 8))(v43, v44);
    }

    a1 = v55;
    goto LABEL_71;
  }

LABEL_70:
  v46 = 0;
LABEL_71:
  v77 = v56 & 1;
  if (v56)
  {
    v47 = 0xD000000000000015;
    if (v34)
    {
      if (v35)
      {
        v47 = 0xD000000000000016;
      }

      else
      {
        v47 = 0x20676E697373694DLL;
      }

      v48 = 0xEB00000000646E45;
      if (v35)
      {
        v48 = 0x800000023C8A91F0;
      }
    }

    else
    {
      if (v35)
      {
        v47 = 0x20676E697373694DLL;
      }

      v48 = 0xED00007472617453;
      if (!v35)
      {
        v48 = 0x800000023C8A91D0;
      }
    }
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  *&v60 = v57;
  BYTE8(v60) = v77;
  *&v61 = v47;
  *(&v61 + 1) = v48;
  *&v62 = v34;
  *(&v62 + 1) = v35;
  *&v63 = 0;
  BYTE8(v63) = 0;
  *&v64 = v42;
  *(&v64 + 1) = v46;
  v65 = xmmword_27E1FB9F0;
  v66 = v57;
  v67 = v77;
  v68 = v47;
  v69 = v48;
  v70 = v34;
  v71 = v35;
  v72 = 0;
  v73 = 0;
  v74 = v42;
  v75 = v46;
  v76 = xmmword_27E1FB9F0;

  sub_23C61FD0C(&v60, &v59);
  result = sub_23C61FD68(&v66);
  v49 = v63;
  a1[2] = v62;
  a1[3] = v49;
  v50 = v65;
  a1[4] = v64;
  a1[5] = v50;
  v51 = v61;
  *a1 = v60;
  a1[1] = v51;
  return result;
}

unint64_t sub_23C61FDBC()
{
  result = qword_27E1FB840;
  if (!qword_27E1FB840)
  {
    sub_23C870DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB840);
  }

  return result;
}

uint64_t SiriTurn.TRPCandidateStarted.getter()
{
  v1 = sub_23C601E20();
  v2 = v0;
  v3 = sub_23C625220(v1, v2);

  if (v3 >> 62)
  {
    goto LABEL_10;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    v5 = sub_23C601E20();
    v6 = v2;
    v4 = sub_23C6255E4(v5, v6);

    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_23:

    return 0;
  }

  while ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EED7610](0, v3);
    swift_unknownObjectRelease();

LABEL_5:
    v3 = sub_23C601E20();
    v2 = v2;
    v4 = sub_23C625220(v3, v2);

    if (v4 >> 62)
    {
      if (!sub_23C871C34())
      {
        goto LABEL_23;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_10:
    if (!sub_23C871C34())
    {
      goto LABEL_11;
    }
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_22:
  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v8 = MEMORY[0x23EED7610](0, v4);
LABEL_16:
    v9 = v8;

    return v9;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    v8 = *(v4 + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_23C61FFE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v77 - v7;
  MEMORY[0x28223BE20](v6);
  v78 = &v77 - v9;
  v86 = v0;
  v10 = sub_23C601E20();
  v11 = v10;
  v91 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_115;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v13 = MEMORY[0x277D84F90];
    v84 = v8;
    v85 = v5;
    if (!i)
    {
      break;
    }

    v8 = 0;
    v5 = (v11 & 0xC000000000000001);
    while (1)
    {
      if (v5)
      {
        v14 = MEMORY[0x23EED7610](v8, v11);
      }

      else
      {
        if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_110;
        }

        v14 = *(v11 + 8 * v8 + 32);
      }

      v15 = v14;
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB850, 0x277D597E0);
      v17 = sub_23C870D44();
      if (v17)
      {

        sub_23C871D54();
        v18 = *(v91 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v8;
      if (v16 == i)
      {
        v5 = v85;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    ;
  }

LABEL_15:

  v91 = sub_23C5A3E90(v19);
  sub_23C62103C(&v91, sub_23C621AF4, sub_23C621300);

  v20 = v91;
  v83 = v91;
  if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
  {
    v21 = sub_23C871C34();
    v20 = v83;
    if (v21)
    {
      goto LABEL_18;
    }

LABEL_117:

    return 0;
  }

  v21 = *(v91 + 16);
  if (!v21)
  {
    goto LABEL_117;
  }

LABEL_18:
  v22 = 0;
  v82 = v20 & 0xC000000000000001;
  v79 = v20 + 32;
  v80 = v21;
  while (1)
  {
    if (v82)
    {
      v23 = MEMORY[0x23EED7610](v22, v20);
      v24 = __OFADD__(v22, 1);
      v25 = v22 + 1;
      if (v24)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_114;
      }

      v23 = *(v79 + 8 * v22);
      v24 = __OFADD__(v22, 1);
      v25 = v22 + 1;
      if (v24)
      {
        goto LABEL_111;
      }
    }

    v89 = v25;
    v26 = v23;
    v27 = sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v87 = v26;
    v88 = v27;
    v28 = sub_23C870D44();
    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = v28;
    v30 = [v28 eventMetadata];
    if (!v30 || (v31 = v30, v32 = [v30 requestId], v31, !v32))
    {

      goto LABEL_33;
    }

    v33 = v78;
    sub_23C871AB4();

    v34 = v33;
    v35 = sub_23C870B74();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {

      sub_23C5FE4E4(v34);
LABEL_33:
      v81 = 0;
      v90 = 0;
      goto LABEL_34;
    }

    v81 = sub_23C870B04();
    v90 = v45;

    (*(v36 + 8))(v34, v35);
LABEL_34:
    v37 = sub_23C601E20();
    v38 = v37;
    v91 = v13;
    if (v37 >> 62)
    {
      v39 = sub_23C871C34();
      if (v39)
      {
LABEL_36:
        v40 = 0;
        while (1)
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x23EED7610](v40, v38);
          }

          else
          {
            if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v41 = *(v38 + 8 * v40 + 32);
          }

          v42 = v41;
          v8 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
          v43 = sub_23C870D44();
          if (v43)
          {

            sub_23C871D54();
            v44 = *(v91 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }

          ++v40;
          if (v8 == v39)
          {
            v5 = v85;
            v13 = MEMORY[0x277D84F90];
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_36;
      }
    }

LABEL_49:

    v91 = sub_23C5A3E90(v46);
    sub_23C62103C(&v91, sub_23C62142C, sub_23C6211E4);
    v47 = v84;

    v11 = v91;
    if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
    {
      if (!sub_23C871C34())
      {
LABEL_64:

        goto LABEL_65;
      }
    }

    else if (!*(v91 + 16))
    {
      goto LABEL_64;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x23EED7610](0, v11);
    }

    else
    {
      if (!*(v11 + 16))
      {
        goto LABEL_112;
      }

      v48 = *(v11 + 32);
    }

    v49 = v48;

    v50 = sub_23C870D44();
    if (v50)
    {
      v51 = v50;
      v52 = [v50 eventMetadata];
      if (v52 && (v11 = v52, v53 = [v52 requestId], v11, v53))
      {
        sub_23C871AB4();

        v54 = sub_23C870B74();
        v8 = *(v54 - 8);
        if ((*(v8 + 48))(v47, 1, v54) == 1)
        {

          sub_23C5FE4E4(v47);
        }

        else
        {
          sub_23C870B04();
          v11 = v55;

          v56 = *(v8 + 8);
          v8 += 8;
          v56(v47, v54);
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_65:
    v22 = v89;
    if (v90)
    {
      break;
    }

LABEL_20:
    v20 = v83;
    if (v22 == v80)
    {
      goto LABEL_117;
    }
  }

  v57 = sub_23C601E20();
  v58 = v57;
  v91 = v13;
  if (v57 >> 62)
  {
    v59 = sub_23C871C34();
    if (!v59)
    {
      goto LABEL_81;
    }

LABEL_68:
    v60 = 0;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x23EED7610](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v61 = *(v58 + 8 * v60 + 32);
      }

      v62 = v61;
      v8 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v63 = sub_23C870D44();
      if (v63)
      {

        sub_23C871D54();
        v11 = *(v91 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v60;
      if (v8 == v59)
      {
        v5 = v85;
        v13 = MEMORY[0x277D84F90];
        v22 = v89;
        goto LABEL_81;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:

    return v87;
  }

  v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v59)
  {
    goto LABEL_68;
  }

LABEL_81:

  v91 = sub_23C5A3E90(v64);
  sub_23C62103C(&v91, sub_23C62142C, sub_23C6211E4);

  v65 = v91;
  if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
  {
    if (!sub_23C871C34())
    {
LABEL_99:

      goto LABEL_100;
    }
  }

  else if (!*(v91 + 16))
  {
    goto LABEL_99;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x23EED7610](0, v65);
  }

  else
  {
    if (!*(v65 + 16))
    {
      goto LABEL_113;
    }

    v66 = *(v65 + 32);
  }

  v67 = v66;

  v68 = sub_23C870D44();
  if (!v68)
  {

    goto LABEL_100;
  }

  v11 = v68;
  v69 = [v68 eventMetadata];
  if (!v69 || (v70 = v69, v71 = [v69 requestId], v70, !v71))
  {

    goto LABEL_100;
  }

  sub_23C871AB4();

  v72 = sub_23C870B74();
  v8 = *(v72 - 8);
  if ((*(v8 + 48))(v5, 1, v72) == 1)
  {

    sub_23C5FE4E4(v5);
LABEL_100:

    goto LABEL_20;
  }

  v73 = sub_23C870B04();
  v75 = v74;

  (*(v8 + 8))(v5, v72);
  v8 = v90;
  if (v81 == v73 && v90 == v75)
  {
    goto LABEL_106;
  }

  v11 = sub_23C872014();

  if ((v11 & 1) == 0)
  {

    v22 = v89;
    goto LABEL_20;
  }

  return v87;
}

uint64_t sub_23C620A78()
{
  v0 = sub_23C601E20();
  v1 = v0;
  v14 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EED7610](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v7 = sub_23C870D44();
      if (v7)
      {

        sub_23C871D54();
        v8 = *(v14 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v14 = sub_23C5A3E90(v9);
  sub_23C62103C(&v14, sub_23C62142C, sub_23C6211E4);

  v10 = v14;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    if (*(v14 + 16))
    {
      goto LABEL_20;
    }

LABEL_25:

    return 0;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EED7610](0, v10);
    goto LABEL_23;
  }

  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
LABEL_23:
    v12 = v11;

    return v12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23C620CA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = [a1 cdmBridgeContext];
  if (!v9 || (v10 = v9, v11 = [v9 ended], v10, !v11))
  {
    v29 = 0;
    return v29 & 1;
  }

  v12 = [a1 eventMetadata];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 requestId];

  if (!v14)
  {
    goto LABEL_7;
  }

  sub_23C871AB4();

  v15 = sub_23C870B74();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_23C5FE4E4(v8);
LABEL_7:
    v17 = 0;
    v18 = 0;
    goto LABEL_8;
  }

  v17 = sub_23C870B04();
  v18 = v31;
  (*(v16 + 8))(v8, v15);
LABEL_8:
  v19 = sub_23C620A78();
  if (v19)
  {
    v20 = v19;
    sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
    v21 = sub_23C870D44();
    if (v21)
    {
      v22 = v21;
      v23 = [v21 eventMetadata];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 requestId];

        if (!v25)
        {

          v28 = 0;
          goto LABEL_17;
        }

        sub_23C871AB4();

        v26 = sub_23C870B74();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v6, 1, v26) != 1)
        {
          v28 = sub_23C870B04();
          v25 = v32;
          (*(v27 + 8))(v6, v26);

          goto LABEL_17;
        }

        sub_23C5FE4E4(v6);
      }
    }
  }

  v28 = 0;
  v25 = 0;
LABEL_17:
  if (v18)
  {
    if (v25)
    {
      if (v17 == v28 && v18 == v25)
      {

        v29 = 1;
      }

      else
      {
        v29 = sub_23C872014();
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    if (!v25)
    {
      v29 = 1;
      return v29 & 1;
    }

    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_23C62103C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_23C64BCE4(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_23C6210D0(v10, a2, a3);
  return sub_23C871D64();
}

uint64_t sub_23C6210D0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_23C871FC4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23C870D74();
        v10 = sub_23C8718F4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_23C6211E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_23C870CF4();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = sub_23C870CF4();
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = v14;
      sub_23C870DE4();
      v16 = sub_23C870DC4();

      if (v16)
      {
        if (!v5)
        {
          goto LABEL_15;
        }

        v17 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v17;
        v6 -= 8;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      ++v4;
      v6 = v21 + 8;
      v7 = v20 - 1;
      if (v4 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23C621300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_23C870CF4();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = sub_23C870CF4();
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = v14;
      sub_23C870DE4();
      sub_23C61FDBC();
      v16 = sub_23C871714();

      if (v16)
      {
        if (!v5)
        {
          goto LABEL_15;
        }

        v17 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v17;
        v6 -= 8;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      ++v4;
      v6 = v21 + 8;
      v7 = v20 - 1;
      if (v4 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_23C62142C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9++;
      if (v9 < v8)
      {
        v112 = v8;
        v105 = v10;
        v12 = *v7;
        v13 = *(*v7 + 8 * v11);
        v14 = *(*v7 + 8 * v9);
        v15 = v13;
        v16 = sub_23C870CF4();
        if (!v16)
        {
          goto LABEL_133;
        }

        v17 = v16;
        v108 = v11;
        v103 = v6;
        v18 = sub_23C870CF4();
        if (!v18)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v19 = v18;
        sub_23C870DE4();
        v114 = sub_23C870DC4();

        v20 = v108 + 2;
        v21 = 8 * v108;
        v5 = (v12 + 8 * v108 + 16);
        while (1)
        {
          v9 = v112;
          if (v112 == v20)
          {
            break;
          }

          v22 = *(v5 - 1);
          v23 = *v5;
          v24 = v22;
          v25 = sub_23C870CF4();
          if (!v25)
          {
            goto LABEL_128;
          }

          v26 = v25;
          v27 = sub_23C870CF4();
          if (!v27)
          {
            goto LABEL_127;
          }

          v28 = v27;
          v29 = sub_23C870DC4() & 1;

          ++v20;
          v5 += 8;
          if ((v114 & 1) != v29)
          {
            v9 = v20 - 1;
            break;
          }
        }

        v6 = v103;
        v10 = v105;
        v11 = v108;
        v7 = a3;
        if (v114)
        {
          if (v9 < v108)
          {
            goto LABEL_120;
          }

          if (v108 < v9)
          {
            v30 = 8 * v9 - 8;
            v31 = v9;
            v32 = v108;
            do
            {
              if (v32 != --v31)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v34 = *(v33 + v21);
                *(v33 + v21) = *(v33 + v30);
                *(v33 + v30) = v34;
              }

              ++v32;
              v30 -= 8;
              v21 += 8;
            }

            while (v32 < v31);
          }
        }
      }

      v35 = v7[1];
      if (v9 < v35)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_119;
        }

        if (v9 - v11 < a4)
        {
          v36 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_121;
          }

          if (v36 >= v35)
          {
            v36 = v7[1];
          }

          if (v36 < v11)
          {
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (v9 != v36)
          {
            v104 = v6;
            v106 = v10;
            v37 = *v7;
            v38 = *v7 + 8 * v9 - 8;
            v109 = v11;
            v39 = v11 - v9;
            v111 = v36;
            do
            {
              v113 = v38;
              v115 = v9;
              v40 = *(v37 + 8 * v9);
              v41 = v39;
              do
              {
                v42 = *v38;
                v43 = v40;
                v44 = v42;
                v45 = sub_23C870CF4();
                if (!v45)
                {
                  goto LABEL_125;
                }

                v5 = v45;
                v46 = sub_23C870CF4();
                if (!v46)
                {
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  __break(1u);
LABEL_128:
                  __break(1u);
LABEL_129:
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
                  goto LABEL_134;
                }

                v47 = v46;
                sub_23C870DE4();
                v48 = sub_23C870DC4();

                if ((v48 & 1) == 0)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_126;
                }

                v49 = *v38;
                v40 = *(v38 + 8);
                *v38 = v40;
                *(v38 + 8) = v49;
                v38 -= 8;
              }

              while (!__CFADD__(v41++, 1));
              v9 = v115 + 1;
              v38 = v113 + 8;
              --v39;
            }

            while (v115 + 1 != v111);
            v9 = v111;
            v6 = v104;
            v10 = v106;
            v11 = v109;
            v7 = a3;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23C584338(0, *(v10 + 2) + 1, 1, v10);
      }

      v52 = *(v10 + 2);
      v51 = *(v10 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v10 = sub_23C584338((v51 > 1), v52 + 1, 1, v10);
      }

      *(v10 + 2) = v53;
      v54 = &v10[16 * v52];
      *(v54 + 4) = v11;
      *(v54 + 5) = v9;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v52)
      {
        while (1)
        {
          v55 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v56 = *(v10 + 4);
            v57 = *(v10 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_60:
            if (v59)
            {
              goto LABEL_107;
            }

            v72 = &v10[16 * v53];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_110;
            }

            v78 = &v10[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_114;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v53 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v82 = &v10[16 * v53];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_74:
          if (v77)
          {
            goto LABEL_109;
          }

          v85 = &v10[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_112;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_81:
          v93 = v55 - 1;
          if (v55 - 1 >= v53)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          if (!*v7)
          {
            goto LABEL_129;
          }

          v94 = *&v10[16 * v93 + 32];
          v95 = *&v10[16 * v55 + 40];
          sub_23C6221F0((*v7 + 8 * v94), (*v7 + 8 * *&v10[16 * v55 + 32]), (*v7 + 8 * v95), v5);
          if (v6)
          {
            goto LABEL_101;
          }

          if (v95 < v94)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23C6473A0(v10);
          }

          if (v93 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v96 = &v10[16 * v93];
          *(v96 + 4) = v94;
          *(v96 + 5) = v95;
          sub_23C647314(v55);
          v53 = *(v10 + 2);
          if (v53 <= 1)
          {
            goto LABEL_3;
          }
        }

        v60 = &v10[16 * v53 + 32];
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_105;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_106;
        }

        v67 = &v10[16 * v53];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_108;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_111;
        }

        if (v71 >= v63)
        {
          v89 = &v10[16 * v55 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_115;
          }

          if (v58 < v92)
          {
            v55 = v53 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v7[1];
      if (v9 >= v8)
      {
        goto LABEL_91;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_91:
  v5 = v10;
  v10 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v5 = sub_23C6473A0(v5);
    }

    v97 = *(v5 + 2);
    if (v97 >= 2)
    {
      do
      {
        v98 = *v7;
        if (!*v7)
        {
          goto LABEL_131;
        }

        v7 = (v97 - 1);
        v99 = *&v5[16 * v97];
        v100 = *&v5[16 * v97 + 24];
        sub_23C6221F0((v98 + 8 * v99), (v98 + 8 * *&v5[16 * v97 + 16]), (v98 + 8 * v100), v10);
        if (v6)
        {
          break;
        }

        if (v100 < v99)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23C6473A0(v5);
        }

        if (v97 - 2 >= *(v5 + 2))
        {
          goto LABEL_117;
        }

        v101 = &v5[16 * v97];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_23C647314(v97 - 1);
        v97 = *(v5 + 2);
        v7 = a3;
      }

      while (v97 > 1);
    }

LABEL_101:
  }

  else
  {
LABEL_135:
    __break(1u);
  }
}

void sub_23C621AF4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v9 = (v9 + 1);
      if (v9 < v7)
      {
        v115 = v7;
        v107 = v10;
        v12 = *v6;
        v13 = *(*v6 + 8 * v11);
        v14 = *(*v6 + 8 * v9);
        v15 = v13;
        v16 = sub_23C870CF4();
        if (!v16)
        {
          goto LABEL_135;
        }

        v17 = v16;
        v105 = v5;
        v18 = sub_23C870CF4();
        if (!v18)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v19 = v18;
        sub_23C870DE4();
        sub_23C61FDBC();
        v117 = sub_23C871714();

        v20 = (v11 + 2);
        v109 = v11;
        v21 = 8 * v11;
        v22 = (v12 + v21 + 16);
        while (1)
        {
          v9 = v115;
          if (v115 == v20)
          {
            break;
          }

          v23 = *(v22 - 1);
          v24 = *v22;
          v25 = v23;
          v26 = sub_23C870CF4();
          if (!v26)
          {
            goto LABEL_130;
          }

          v27 = v26;
          v28 = sub_23C870CF4();
          if (!v28)
          {
            goto LABEL_129;
          }

          v29 = v28;
          v30 = sub_23C871714() & 1;

          v20 = (v20 + 1);
          ++v22;
          if ((v117 & 1) != v30)
          {
            v9 = (v20 - 1);
            break;
          }
        }

        v6 = a3;
        v5 = v105;
        v10 = v107;
        v8 = a4;
        if (v117)
        {
          v31 = v109;
          if (v9 < v109)
          {
            goto LABEL_122;
          }

          if (v109 >= v9)
          {
            v11 = v109;
            goto LABEL_23;
          }

          v32 = 8 * v9 - 8;
          v33 = v9;
          do
          {
            v33 = (v33 - 1);
            if (v31 != v33)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v35 = *(v34 + v21);
              *(v34 + v21) = *(v34 + v32);
              *(v34 + v32) = v35;
            }

            v31 = (v31 + 1);
            v32 -= 8;
            v21 += 8;
          }

          while (v31 < v33);
        }

        v11 = v109;
      }

LABEL_23:
      v36 = v6[1];
      if (v9 < v36)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_121;
        }

        if (v9 - v11 < v8)
        {
          if (__OFADD__(v11, v8))
          {
            goto LABEL_123;
          }

          if (v11 + v8 < v36)
          {
            v36 = (v11 + v8);
          }

          if (v36 < v11)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (v9 != v36)
          {
            v113 = v36;
            v106 = v5;
            v108 = v10;
            v37 = v11;
            v38 = *v6;
            v39 = *v6 + 8 * v9 - 8;
            v110 = v37;
            v40 = v37 - v9;
            do
            {
              v116 = v39;
              v118 = v9;
              v41 = *(v38 + 8 * v9);
              v114 = v40;
              do
              {
                v42 = *v39;
                v43 = v41;
                v44 = v42;
                v45 = sub_23C870CF4();
                if (!v45)
                {
                  goto LABEL_127;
                }

                v46 = v45;
                v47 = sub_23C870CF4();
                if (!v47)
                {
                  __break(1u);
LABEL_127:
                  __break(1u);
LABEL_128:
                  __break(1u);
LABEL_129:
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
                  goto LABEL_136;
                }

                v48 = v47;
                sub_23C870DE4();
                sub_23C61FDBC();
                v49 = sub_23C871714();

                if ((v49 & 1) == 0)
                {
                  break;
                }

                if (!v38)
                {
                  goto LABEL_128;
                }

                v50 = *v39;
                v41 = *(v39 + 8);
                *v39 = v41;
                *(v39 + 8) = v50;
                v39 -= 8;
              }

              while (!__CFADD__(v40++, 1));
              v9 = (v118 + 1);
              v39 = v116 + 8;
              v40 = v114 - 1;
            }

            while ((v118 + 1) != v113);
            v9 = v113;
            v6 = a3;
            v5 = v106;
            v10 = v108;
            v11 = v110;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23C584338(0, *(v10 + 2) + 1, 1, v10);
      }

      v53 = *(v10 + 2);
      v52 = *(v10 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v10 = sub_23C584338((v52 > 1), v53 + 1, 1, v10);
      }

      *(v10 + 2) = v54;
      v55 = &v10[16 * v53];
      *(v55 + 4) = v11;
      *(v55 + 5) = v9;
      v56 = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      if (v53)
      {
        while (1)
        {
          v57 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v58 = *(v10 + 4);
            v59 = *(v10 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_62:
            if (v61)
            {
              goto LABEL_109;
            }

            v74 = &v10[16 * v54];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_112;
            }

            v80 = &v10[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_116;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v54 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v84 = &v10[16 * v54];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_76:
          if (v79)
          {
            goto LABEL_111;
          }

          v87 = &v10[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_114;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_83:
          v95 = v57 - 1;
          if (v57 - 1 >= v54)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*v6)
          {
            goto LABEL_131;
          }

          v96 = *&v10[16 * v95 + 32];
          v97 = *&v10[16 * v57 + 40];
          sub_23C622520((*v6 + 8 * v96), (*v6 + 8 * *&v10[16 * v57 + 32]), (*v6 + 8 * v97), v56);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v97 < v96)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23C6473A0(v10);
          }

          if (v95 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v98 = &v10[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          sub_23C647314(v57);
          v54 = *(v10 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v10[16 * v54 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_107;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_108;
        }

        v69 = &v10[16 * v54];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_110;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_113;
        }

        if (v73 >= v65)
        {
          v91 = &v10[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_117;
          }

          if (v60 < v94)
          {
            v57 = v54 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = v6[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_93:
  v9 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v10 = sub_23C6473A0(v10);
    }

    v99 = *(v10 + 2);
    if (v99 >= 2)
    {
      while (*v6)
      {
        v100 = v10;
        v10 = (v99 - 1);
        v101 = *&v100[16 * v99];
        v102 = *&v100[16 * v99 + 24];
        sub_23C622520((*v6 + 8 * v101), (*v6 + 8 * *&v100[16 * v99 + 16]), (*v6 + 8 * v102), v9);
        if (v5)
        {
          goto LABEL_103;
        }

        if (v102 < v101)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_23C6473A0(v100);
        }

        if (v99 - 2 >= *(v100 + 2))
        {
          goto LABEL_119;
        }

        v103 = &v100[16 * v99];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_23C647314(v99 - 1);
        v10 = v100;
        v99 = *(v100 + 2);
        if (v99 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_133;
    }

LABEL_103:
  }

  else
  {
LABEL_137:
    __break(1u);
  }
}

uint64_t sub_23C6221F0(void **__src, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v8);
      __src = v13;
    }

    v14 = &v4[v8];
    if (v6 >= 8)
    {
      v15 = v12;
      if (v12 < v5)
      {
        __dst = v5;
        while (1)
        {
          v16 = __src;
          v17 = v14;
          v18 = v15;
          v19 = v4;
          v20 = *v4;
          v21 = *v15;
          v22 = v20;
          result = sub_23C870CF4();
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v24 = result;
          result = sub_23C870CF4();
          if (!result)
          {
            goto LABEL_46;
          }

          v25 = result;
          sub_23C870DE4();
          v26 = sub_23C870DC4();

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = v18;
          v15 = v18 + 1;
          v28 = v16;
          v4 = v19;
          if (v16 != v18)
          {
            goto LABEL_18;
          }

LABEL_19:
          __src = (v28 + 8);
          v14 = v17;
          if (v4 >= v17 || v15 >= __dst)
          {
            goto LABEL_41;
          }
        }

        v27 = v19;
        v4 = v19 + 1;
        v28 = v16;
        v15 = v18;
        if (v16 == v19)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v28 = *v27;
        goto LABEL_19;
      }
    }

    goto LABEL_41;
  }

  v41 = __src;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v29 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v29;
  }

  __src = a2;
  v14 = &v4[v11];
  if (v9 < 8 || a2 <= v41)
  {
LABEL_41:
    if (__src != v4 || __src >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(__src, v4, 8 * (v14 - v4));
    }

    return 1;
  }

  v44 = v4;
LABEL_28:
  __dsta = __src;
  v30 = __src - 1;
  --v5;
  v31 = v14;
  while (1)
  {
    v32 = *--v31;
    v33 = v30;
    v34 = *v30;
    v35 = v32;
    v36 = v34;
    result = sub_23C870CF4();
    if (!result)
    {
      goto LABEL_47;
    }

    v37 = result;
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v38 = result;
    sub_23C870DE4();
    v39 = sub_23C870DC4();

    v40 = v5 + 1;
    if (v39)
    {
      if (v40 != __dsta)
      {
        *v5 = *v33;
      }

      v4 = v44;
      if (v14 <= v44 || (__src = v33, v33 <= v41))
      {
        __src = v33;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v40 != v14)
    {
      *v5 = *v31;
    }

    --v5;
    v14 = v31;
    v30 = v33;
    if (v31 <= v44)
    {
      v14 = v31;
      v4 = v44;
      __src = __dsta;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_23C622520(void **__src, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v8);
      __src = v13;
    }

    v14 = &v4[v8];
    if (v6 >= 8)
    {
      v15 = v12;
      if (v12 < v5)
      {
        v42 = v5;
        while (1)
        {
          v16 = __src;
          v17 = v14;
          v18 = v15;
          v19 = v4;
          v20 = *v4;
          v21 = *v15;
          v22 = v20;
          result = sub_23C870CF4();
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v24 = result;
          result = sub_23C870CF4();
          if (!result)
          {
            goto LABEL_46;
          }

          v25 = result;
          sub_23C870DE4();
          sub_23C61FDBC();
          v26 = sub_23C871714();

          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = v18;
          v15 = v18 + 1;
          v28 = v16;
          v4 = v19;
          if (v16 != v18)
          {
            goto LABEL_18;
          }

LABEL_19:
          __src = (v28 + 8);
          v14 = v17;
          if (v4 >= v17 || v15 >= v42)
          {
            goto LABEL_41;
          }
        }

        v27 = v19;
        v4 = v19 + 1;
        v28 = v16;
        v15 = v18;
        if (v16 == v19)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v28 = *v27;
        goto LABEL_19;
      }
    }

    goto LABEL_41;
  }

  v41 = __src;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v29 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v29;
  }

  __src = a2;
  v14 = &v4[v11];
  if (v9 < 8 || a2 <= v41)
  {
LABEL_41:
    if (__src != v4 || __src >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(__src, v4, 8 * (v14 - v4));
    }

    return 1;
  }

  v44 = v4;
LABEL_28:
  v43 = __src;
  v30 = __src - 1;
  --v5;
  v31 = v14;
  while (1)
  {
    v32 = *--v31;
    v33 = v30;
    v34 = *v30;
    v35 = v32;
    v36 = v34;
    result = sub_23C870CF4();
    if (!result)
    {
      goto LABEL_47;
    }

    v37 = result;
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v38 = result;
    sub_23C870DE4();
    sub_23C61FDBC();
    v39 = sub_23C871714();

    v40 = v5 + 1;
    if (v39)
    {
      if (v40 != v43)
      {
        *v5 = *v33;
      }

      v4 = v44;
      if (v14 <= v44 || (__src = v33, v33 <= v41))
      {
        __src = v33;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v40 != v14)
    {
      *v5 = *v31;
    }

    --v5;
    v14 = v31;
    v30 = v33;
    if (v31 <= v44)
    {
      v14 = v31;
      __src = v43;
      v4 = v44;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t ComponentGroup<>.selectedResultCandidateId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_31:
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_23C871C34();
  }

  else
  {
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v25 = v4;
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EED7610](v5, v1);
      }

      else
      {
        if (v5 >= *(v26 + 16))
        {
          goto LABEL_30;
        }

        v7 = *(v1 + 8 * v5 + 32);
      }

      v6 = v7;
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v8 = sub_23C870D54();
      if (v8)
      {
        break;
      }

LABEL_7:

      ++v5;
      if (v3 == v2)
      {
        v4 = v25;
        goto LABEL_25;
      }
    }

    v10 = v8;
    v11 = v9;
    v12 = [v8 eventMetadata];
    if (!v12 || (v13 = v12, v14 = [v12 resultCandidateId], v13, !v14))
    {

      v6 = v11;
      goto LABEL_7;
    }

    v15 = sub_23C871784();
    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_23C5844DC(0, *(v25 + 2) + 1, 1, v25);
    }

    v20 = *(v25 + 2);
    v19 = *(v25 + 3);
    if (v20 >= v19 >> 1)
    {
      v25 = sub_23C5844DC((v19 > 1), v20 + 1, 1, v25);
    }

    *(v25 + 2) = v20 + 1;
    v21 = &v25[16 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
    v4 = v25;
  }

  while (v3 != v2);
LABEL_25:

  if (*(v4 + 2))
  {
    v22 = *(v4 + 4);
    v23 = *(v4 + 5);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t ComponentGroup<>.eventsWithSelectedResultCandidateId.getter()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_31:
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_23C871C34();
  }

  else
  {
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v25 = v0;
  do
  {
    v26 = v4;
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](v5, v1);
      }

      else
      {
        if (v5 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v0 = v6;
      v3 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      sub_23C5A3FDC(0, &qword_27E1FB848, 0x277D597E8);
      v7 = sub_23C870D54();
      if (v7)
      {
        break;
      }

LABEL_7:

      ++v5;
      if (v3 == v2)
      {
        v0 = v25;
        v4 = v26;
        goto LABEL_25;
      }
    }

    v9 = v7;
    v10 = v8;
    v11 = [v7 eventMetadata];
    if (!v11 || (v12 = v11, v13 = [v11 resultCandidateId], v12, !v13))
    {

      v0 = v10;
      goto LABEL_7;
    }

    v14 = sub_23C871784();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_23C5844DC(0, *(v26 + 2) + 1, 1, v26);
    }

    v19 = *(v26 + 2);
    v18 = *(v26 + 3);
    if (v19 >= v18 >> 1)
    {
      v26 = sub_23C5844DC((v18 > 1), v19 + 1, 1, v26);
    }

    v4 = v26;
    *(v26 + 2) = v19 + 1;
    v20 = &v26[16 * v19];
    *(v20 + 4) = v14;
    *(v20 + 5) = v16;
    v0 = v25;
  }

  while (v3 != v2);
LABEL_25:

  if (*(v4 + 2))
  {
    v22 = *(v4 + 4);
    v21 = *(v4 + 5);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = sub_23C626314(v0, v22, v21);
  swift_bridgeObjectRelease_n();
  return v23;
}

unint64_t LogicalTimestamp.dictionaryRepresentation()()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D20;
  v14 = 0x6564496B636F6C63;
  v15 = 0xEF7265696669746ELL;
  v6 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v7 = sub_23C870D94();
  v8 = MEMORY[0x23EED6400](v7);
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  *(inited + 96) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = v10;
  v14 = 0xD000000000000016;
  v15 = 0x800000023C8A7340;
  sub_23C871CB4();
  v11 = sub_23C870DD4();
  *(inited + 168) = MEMORY[0x277D84D38];
  *(inited + 144) = v11;
  v12 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v12;
}

uint64_t LogicalTimestamp.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v21 = 0x6564496B636F6C63;
  v22 = 0xEF7265696669746ELL;
  sub_23C871CB4();
  if (*(a1 + 16) && (v14 = sub_23C5FF9C4(v23), (v15 & 1) != 0))
  {
    sub_23C588DC0(*(a1 + 56) + 32 * v14, v24);
    sub_23C600810(v23);
    if (swift_dynamicCast())
    {
      sub_23C870AF4();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_23C5FE4E4(v5);
      }

      else
      {
        (*(v7 + 32))(v13, v5, v6);
        v21 = 0xD000000000000016;
        v22 = 0x800000023C8A7340;
        sub_23C871CB4();
        if (*(a1 + 16) && (v17 = sub_23C5FF9C4(v23), (v18 & 1) != 0))
        {
          sub_23C588DC0(*(a1 + 56) + 32 * v17, v24);
          sub_23C600810(v23);

          if (swift_dynamicCast())
          {
            (*(v7 + 16))(v11, v13, v6);
            v19 = sub_23C870DA4();
            (*(v7 + 8))(v13, v6);
            return v19;
          }
        }

        else
        {

          sub_23C600810(v23);
        }

        (*(v7 + 8))(v13, v6);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_23C600810(v23);
  }

  return 0;
}

void *OrderedEvent.dictionaryRepresentation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  v22 = 0x707954746E657665;
  v23 = 0xE900000000000065;
  v5 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = [result qualifiedMessageName];

  v9 = sub_23C871784();
  *(inited + 96) = v5;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v22 = 0xD000000000000010;
  v23 = 0x800000023C8A7380;
  sub_23C871CB4();
  result = sub_23C870CF4();
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = LogicalTimestamp.dictionaryRepresentation()();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(inited + 144) = v12;
  v22 = 0x6449746E657665;
  v23 = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C870CC4();
  v13 = sub_23C870B74();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {
    sub_23C5FE4E4(v3);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = MEMORY[0x23EED6400]();
    v16 = v17;
    (*(v14 + 8))(v3, v13);
  }

  *(inited + 216) = v15;
  *(inited + 224) = v16;
  v22 = 0x746E657665;
  v23 = 0xE500000000000000;
  sub_23C871CB4();
  result = sub_23C870CA4();
  if (!result)
  {
    goto LABEL_13;
  }

  v18 = result;

  v19 = [v18 dictionaryRepresentation];
  if (v19)
  {
    v20 = sub_23C8716B4();
  }

  else
  {
    v20 = 0;
  }

  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E60, &qword_23C8750A0);
  *(inited + 288) = v20;
  v21 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v21;
}

void OrderedEvent.jsonEncoding()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v26 - v2;
  v4 = sub_23C870CA4();
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 wrapAsAnyEvent];

  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873CF0;
  strcpy(v26, "anyEventType");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  sub_23C871CB4();
  v8 = [v6 anyEventType];
  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = v8;
  v26[0] = 0xD000000000000010;
  v26[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  v9 = sub_23C870CF4();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = LogicalTimestamp.dictionaryRepresentation()();

  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(inited + 144) = v11;
  strcpy(v26, "eventId");
  v26[1] = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C870CC4();
  v12 = sub_23C870B74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v3, 1, v12) == 1)
  {
    sub_23C5FE4E4(v3);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = MEMORY[0x23EED6400]();
    v15 = v16;
    (*(v13 + 8))(v3, v12);
  }

  *(inited + 216) = v14;
  *(inited + 224) = v15;
  strcpy(v26, "payload");
  v26[1] = 0xE700000000000000;
  v17 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v18 = [v6 payload];
  if (v18)
  {
    v19 = v18;
    v20 = sub_23C870A34();
    v22 = v21;

    v23 = sub_23C870A24();
    v25 = v24;
    sub_23C595090(v20, v22);
    *(inited + 312) = v17;
    *(inited + 288) = v23;
    *(inited + 296) = v25;
    sub_23C598B20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
    swift_arrayDestroy();

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OrderedEvent.init(jsonEncoding:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = sub_23C870B74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v47, "anyEventType");
  BYTE5(v47[1]) = 0;
  HIWORD(v47[1]) = -5120;
  sub_23C871CB4();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v14 = sub_23C5FF9C4(v48);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v14, v49);
  sub_23C600810(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v16 = LODWORD(v47[0]);
  strcpy(v47, "payload");
  v47[1] = 0xE700000000000000;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v17 = sub_23C5FF9C4(v48), (v18 & 1) == 0))
  {
LABEL_9:

LABEL_10:
    sub_23C600810(v48);
    return 0;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v17, v49);
  sub_23C600810(v48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v46 = sub_23C870A04();
  v20 = v19;

  if (v20 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v45 = objc_allocWithZone(MEMORY[0x277D5A790]);
  v22 = v46;
  sub_23C5ACFC8(v46, v20);
  v23 = sub_23C870A14();
  v24 = v20;
  v25 = v23;
  v26 = v22;
  v27 = v24;
  sub_23C5AD0AC(v26, v24);
  v28 = [v45 initWithAnyEventType:v16 payload:v25];

  v29 = v28;
  v30 = [v28 unwrap];
  if (!v30)
  {

    v39 = v46;
    v40 = v27;
LABEL_26:
    sub_23C5AD0AC(v39, v40);
    return 0;
  }

  v31 = v30;
  v45 = v27;
  v47[0] = 0xD000000000000010;
  v47[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v44 = v29, v32 = sub_23C5FF9C4(v48), v29 = v44, (v33 & 1) == 0))
  {
    sub_23C5AD0AC(v46, v45);

    goto LABEL_10;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v32, v49);
  sub_23C600810(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_25:
    v40 = v45;
    v39 = v46;
    goto LABEL_26;
  }

  v34 = v47[0];
  sub_23C870DE4();
  v35 = LogicalTimestamp.init(dictionaryRepresentation:)(v34);
  if (!v35)
  {
    sub_23C5AD0AC(v46, v45);

    return 0;
  }

  v36 = v35;
  strcpy(v47, "eventId");
  v47[1] = 0xE700000000000000;
  sub_23C871CB4();
  if (!*(a1 + 16) || (v43 = v36, v37 = sub_23C5FF9C4(v48), v36 = v43, (v38 & 1) == 0))
  {
    sub_23C5AD0AC(v46, v45);

    goto LABEL_10;
  }

  sub_23C588DC0(*(a1 + 56) + 32 * v37, v49);
  sub_23C600810(v48);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  sub_23C870AF4();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_23C5AD0AC(v46, v45);

    sub_23C5FE4E4(v8);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  (*(v10 + 16))(v6, v13, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v41 = sub_23C870CD4();

  sub_23C5AD0AC(v46, v45);
  (*(v10 + 8))(v13, v9);
  return v41;
}

uint64_t TimestampedOrderedEvent.dictionaryRepresentation()()
{
  v1 = [*(v0 + 24) dictionaryRepresentation];
  v2 = sub_23C8716B4();

  *&v7 = 0xD000000000000011;
  *(&v7 + 1) = 0x800000023C8A8B10;
  sub_23C871CB4();
  v3 = *(v0 + 16);
  v8 = MEMORY[0x277D839F8];
  *&v7 = v3;
  sub_23C59A4B0(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23C593DBC(v6, v9, isUniquelyReferenced_nonNull_native);
  sub_23C600810(v9);
  return v2;
}

unint64_t SISchemaProvisionalEvent.dictionaryRepresentation()()
{
  v1 = 0x707974206461623CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875050;
  v3 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v4 = [v0 typeId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C871784();
    v8 = v7;

    v9 = (inited + 72);
    *(inited + 96) = v3;
    if (v8)
    {
      *v9 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = (inited + 72);
    *(inited + 96) = v3;
  }

  *v9 = 0x707974206461623CLL;
  v8 = 0xEC0000003E644965;
LABEL_6:
  *(inited + 80) = v8;
  sub_23C871CB4();
  v10 = [v0 version];
  *(inited + 168) = MEMORY[0x277D84A28];
  *(inited + 144) = v10;
  sub_23C871CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_23C873D20;
  *(v11 + 32) = 1701869940;
  *(v11 + 40) = 0xE400000000000000;
  v12 = [v0 anyEvent];
  if (v12)
  {
    v13 = v12;
    [v12 anyEventType];

    v1 = sub_23C871AF4();
  }

  else
  {
    v14 = 0xEA00000000003E65;
  }

  v15 = 0xED00003E64616F6CLL;
  v16 = 0x796170206461623CLL;
  *(v11 + 48) = v1;
  *(v11 + 56) = v14;
  *(v11 + 64) = 0x64616F6C796170;
  *(v11 + 72) = 0xE700000000000000;
  v17 = [v0 anyEvent];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 payload];

    if (v19)
    {
      v20 = sub_23C870A34();
      v22 = v21;

      v16 = sub_23C870A24();
      v15 = v23;
      sub_23C595090(v20, v22);
    }
  }

  *(v11 + 80) = v16;
  *(v11 + 88) = v15;
  v24 = sub_23C5967FC(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9968, &unk_23C873E20);
  swift_arrayDestroy();
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9770, &qword_23C873D48);
  *(inited + 216) = v24;
  v25 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v25;
}

id sub_23C624514(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_23C8716A4();

  return v5;
}

uint64_t Sequence<>.filterInner<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v13 + 16))(&v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20 = a2;
  return sub_23C871874();
}

void OrderedEvent.compactMap<A, B>(_:)(void (*a1)(void)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_23C870D44();
  if (v6)
  {
    v8 = v6;
    a1();
  }

  else
  {
    v7 = *(*(a2 - 8) + 56);

    v7(a3, 1, 1, a2);
  }
}

void OrderedEvent.compactMap2<A, B, C>(_:)(void (*a1)(void)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v6 = sub_23C870D54();
  if (v6)
  {
    v8 = v6;
    v10 = v7;
    a1();
  }

  else
  {
    v9 = *(*(a2 - 8) + 56);

    v9(a3, 1, 1, a2);
  }
}

uint64_t sub_23C624904(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  OrderedEvent.compactMap<A, B>(_:)(sub_23C6265D8, MEMORY[0x277D839B0], &v8);
  return v8 & 1;
}

void sub_23C6249A0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v6 = v2[6];
  v5 = v2[7];
  v7 = *a1;
  OrderedEvent.compactMap<A, B>(_:)(v6, v4, a2);
}

void sub_23C6249D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v7 = v2[7];
  v6 = v2[8];
  v8 = *a1;
  OrderedEvent.compactMap2<A, B, C>(_:)(v7, v5, a2);
}

uint64_t Sequence<>.getInnerEvent<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = sub_23C624AEC;
  v4[13] = v4;
  v4[6] = sub_23C871844();
  sub_23C871924();
  swift_getWitnessTable();
  sub_23C871A74();

  return v4[5];
}

uint64_t sub_23C624AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v39 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >> 62)
  {
    goto LABEL_40;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v10 = 0;
    v37 = v8 & 0xFFFFFFFFFFFFFF8;
    v38 = v8 & 0xC000000000000001;
    v35 = v9;
    v36 = v7;
    v34 = v8;
    while (1)
    {
      if (v38)
      {
        v11 = MEMORY[0x23EED7610](v10, v8);
      }

      else
      {
        if (v10 >= *(v37 + 16))
        {
          goto LABEL_39;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v9 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, &qword_27E1FB820, 0x277D589A8);
      v14 = sub_23C870D44();
      if (v14)
      {
        v15 = v14;
        v16 = [v14 ended];
        if (!v16)
        {
          goto LABEL_32;
        }

        v17 = [v15 trpId];
        if (v17)
        {
          v18 = v17;
          v19 = a2;
          sub_23C871AB4();

          v20 = sub_23C870B74();
          v21 = *(v20 - 8);
          if ((*(v21 + 48))(v7, 1, v20) == 1)
          {
            sub_23C5FE4E4(v7);
            v22 = 0;
            v23 = 0;
          }

          else
          {
            v22 = sub_23C870B04();
            v24 = v7;
            v23 = v25;
            (*(v21 + 8))(v24, v20);
          }

          a2 = v19;
          v8 = v34;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v26 = sub_23C6022E4();
        if (!v27)
        {
          v26 = sub_23C601F9C();
        }

        if (v23)
        {
          if (!v27)
          {

            v9 = v35;
            v7 = v36;
            goto LABEL_6;
          }

          if (v22 == v26 && v23 == v27)
          {

            v9 = v35;
          }

          else
          {
            v28 = sub_23C872014();

            v9 = v35;
            if ((v28 & 1) == 0)
            {

              v7 = v36;
              goto LABEL_6;
            }
          }
        }

        else
        {
          v9 = v35;
          if (v27)
          {

            v7 = v36;
            goto LABEL_6;
          }
        }

        sub_23C601F9C();
        v7 = v36;
        if (!v29)
        {
LABEL_32:

          goto LABEL_6;
        }

        sub_23C871D54();
        v30 = *(v39 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

LABEL_6:
      ++v10;
      if (v13 == v9)
      {
        v31 = v39;
        goto LABEL_37;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_37:

  return v31;
}

uint64_t sub_23C624EB0(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v35 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v9 = 0;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1 & 0xC000000000000001;
    v31 = i;
    v32 = v7;
    v30 = a1;
    while (1)
    {
      if (v34)
      {
        v10 = MEMORY[0x23EED7610](v9, a1);
      }

      else
      {
        if (v9 >= *(v33 + 16))
        {
          goto LABEL_35;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB858, 0x277D58930);
      v13 = sub_23C870D44();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 trpId];
        if (v15)
        {
          v16 = v15;
          v17 = a2;
          sub_23C871AB4();

          v18 = sub_23C870B74();
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(v7, 1, v18) == 1)
          {
            sub_23C5FE4E4(v7);
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v20 = sub_23C870B04();
            v22 = v7;
            v21 = v23;
            (*(v19 + 8))(v22, v18);
          }

          a2 = v17;
          a1 = v30;
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        v24 = sub_23C6022E4();
        if (!v25)
        {
          v24 = sub_23C601F9C();
        }

        if (v21)
        {
          if (v25)
          {
            if (v20 == v24 && v21 == v25)
            {

              i = v31;
LABEL_28:
              sub_23C601F9C();
              v7 = v32;
              if (v27)
              {

                sub_23C871D54();
                v28 = *(v35 + 16);
                sub_23C871D94();
                sub_23C871DA4();
                sub_23C871D64();
              }

              else
              {
              }

              goto LABEL_5;
            }

            v26 = sub_23C872014();

            i = v31;
            if (v26)
            {
              goto LABEL_28;
            }

            v7 = v32;
          }

          else
          {

            i = v31;
            v7 = v32;
          }
        }

        else
        {
          i = v31;
          if (!v25)
          {
            goto LABEL_28;
          }

          v7 = v32;
        }
      }

      else
      {
      }

LABEL_5:
      ++v9;
      if (v12 == i)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C625220(unint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v46 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v7 = a1;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v43 = v6;
    v44 = i;
    v9 = 0;
    v40 = v7;
    v41 = v45 + 8;
    v6 = v7;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v42 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x23EED7610](v9, v6);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_33;
        }

        v12 = *&v6[8 * v9 + 32];
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB860, 0x277D59860);
      a1 = v13;
      v15 = sub_23C870D44();
      if (v15)
      {
        v16 = v15;
        v17 = [v15 trpId];
        if (!v17)
        {
          goto LABEL_14;
        }

        v18 = v17;
        v19 = v6;
        v20 = v10;
        v21 = v43;
        sub_23C871AB4();

        v22 = sub_23C870B74();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v21, 1, v22) == 1)
        {
          sub_23C5FE4E4(v21);
          v10 = v20;
          v11 = v42;
          v6 = v19;
LABEL_14:
          v24 = v10;
          v25 = v6;
          sub_23C601F9C();
          a1 = v26;
          if (v26)
          {
LABEL_15:

LABEL_28:
            v6 = v25;
            v10 = v24;
            i = v44;
            goto LABEL_5;
          }

          goto LABEL_25;
        }

        v27 = sub_23C870B04();
        v29 = v28;
        v30 = v22;
        v31 = v29;
        (*(v23 + 8))(v21, v30);
        v32 = sub_23C601F9C();
        a1 = v33;
        if (!v31)
        {
          v25 = v40;
          v24 = v20;
          v11 = v42;
          if (v33)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

        v10 = v20;
        if (v33)
        {
          v34 = v27;
          v24 = v20;
          v11 = v42;
          if (v34 == v32 && v33 == v31)
          {

            v25 = v40;
          }

          else
          {
            v35 = sub_23C872014();

            v25 = v40;
            if ((v35 & 1) == 0)
            {

              goto LABEL_28;
            }
          }

LABEL_25:
          v36 = *(v41 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

          if (v36)
          {
            a1 = &v46;
            sub_23C871D54();
            v37 = *(v46 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            sub_23C871D64();
          }

          else
          {
          }

          goto LABEL_28;
        }

        v6 = v40;
        i = v44;
        v11 = v42;
      }

      else
      {
      }

LABEL_5:
      ++v9;
      if (v14 == i)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v7 = a1;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6255E4(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v37 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v9 = 0;
    v31 = a2 + 8;
    v32 = a1;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v33 = i;
    v34 = v7;
    while (1)
    {
      if (v36)
      {
        v10 = MEMORY[0x23EED7610](v9, a1);
      }

      else
      {
        if (v9 >= *(v35 + 16))
        {
          goto LABEL_35;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB4A8, 0x277D59858);
      v13 = sub_23C870D44();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 rootTrpId];
        if (v15)
        {
          v16 = v15;
          v17 = a2;
          sub_23C871AB4();

          v18 = sub_23C870B74();
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(v7, 1, v18) == 1)
          {
            sub_23C5FE4E4(v7);
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v20 = sub_23C870B04();
            v22 = v7;
            v21 = v23;
            (*(v19 + 8))(v22, v18);
          }

          a2 = v17;
          a1 = v32;
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        v24 = sub_23C6022E4();
        if (!v25)
        {
          v24 = sub_23C601F9C();
        }

        if (v21)
        {
          if (!v25)
          {

            i = v33;
            v7 = v34;
            goto LABEL_5;
          }

          if (v20 == v24 && v21 == v25)
          {

            i = v33;
          }

          else
          {
            v26 = sub_23C872014();

            i = v33;
            if ((v26 & 1) == 0)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          i = v33;
          if (v25)
          {

            v7 = v34;
            goto LABEL_5;
          }
        }

        if (!*(v31 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId))
        {
          sub_23C601F9C();
          if (!v27)
          {
LABEL_31:

            v7 = v34;
            goto LABEL_5;
          }
        }

        sub_23C871D54();
        v28 = *(v37 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
        v7 = v34;
      }

      else
      {
      }

LABEL_5:
      ++v9;
      if (v12 == i)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C625984(uint64_t a1, uint64_t a2, SEL *a3)
{
  v47 = a3;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v48 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v10 = 0;
    v41 = v45 + 8;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v13 = &qword_27E1FB408;
    v42 = v8 & 0xC000000000000001;
    v43 = v7;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    v46 = v9;
    while (1)
    {
      if (v11)
      {
        v14 = MEMORY[0x23EED7610](v10, v8);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_43;
        }

        v14 = *(v8 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v9 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, v13, 0x277D590F0);
      v7 = v15;
      v17 = sub_23C870D44();
      if (v17)
      {
        break;
      }

LABEL_6:
      ++v10;
      if (v16 == v9)
      {
        v38 = v48;
        goto LABEL_41;
      }
    }

    v18 = v17;
    v19 = [v17 cdmRequestContext];
    if (!v19)
    {

      goto LABEL_6;
    }

    v20 = v13;
    v7 = v19;
    v21 = [v19 *v47];

    if (!v21)
    {

      goto LABEL_36;
    }

    v22 = [v18 eventMetadata];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 trpId];

      if (v24)
      {
        v25 = v43;
        sub_23C871AB4();

        v26 = sub_23C870B74();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v25, 1, v26) != 1)
        {
          v40 = sub_23C870B04();
          v30 = v29;
          v31 = v26;
          v32 = v30;
          (*(v27 + 8))(v25, v31);
          v33 = sub_23C601F9C();
          v7 = v34;
          if (v32)
          {
            v11 = v42;
            v13 = v20;
            if (v34)
            {
              if (v40 == v33 && v34 == v32)
              {

LABEL_32:
                v36 = *(v41 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

                if (v36)
                {
                  v7 = &v48;
                  sub_23C871D54();
                  v37 = *(v48 + 16);
                  sub_23C871D94();
                  sub_23C871DA4();
                  sub_23C871D64();
                }

                else
                {
                }

                v12 = v44;
LABEL_36:
                v13 = v20;
                v9 = v46;
                goto LABEL_6;
              }

              v35 = sub_23C872014();

              if (v35)
              {
                goto LABEL_32;
              }

              goto LABEL_20;
            }
          }

          else
          {
            v11 = v42;
            v13 = v20;
            if (!v34)
            {
              goto LABEL_32;
            }
          }

LABEL_19:

LABEL_20:
          v12 = v44;
          v9 = v46;
          goto LABEL_6;
        }

        sub_23C5FE4E4(v25);
        v11 = v42;
      }
    }

    sub_23C601F9C();
    v7 = v28;
    v13 = v20;
    if (!v28)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_41:

  return v38;
}

uint64_t sub_23C625DB8(unint64_t a1, uint64_t a2, SEL *a3)
{
  v40 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v42 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = v7;
    v37 = v40 + 8;
    v38 = a1 & 0xC000000000000001;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x23EED7610](v9, a1);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_35;
        }

        v12 = *(a1 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB818, 0x277D597F8);
      v15 = sub_23C870D44();
      if (v15)
      {
        v16 = v15;
        v17 = [v15 *v41];
        if (!v17)
        {

          goto LABEL_5;
        }

        v18 = [v16 trpId];
        if (!v18)
        {
          goto LABEL_15;
        }

        v19 = v18;
        v20 = a1;
        v21 = i;
        sub_23C871AB4();

        v22 = sub_23C870B74();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v7, 1, v22) == 1)
        {
          sub_23C5FE4E4(v7);
          i = v21;
          a1 = v20;
          v10 = v38;
LABEL_15:
          sub_23C601F9C();
          if (!v24)
          {
            goto LABEL_27;
          }

LABEL_16:

          v11 = v39;
          goto LABEL_5;
        }

        v25 = sub_23C870B04();
        v26 = v7;
        v36 = v25;
        v28 = v27;
        (*(v23 + 8))(v26, v22);
        v29 = sub_23C601F9C();
        if (!v28)
        {
          v7 = v35;
          i = v21;
          a1 = v20;
          v10 = v38;
          if (!v30)
          {
            goto LABEL_27;
          }

          goto LABEL_16;
        }

        i = v21;
        if (v30)
        {
          a1 = v20;
          if (v36 == v29 && v30 == v28)
          {

            v7 = v35;
            v10 = v38;
LABEL_27:
            v32 = *(v37 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);

            if (v32)
            {
              sub_23C871D54();
              v33 = *(v42 + 16);
              sub_23C871D94();
              sub_23C871DA4();
              sub_23C871D64();
            }

            else
            {
            }

            v11 = v39;
            goto LABEL_5;
          }

          v31 = sub_23C872014();

          v7 = v35;
          v10 = v38;
          if (v31)
          {
            goto LABEL_27;
          }

          v11 = v39;
        }

        else
        {

          v7 = v35;
          a1 = v20;
          v10 = v38;
          v11 = v39;
        }
      }

      else
      {
      }

LABEL_5:
      ++v9;
      if (v14 == i)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C62617C(uint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      v8 = sub_23C870D44();
      if (v8 && (v9 = v8, v10 = sub_23C620CA8(v8), v9, (v10 & 1) != 0))
      {
        sub_23C871D54();
        v11 = *(v14 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v12 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_17:

  return v12;
}

uint64_t sub_23C626314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v27 = v4;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x23EED7610](v6, v4);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v5 = sub_23C871C34();
        goto LABEL_3;
      }

      sub_23C5A3FDC(0, &qword_27E1FB3F8, 0x277D59610);
      v12 = sub_23C870D44();
      if (!v12)
      {
        goto LABEL_5;
      }

      v13 = v12;
      v14 = [v12 eventMetadata];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 resultCandidateId];

        if (v16)
        {
          break;
        }
      }

      if (!a3)
      {

        goto LABEL_23;
      }

LABEL_6:
      ++v6;
      if (v11 == v5)
      {
        v25 = v30;
        goto LABEL_27;
      }
    }

    v17 = v5;
    v18 = v8;
    v19 = v7;
    v20 = sub_23C871784();
    v22 = v21;

    if (!a3)
    {

      v7 = v19;
      v8 = v18;
      v5 = v17;
      v4 = v27;
      goto LABEL_6;
    }

    if (v20 == a2 && v22 == a3)
    {

      v7 = v19;
      v8 = v18;
      v5 = v17;
      v4 = v27;
LABEL_23:
      sub_23C871D54();
      v24 = *(v30 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
      goto LABEL_6;
    }

    v23 = sub_23C872014();

    v7 = v19;
    v8 = v18;
    v5 = v17;
    v4 = v27;
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_5:

    goto LABEL_6;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_27:

  return v25;
}

uint64_t sub_23C6265AC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1() & 1;
}

uint64_t sub_23C6265D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  result = v3();
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall OrderedEvent.getTrpId()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v254 = &v247 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v264 = &v247 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v263 = &v247 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v262 = &v247 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v261 = &v247 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v260 = &v247 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v247 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v248 = &v247 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v249 = &v247 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v251 = &v247 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v253 = &v247 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v256 = &v247 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v257 = &v247 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v250 = &v247 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v252 = &v247 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v255 = &v247 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v258 = &v247 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v259 = &v247 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v247 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v247 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v247 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v247 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v247 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v247 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v247 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v247 - v60;
  v62 = sub_23C870CA4();
  if (!v62)
  {
    goto LABEL_122;
  }

  v63 = v62;
  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = [v64 eventMetadata];
    if (v65)
    {
      v66 = v63;
      v67 = v65;
      v68 = [v65 trpId];

      if (v68)
      {
        sub_23C871AB4();

        v69 = sub_23C870B74();
        v70 = *(v69 - 8);
        if ((*(v70 + 48))(v61, 1, v69) == 1)
        {

LABEL_7:
          sub_23C5FE4E4(v61);
LABEL_121:
          v62 = 0;
LABEL_122:
          v86 = 0;
          goto LABEL_173;
        }

        v83 = sub_23C870B04();
        v85 = v84;

        (*(v70 + 8))(v61, v69);
        goto LABEL_20;
      }

LABEL_120:

      goto LABEL_121;
    }

LABEL_97:

    goto LABEL_121;
  }

  objc_opt_self();
  v71 = swift_dynamicCastObjCClass();
  if (v71)
  {
    v72 = [v71 eventMetadata];
    if (!v72)
    {
      goto LABEL_97;
    }

    v66 = v63;
    v73 = v72;
    v74 = [v72 trpId];

    if (!v74)
    {
      goto LABEL_120;
    }

    sub_23C871AB4();

    v75 = sub_23C870B74();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v59, 1, v75) == 1)
    {

      sub_23C5FE4E4(v59);
      goto LABEL_121;
    }

    v94 = sub_23C870B04();
    v96 = v95;

    v97 = *(v76 + 8);
    v98 = v59;
    goto LABEL_27;
  }

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  if (v77)
  {
    v78 = [v77 eventMetadata];
    if (!v78)
    {
      goto LABEL_97;
    }

    v66 = v63;
    v79 = v78;
    v80 = [v78 trpId];

    if (!v80)
    {
      goto LABEL_120;
    }

    sub_23C871AB4();

    v81 = sub_23C870B74();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v56, 1, v81) == 1)
    {

LABEL_18:
      sub_23C5FE4E4(v56);
      goto LABEL_121;
    }

    v94 = sub_23C870B04();
    v96 = v106;

    v97 = *(v82 + 8);
    v98 = v56;
LABEL_35:
    v99 = v81;
    goto LABEL_36;
  }

  objc_opt_self();
  v87 = swift_dynamicCastObjCClass();
  if (v87)
  {
    v88 = [v87 eventMetadata];
    if (!v88)
    {
      goto LABEL_97;
    }

    v89 = v63;
    v90 = v88;
    v91 = [v88 trpId];

    if (v91)
    {
      sub_23C871AB4();

      v92 = sub_23C870B74();
      v93 = *(v92 - 8);
      if ((*(v93 + 48))(v53, 1, v92) == 1)
      {

        sub_23C5FE4E4(v53);
        goto LABEL_121;
      }

      v83 = sub_23C870B04();
      v85 = v113;

      (*(v93 + 8))(v53, v92);
      goto LABEL_20;
    }

LABEL_56:

    goto LABEL_121;
  }

  objc_opt_self();
  v100 = swift_dynamicCastObjCClass();
  if (!v100)
  {
    objc_opt_self();
    v107 = swift_dynamicCastObjCClass();
    if (v107)
    {
      v108 = [v107 eventMetadata];
      if (!v108)
      {
        goto LABEL_97;
      }

      v89 = v63;
      v109 = v108;
      v110 = [v108 trpId];

      if (!v110)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v111 = sub_23C870B74();
      v112 = *(v111 - 8);
      if ((*(v112 + 48))(v47, 1, v111) == 1)
      {

        sub_23C5FE4E4(v47);
        goto LABEL_121;
      }

      v83 = sub_23C870B04();
      v85 = v127;

      (*(v112 + 8))(v47, v111);
      goto LABEL_20;
    }

    objc_opt_self();
    v114 = swift_dynamicCastObjCClass();
    if (v114)
    {
      v115 = [v114 eventMetadata];
      if (!v115)
      {
        goto LABEL_97;
      }

      v89 = v63;
      v116 = v115;
      v117 = [v115 trpId];

      if (!v117)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v118 = sub_23C870B74();
      v119 = *(v118 - 8);
      if ((*(v119 + 48))(v44, 1, v118) == 1)
      {

LABEL_48:
        sub_23C5FE4E4(v44);
        goto LABEL_121;
      }

      v83 = sub_23C870B04();
      v85 = v135;

LABEL_66:
      (*(v119 + 8))(v44, v118);
      goto LABEL_20;
    }

    objc_opt_self();
    v121 = swift_dynamicCastObjCClass();
    if (v121)
    {
      v122 = [v121 eventMetadata];
      if (!v122)
      {
        goto LABEL_97;
      }

      v89 = v63;
      v123 = v122;
      v124 = [v122 trpId];

      if (!v124)
      {
        goto LABEL_56;
      }

      sub_23C871AB4();

      v125 = sub_23C870B74();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v41, 1, v125) != 1)
      {
        v83 = sub_23C870B04();
        v85 = v145;

        (*(v126 + 8))(v41, v125);
        goto LABEL_20;
      }

LABEL_55:
      sub_23C5FE4E4(v41);
      goto LABEL_121;
    }

    objc_opt_self();
    v128 = swift_dynamicCastObjCClass();
    if (v128)
    {
      v129 = [v128 innerEvent];
      if (!v129)
      {
        goto LABEL_97;
      }

      v66 = v129;
      v130 = v63;
      objc_opt_self();
      v131 = swift_dynamicCastObjCClass();
      if (v131)
      {
        v132 = [v131 trpId];
        if (v132)
        {
          v133 = v132;
          v134 = v259;
          sub_23C871AB4();

          v118 = sub_23C870B74();
          v119 = *(v118 - 8);
          if ((*(v119 + 48))(v134, 1, v118) == 1)
          {

            sub_23C5FE4E4(v259);
            goto LABEL_121;
          }

          v44 = v259;
          goto LABEL_132;
        }

LABEL_119:

        goto LABEL_120;
      }

      objc_opt_self();
      v146 = swift_dynamicCastObjCClass();
      if (v146)
      {
        v147 = [v146 trpId];
        if (!v147)
        {
          goto LABEL_119;
        }

        v148 = v147;
        v149 = v258;
        sub_23C871AB4();

        v118 = sub_23C870B74();
        v119 = *(v118 - 8);
        if ((*(v119 + 48))(v149, 1, v118) == 1)
        {

          sub_23C5FE4E4(v258);
          goto LABEL_121;
        }

        v44 = v258;
      }

      else
      {
        objc_opt_self();
        v159 = swift_dynamicCastObjCClass();
        if (v159)
        {
          v160 = [v159 trpId];
          if (!v160)
          {
            goto LABEL_119;
          }

          v161 = v160;
          v162 = v255;
          sub_23C871AB4();

          v118 = sub_23C870B74();
          v119 = *(v118 - 8);
          if ((*(v119 + 48))(v162, 1, v118) == 1)
          {

            sub_23C5FE4E4(v255);
            goto LABEL_121;
          }

          v44 = v255;
        }

        else
        {
          objc_opt_self();
          v175 = swift_dynamicCastObjCClass();
          if (v175)
          {
            v176 = [v175 trpId];
            if (!v176)
            {
              goto LABEL_119;
            }

            v177 = v176;
            v178 = v252;
            sub_23C871AB4();

            v118 = sub_23C870B74();
            v119 = *(v118 - 8);
            if ((*(v119 + 48))(v178, 1, v118) == 1)
            {

              sub_23C5FE4E4(v252);
              goto LABEL_121;
            }

            v44 = v252;
          }

          else
          {
            objc_opt_self();
            v186 = swift_dynamicCastObjCClass();
            if (!v186)
            {
              goto LABEL_119;
            }

            v187 = [v186 trpId];
            if (!v187)
            {
              goto LABEL_119;
            }

            v188 = v187;
            v189 = v250;
            sub_23C871AB4();

            v118 = sub_23C870B74();
            v119 = *(v118 - 8);
            if ((*(v119 + 48))(v189, 1, v118) == 1)
            {

              sub_23C5FE4E4(v250);
              goto LABEL_121;
            }

            v44 = v250;
          }
        }
      }

LABEL_132:
      v83 = sub_23C870B04();
      v85 = v196;

      goto LABEL_66;
    }

    v44 = v260;
    v41 = v261;
    v50 = v262;
    v61 = v263;
    v56 = v264;
    objc_opt_self();
    v136 = swift_dynamicCastObjCClass();
    if (v136)
    {
      v66 = v63;
      v137 = [v136 innerEvent];
      if (!v137)
      {
        goto LABEL_120;
      }

      v138 = v137;
      objc_opt_self();
      v139 = swift_dynamicCastObjCClass();
      if (!v139 || (v140 = [v139 startedOrChanged]) == 0 || (v141 = v140, v142 = objc_msgSend(v140, sel_trpId), v141, !v142))
      {

        goto LABEL_121;
      }

      v143 = v257;
      sub_23C871AB4();

      v81 = sub_23C870B74();
      v144 = *(v81 - 8);
      if ((*(v144 + 48))(v143, 1, v81) == 1)
      {

        sub_23C5FE4E4(v257);
        goto LABEL_121;
      }

      v179 = v257;
      v94 = sub_23C870B04();
      v96 = v180;

      v97 = *(v144 + 8);
      v98 = v179;
      goto LABEL_35;
    }

    objc_opt_self();
    v150 = v63;
    v151 = swift_dynamicCastObjCClass();
    if (!v151)
    {
      objc_opt_self();
      v163 = swift_dynamicCastObjCClass();
      if (!v163)
      {
        goto LABEL_97;
      }

      v164 = [v163 innerEvent];
      if (!v164)
      {
        goto LABEL_97;
      }

      v165 = v164;
      objc_opt_self();
      v166 = swift_dynamicCastObjCClass();
      if (!v166 || (v167 = [v166 trpId]) == 0)
      {

        goto LABEL_121;
      }

      v168 = v167;
      v169 = v254;
      sub_23C871AB4();

      v81 = sub_23C870B74();
      v170 = *(v81 - 8);
      if ((*(v170 + 48))(v169, 1, v81) == 1)
      {

        sub_23C5FE4E4(v254);
        goto LABEL_121;
      }

      v190 = v254;
      v94 = sub_23C870B04();
      v96 = v191;

      v97 = *(v170 + 8);
      v98 = v190;
      goto LABEL_35;
    }

    v152 = [v151 innerEvent];
    if (!v152)
    {
      goto LABEL_97;
    }

    v153 = v152;
    objc_opt_self();
    v154 = swift_dynamicCastObjCClass();
    if (v154)
    {
      v155 = [v154 trpId];
      if (v155)
      {
        v156 = v155;
        v157 = v256;
        sub_23C871AB4();

        v75 = sub_23C870B74();
        v158 = *(v75 - 8);
        if ((*(v158 + 48))(v157, 1, v75) == 1)
        {

          sub_23C5FE4E4(v256);
          goto LABEL_121;
        }

        v181 = v256;
        goto LABEL_143;
      }

LABEL_170:

      goto LABEL_121;
    }

    objc_opt_self();
    v171 = swift_dynamicCastObjCClass();
    if (v171)
    {
      v172 = [v171 trpId];
      if (!v172)
      {
        goto LABEL_170;
      }

      v173 = v172;
      v174 = v253;
      sub_23C871AB4();

      v75 = sub_23C870B74();
      v158 = *(v75 - 8);
      if ((*(v158 + 48))(v174, 1, v75) == 1)
      {

        sub_23C5FE4E4(v253);
        goto LABEL_121;
      }

      v181 = v253;
    }

    else
    {
      objc_opt_self();
      v182 = swift_dynamicCastObjCClass();
      if (v182)
      {
        v183 = [v182 trpId];
        if (!v183)
        {
          goto LABEL_170;
        }

        v184 = v183;
        v185 = v251;
        sub_23C871AB4();

        v75 = sub_23C870B74();
        v158 = *(v75 - 8);
        if ((*(v158 + 48))(v185, 1, v75) == 1)
        {

          sub_23C5FE4E4(v251);
          goto LABEL_121;
        }

        v181 = v251;
      }

      else
      {
        objc_opt_self();
        v192 = swift_dynamicCastObjCClass();
        if (v192)
        {
          v193 = [v192 trpId];
          if (!v193)
          {
            goto LABEL_170;
          }

          v194 = v193;
          v195 = v249;
          sub_23C871AB4();

          v75 = sub_23C870B74();
          v158 = *(v75 - 8);
          if ((*(v158 + 48))(v195, 1, v75) == 1)
          {

            sub_23C5FE4E4(v249);
            goto LABEL_121;
          }

          v181 = v249;
        }

        else
        {
          objc_opt_self();
          v197 = swift_dynamicCastObjCClass();
          if (!v197)
          {
            objc_opt_self();
            v201 = swift_dynamicCastObjCClass();
            if (v201)
            {
              v202 = [v201 trpId];
              if (!v202)
              {
                goto LABEL_170;
              }

              v203 = v202;
              sub_23C871AB4();

              v204 = sub_23C870B74();
              v205 = *(v204 - 8);
              if ((*(v205 + 48))(v16, 1, v204) == 1)
              {

                sub_23C5FE4E4(v16);
                goto LABEL_121;
              }

              v212 = v16;
              v213 = sub_23C870B04();
              v215 = v214;

              (*(v205 + 8))(v212, v204);
            }

            else
            {
              objc_opt_self();
              v207 = swift_dynamicCastObjCClass();
              if (v207)
              {
                v208 = [v207 trpId];
                if (!v208)
                {
                  goto LABEL_170;
                }

                v209 = v208;
                sub_23C871AB4();

                v210 = sub_23C870B74();
                v211 = *(v210 - 8);
                if ((*(v211 + 48))(v44, 1, v210) == 1)
                {

                  goto LABEL_48;
                }

                v213 = sub_23C870B04();
                v215 = v221;

                (*(v211 + 8))(v44, v210);
              }

              else
              {
                objc_opt_self();
                v216 = swift_dynamicCastObjCClass();
                if (v216)
                {
                  v217 = [v216 trpId];
                  if (!v217)
                  {
                    goto LABEL_170;
                  }

                  v218 = v217;
                  sub_23C871AB4();

                  v219 = sub_23C870B74();
                  v220 = *(v219 - 8);
                  if ((*(v220 + 48))(v41, 1, v219) == 1)
                  {

                    goto LABEL_55;
                  }

                  v213 = sub_23C870B04();
                  v215 = v227;

                  (*(v220 + 8))(v41, v219);
                }

                else
                {
                  objc_opt_self();
                  v222 = swift_dynamicCastObjCClass();
                  if (v222)
                  {
                    v223 = [v222 trpId];
                    if (!v223)
                    {
                      goto LABEL_170;
                    }

                    v224 = v223;
                    sub_23C871AB4();

                    v225 = sub_23C870B74();
                    v226 = *(v225 - 8);
                    if ((*(v226 + 48))(v50, 1, v225) == 1)
                    {

                      goto LABEL_33;
                    }

                    v213 = sub_23C870B04();
                    v215 = v233;

                    (*(v226 + 8))(v50, v225);
                  }

                  else
                  {
                    objc_opt_self();
                    v228 = swift_dynamicCastObjCClass();
                    if (!v228)
                    {
                      objc_opt_self();
                      v234 = swift_dynamicCastObjCClass();
                      if (v234)
                      {
                        v235 = [v234 startedOrChanged];
                        if (v235)
                        {
                          v236 = v235;
                          v237 = [v235 trpId];

                          if (v237)
                          {
                            sub_23C871AB4();

                            v238 = sub_23C870B74();
                            v239 = *(v238 - 8);
                            if ((*(v239 + 48))(v56, 1, v238) != 1)
                            {
                              v242 = v56;
                              v243 = sub_23C870B04();
                              v245 = v244;

                              (*(v239 + 8))(v242, v238);
                              v86 = v245;
                              v62 = v243;
                              goto LABEL_173;
                            }

                            goto LABEL_18;
                          }
                        }
                      }

                      goto LABEL_170;
                    }

                    v229 = [v228 trpId];
                    if (!v229)
                    {
                      goto LABEL_170;
                    }

                    v230 = v229;
                    sub_23C871AB4();

                    v231 = sub_23C870B74();
                    v232 = *(v231 - 8);
                    if ((*(v232 + 48))(v61, 1, v231) == 1)
                    {

                      goto LABEL_7;
                    }

                    v240 = v61;
                    v213 = sub_23C870B04();
                    v215 = v241;

                    (*(v232 + 8))(v240, v231);
                  }
                }
              }
            }

            v86 = v215;
            v62 = v213;
            goto LABEL_173;
          }

          v198 = [v197 trpId];
          if (!v198)
          {
            goto LABEL_170;
          }

          v199 = v198;
          v200 = v248;
          sub_23C871AB4();

          v75 = sub_23C870B74();
          v158 = *(v75 - 8);
          if ((*(v158 + 48))(v200, 1, v75) == 1)
          {

            sub_23C5FE4E4(v248);
            goto LABEL_121;
          }

          v181 = v248;
        }
      }
    }

LABEL_143:
    v94 = sub_23C870B04();
    v96 = v206;

    v97 = *(v158 + 8);
    v98 = v181;
LABEL_27:
    v99 = v75;
LABEL_36:
    v97(v98, v99);
    v86 = v96;
    v62 = v94;
    goto LABEL_173;
  }

  v101 = [v100 eventMetadata];
  if (!v101)
  {
    goto LABEL_97;
  }

  v89 = v63;
  v102 = v101;
  v103 = [v101 trpId];

  if (!v103)
  {
    goto LABEL_56;
  }

  sub_23C871AB4();

  v104 = sub_23C870B74();
  v105 = *(v104 - 8);
  if ((*(v105 + 48))(v50, 1, v104) == 1)
  {

LABEL_33:
    sub_23C5FE4E4(v50);
    goto LABEL_121;
  }

  v83 = sub_23C870B04();
  v85 = v120;

  (*(v105 + 8))(v50, v104);
LABEL_20:
  v86 = v85;
  v62 = v83;
LABEL_173:
  result.value._object = v86;
  result.value._countAndFlagsBits = v62;
  return result;
}

uint64_t Array<A>.filter(finalTrpId:rootTrpId:)(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v5 = a5;
  if (!a2)
  {

    return v5;
  }

  v21 = MEMORY[0x277D84F90];
  if (a5 >> 62)
  {
LABEL_28:
    v6 = sub_23C871C34();
    if (v6)
    {
      goto LABEL_4;
    }

    return MEMORY[0x277D84F90];
  }

  v6 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_4:
  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EED7610](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v9 = *(v5 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v12 = OrderedEvent.getTrpId()();
    if (!v12.value._object)
    {
      goto LABEL_6;
    }

    result = sub_23C870CA4();
    if (!result)
    {
      break;
    }

    v14 = result;
    ObjectType = swift_getObjectType();

    if (ObjectType == sub_23C628424() && a4)
    {
      if (v12.value._countAndFlagsBits == a3 && v12.value._object == a4)
      {
        goto LABEL_5;
      }
    }

    else if (v12.value._countAndFlagsBits == a1 && v12.value._object == a2)
    {
LABEL_5:

      goto LABEL_6;
    }

    v16 = sub_23C872014();

    if ((v16 & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_6:
    sub_23C871D54();
    v8 = *(v21 + 16);
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
LABEL_7:
    if (v11 == v6)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23C628424()
{
  result = qword_27E1FB868;
  if (!qword_27E1FB868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB868);
  }

  return result;
}

uint64_t PublisherProtocol.toAsyncSequence()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  return sub_23C585D20(v7, a1, a2);
}

uint64_t PublisherProtocol.toSequence()(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23C62856C, 0, 0);
}

uint64_t sub_23C62856C()
{
  v13 = v0;
  v1 = (v0 + 2);
  v2 = v0[13];
  v3 = v0[11];
  v4 = *(v0[12] + 8);
  v0[14] = swift_getAssociatedTypeWitness();
  v0[6] = sub_23C8718E4();
  PublisherProtocol.toAsyncSequence()(v3, &v12);
  v5 = type metadata accessor for BiomeAsyncSequence();
  v6 = BiomeAsyncSequence.makeAsyncIterator()(v5);
  swift_unknownObjectRelease();
  v0[7] = v6;
  v7 = *(MEMORY[0x277D856F8] + 4);
  v8 = swift_task_alloc();
  v0[15] = v8;
  v15.val[0] = *(v0 + 11);
  v15.val[1] = v15.val[0];
  vst2q_f64(v1, v15);
  v9 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator();
  WitnessTable = swift_getWitnessTable();
  *v8 = v0;
  v8[1] = sub_23C6286DC;

  return MEMORY[0x282200320](v0 + 8, 0, 0, v9, WitnessTable, v0 + 9);
}

uint64_t sub_23C6286DC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_23C62896C;
  }

  else
  {
    v5 = sub_23C6287F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C6287F4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v3 = *(v0 + 112);
    *(v0 + 80) = v1;
    sub_23C871924();
    sub_23C871914();
    v4 = *(MEMORY[0x277D856F8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    v13.val[0] = *(v0 + 88);
    v13.val[1] = v13.val[0];
    v2 = (v0 + 16);
    vst2q_f64(v2, v13);
    v6 = type metadata accessor for BiomeAsyncSequence.BiomeAsyncIterator();
    WitnessTable = swift_getWitnessTable();
    *v5 = v0;
    v5[1] = sub_23C6286DC;

    return MEMORY[0x282200320](v0 + 64, 0, 0, v6, WitnessTable, v0 + 72);
  }

  else
  {
    v8 = *(v0 + 56);

    v9 = *(v0 + 48);
    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_23C62896C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23C6289D0()
{
  *(v1 + 48) = v0;
  sub_23C870C34();
  v2 = *(MEMORY[0x277D55288] + 4);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_23C628A70;

  return MEMORY[0x2821B6740]();
}

uint64_t sub_23C628A70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[7];
  v7 = *v3;
  v5[8] = a1;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C628BAC, 0, 0);
  }
}

uint64_t sub_23C628BAC()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[6];
    v4 = *(v3 + 24);
    *(v3 + 24) = v1;

    v5 = *(v3 + 32);
    *(v3 + 32) = v2;

    v6 = v0[1];
  }

  else
  {
    v7 = v0[6] + OBJC_IVAR____TtC26AIMLInstrumentationStreams17RawJoinableStream_logger;
    v8 = sub_23C871634();
    v9 = sub_23C871AD4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23C56D000, v8, v9, "Unable to establish stream with Raw SiriAnalytics", v10, 2u);
      MEMORY[0x23EED8240](v10, -1, -1);
    }

    sub_23C6295E0();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    v11[1] = 0x800000023C8AA100;
    swift_willThrow();
    v6 = v0[1];
  }

  return v6();
}

void *sub_23C628D04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v64 = a6;
  v65 = a5;
  LODWORD(v63) = a4;
  v54 = a1;
  v55 = a3;
  v62 = a9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA10, &unk_23C87BB90);
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v54 - v15;
  v16 = sub_23C870AE4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v54 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v54 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v54 - v35;
  if (a2)
  {
    v37 = *(v17 + 56);
    v37(&v54 - v35, 1, 1, v16);
  }

  else
  {
    sub_23C870A54();
    (*(v17 + 32))(v36, v23, v16);
    v37 = *(v17 + 56);
    v37(v36, 0, 1, v16);
  }

  if (v63)
  {
    v38 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v17 + 32))(v34, v21, v16);
    v38 = 0;
  }

  v37(v34, v38, 1, v16);
  sub_23C60D7E8(v36, v31);
  v63 = v34;
  sub_23C60D7E8(v34, v28);
  if (v64)
  {
    v39 = 0;
  }

  else
  {
    v39 = v65;
  }

  if (v66)
  {
    v40 = 0;
  }

  else
  {
    v40 = a7;
  }

  v41 = *(v17 + 48);
  v42 = 0;
  if (v41(v31, 1, v16) != 1)
  {
    v42 = sub_23C870A84();
    (*(v17 + 8))(v31, v16);
  }

  if (v41(v28, 1, v16) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_23C870A84();
    (*(v17 + 8))(v28, v16);
  }

  v44 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v45 = [v44 initWithStartDate:v42 endDate:v43 maxEvents:v39 lastN:v40 reversed:{0, v54, v55}];

  result = *(v67 + 24);
  if (result)
  {
    v47 = [result publisherWithOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
    v48 = v56;
    sub_23C870C14();
    v49 = type metadata accessor for AnteroEvent();
    sub_23C611604(&qword_27E1FBA18, &unk_27E2054E0, &unk_23C87B440);
    v51 = v58;
    v50 = v59;
    sub_23C870BB4();
    (*(v57 + 8))(v48, v50);
    sub_23C611604(&qword_27E1FBA20, &qword_27E1FBA10, &unk_23C87BB90);
    v52 = v61;
    v53 = sub_23C870BA4();
    MEMORY[0x23EED64F0](v53, v49);

    (*(v60 + 8))(v51, v52);
    sub_23C629578(v63);
    return sub_23C629578(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23C6292EC(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  v2 = a1;
  v3 = TimestampedOrderedEvent.init(rawEvent:)(v2);
  [v2 timestamp];
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for AnteroEvent());
  v7 = sub_23C585090(v3, v5);

  return v7;
}

uint64_t sub_23C629384()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC26AIMLInstrumentationStreams17RawJoinableStream_logger;
  v3 = sub_23C871654();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RawJoinableStream()
{
  result = qword_27E1FBA00;
  if (!qword_27E1FBA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C629484()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23C629578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23C6295E0()
{
  result = qword_27E1FBA28;
  if (!qword_27E1FBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA28);
  }

  return result;
}

uint64_t sub_23C629644()
{
  *(v1 + 48) = v0;
  sub_23C870C34();
  v2 = *(MEMORY[0x277D55288] + 4);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_23C6296E4;

  return MEMORY[0x2821B6740]();
}

uint64_t sub_23C6296E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[7];
  v7 = *v3;
  v5[8] = a1;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C629820, 0, 0);
  }
}

uint64_t sub_23C629820()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[6];
    v4 = *(v3 + 16);
    *(v3 + 16) = v1;

    v5 = *(v3 + 24);
    *(v3 + 24) = v2;

    v6 = v0[1];
  }

  else
  {
    v7 = v0[6] + OBJC_IVAR____TtC26AIMLInstrumentationStreams9RawStream_logger;
    v8 = sub_23C871634();
    v9 = sub_23C871AD4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23C56D000, v8, v9, "Unable to establish stream with Raw SiriAnalytics", v10, 2u);
      MEMORY[0x23EED8240](v10, -1, -1);
    }

    sub_23C62A178();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    v11[1] = 0x800000023C8AA100;
    swift_willThrow();
    v6 = v0[1];
  }

  return v6();
}

void *sub_23C629978@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v64 = a6;
  v65 = a5;
  LODWORD(v63) = a4;
  v54 = a1;
  v55 = a3;
  v62 = a9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v54 - v15;
  v16 = sub_23C870AE4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v54 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v54 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v54 - v35;
  if (a2)
  {
    v37 = *(v17 + 56);
    v37(&v54 - v35, 1, 1, v16);
  }

  else
  {
    sub_23C870A54();
    (*(v17 + 32))(v36, v23, v16);
    v37 = *(v17 + 56);
    v37(v36, 0, 1, v16);
  }

  if (v63)
  {
    v38 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v17 + 32))(v34, v21, v16);
    v38 = 0;
  }

  v37(v34, v38, 1, v16);
  sub_23C60D7E8(v36, v31);
  v63 = v34;
  sub_23C60D7E8(v34, v28);
  if (v64)
  {
    v39 = 0;
  }

  else
  {
    v39 = v65;
  }

  if (v66)
  {
    v40 = 0;
  }

  else
  {
    v40 = a7;
  }

  v41 = *(v17 + 48);
  v42 = 0;
  if (v41(v31, 1, v16) != 1)
  {
    v42 = sub_23C870A84();
    (*(v17 + 8))(v31, v16);
  }

  if (v41(v28, 1, v16) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_23C870A84();
    (*(v17 + 8))(v28, v16);
  }

  v44 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v45 = [v44 initWithStartDate:v42 endDate:v43 maxEvents:v39 lastN:v40 reversed:{0, v54, v55}];

  result = *(v67 + 16);
  if (result)
  {
    v47 = [result publisherWithOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
    v48 = v56;
    sub_23C870C14();
    v49 = type metadata accessor for TimestampedOrderedEvent();
    sub_23C611604(&qword_27E1FBA18, &unk_27E2054E0, &unk_23C87B440);
    v51 = v58;
    v50 = v59;
    sub_23C870BB4();
    (*(v57 + 8))(v48, v50);
    sub_23C611604(&qword_27E1FBA38, &qword_27E1FBA30, &unk_23C87B530);
    v52 = v61;
    v53 = sub_23C870BA4();
    MEMORY[0x23EED64F0](v53, v49);

    (*(v60 + 8))(v51, v52);
    sub_23C629578(v63);
    return sub_23C629578(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C629F60(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  return TimestampedOrderedEvent.init(rawEvent:)(a1);
}

uint64_t sub_23C629FA0()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC26AIMLInstrumentationStreams9RawStream_logger;
  v3 = sub_23C871654();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RawStream()
{
  result = qword_2814FABD0;
  if (!qword_2814FABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C62A0A0()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23C62A178()
{
  result = qword_27E1FBA40;
  if (!qword_27E1FBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA40);
  }

  return result;
}

uint64_t sub_23C62A1DC(void *a1, void *a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  if (a1 && a2)
  {
    v12 = a1;
    v13 = a2;
    sub_23C870D94();
    sub_23C870D94();
    v14 = sub_23C870B44();
    v15 = *(v5 + 8);
    v15(v9, v4);
    v15(v11, v4);
    if (v14)
    {
      v16 = sub_23C870DD4();
      v17 = sub_23C870DD4();

      *&result = (v16 - v17) / 1000000000.0;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t sub_23C62A380()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA48);
  __swift_project_value_buffer(v0, qword_27E1FBA48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOICE_ONLY";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOICE_FORWARD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_FORWARD";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "DISPLAY_ONLY";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C62A678()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA60);
  __swift_project_value_buffer(v0, qword_27E1FBA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_request_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "response_mode";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "response_locale";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "statement_result_digests";
  *(v16 + 8) = 24;
  *(v16 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C62C6B4();
            sub_23C8710A4();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
            sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest);
            sub_23C871194();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v1))
    {
      if (!*(v0 + 32) || (v11 = *(v0 + 32), sub_23C62C6B4(), result = sub_23C871254(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_23C8712C4(), !v1))
        {
          if (!*(v0[7] + 16) || (type metadata accessor for ResponseGenerationProtoStatementResultDigest(0), sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest), result = sub_23C8712F4(), !v1))
          {
            v10 = v0 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C62ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C62AD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA74(&qword_27E1FBAF0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C62ADE0()
{
  sub_23C62DA74(&qword_27E1FBAC8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return sub_23C8711F4();
}

uint64_t sub_23C62AE4C()
{
  sub_23C62DA74(&qword_27E1FBAC8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return sub_23C871204();
}

uint64_t sub_23C62AEE8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FBA78);
  __swift_project_value_buffer(v0, qword_27E1FBA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_23C62B4D8();
            break;
          case 5:
            sub_23C62B54C();
            break;
          case 6:
            sub_23C62B600();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            sub_23C62DA74(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
            sub_23C8711A4();
            break;
          case 2:
            sub_23C62B370();
            break;
          case 3:
            sub_23C62B424();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C62B370()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 20);
  type metadata accessor for TranscriptProtoAction(0);
  sub_23C62DA74(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);
  return sub_23C8711A4();
}

uint64_t sub_23C62B424()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_23C62DA74(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_23C8711A4();
}

uint64_t sub_23C62B4D8()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 28);
  sub_23C62DA20();
  return sub_23C871094();
}

uint64_t sub_23C62B54C()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 32);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C62DA74(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_23C8711A4();
}

uint64_t sub_23C62B600()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 36);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C62DA74(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C62B7A4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C62B9A8(v3, a1, a2, a3);
    sub_23C62BBB8(v3, a1, a2, a3);
    sub_23C62BDC8(v3);
    sub_23C62BE58(v3, a1, a2, a3);
    sub_23C62C068(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C62B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C62D9B8(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C62DA74(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C62D958(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C62B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FBB28, &qword_23C87B928);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBB28, &qword_23C87B928);
  }

  sub_23C62D9B8(v8, v13, type metadata accessor for TranscriptProtoAction);
  sub_23C62DA74(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);
  sub_23C871304();
  return sub_23C62D958(v13, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_23C62BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FBB18, &unk_23C87B950);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBB18, &unk_23C87B950);
  }

  sub_23C62D9B8(v8, v13, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C62DA74(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C871304();
  return sub_23C62D958(v13, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_23C62BDC8(uint64_t a1)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_23C62DA20();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C62BE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FBB08, &unk_23C8A11D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBB08, &unk_23C8A11D0);
  }

  sub_23C62D9B8(v8, v13, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C62DA74(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C871304();
  return sub_23C62D958(v13, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_23C62C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C62D9B8(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C62DA74(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C62D958(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C62C2C4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_23C8720F4();
  a1(0);
  sub_23C62DA74(a2, a3);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C62C34C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  *(a2 + a1[7]) = 2;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = a2 + a1[10];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C62C528(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA74(&qword_27E1FBAE8, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C62C5C8()
{
  sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return sub_23C8711F4();
}

uint64_t sub_23C62C634()
{
  sub_23C62DA74(&qword_27E1FBA98, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return sub_23C871204();
}

unint64_t sub_23C62C6B4()
{
  result = qword_27E1FBA90;
  if (!qword_27E1FBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBA90);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams44ResponseGenerationProtoStatementResultDigestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v129 = a1;
  v130 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v2);
  v107 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v106 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  v8 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v106 - v9;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v108 = (&v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = (&v106 - v15);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB10, &qword_23C87B918);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v106 - v17;
  v18 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v121 = *(v18 - 8);
  v122 = v18;
  v19 = *(v121 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = &v106 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v24 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v123 = &v106 - v25;
  v26 = type metadata accessor for TranscriptProtoAction(0);
  v127 = *(v26 - 8);
  v128 = v26;
  v27 = *(v127 + 64);
  MEMORY[0x28223BE20](v26);
  v119 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB28, &qword_23C87B928);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v126 = &v106 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB30, &unk_23C87B930);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v106 - v34;
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v106 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v106 - v48;
  v50 = *(v47 + 56);
  sub_23C5855B0(v129, &v106 - v48, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5855B0(v130, &v49[v50], &qword_27E1FACA8, &unk_23C87B940);
  v51 = *(v37 + 48);
  if (v51(v49, 1, v36) == 1)
  {
    if (v51(&v49[v50], 1, v36) == 1)
    {
      sub_23C585C34(v49, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

LABEL_6:
    v52 = &qword_27E1FACB0;
    v53 = &qword_23C879010;
    v54 = v49;
LABEL_21:
    sub_23C585C34(v54, v52, v53);
    goto LABEL_22;
  }

  sub_23C5855B0(v49, v44, &qword_27E1FACA8, &unk_23C87B940);
  if (v51(&v49[v50], 1, v36) == 1)
  {
    sub_23C62D958(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_23C62D9B8(&v49[v50], v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v55 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v44, v40);
  sub_23C62D958(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C62D958(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v49, &qword_27E1FACA8, &unk_23C87B940);
  if ((v55 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v56 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v57 = *(v56 + 20);
  v58 = *(v32 + 48);
  v59 = v129;
  sub_23C5855B0(v129 + v57, v35, &qword_27E1FBB28, &qword_23C87B928);
  v60 = v130;
  sub_23C5855B0(v130 + v57, &v35[v58], &qword_27E1FBB28, &qword_23C87B928);
  v61 = v128;
  v62 = *(v127 + 48);
  if (v62(v35, 1, v128) == 1)
  {
    if (v62(&v35[v58], 1, v61) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FBB28, &qword_23C87B928);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v63 = v126;
  sub_23C5855B0(v35, v126, &qword_27E1FBB28, &qword_23C87B928);
  if (v62(&v35[v58], 1, v61) == 1)
  {
    sub_23C62D958(v63, type metadata accessor for TranscriptProtoAction);
LABEL_13:
    v52 = &qword_27E1FBB30;
    v53 = &unk_23C87B930;
    v54 = v35;
    goto LABEL_21;
  }

  v64 = v119;
  sub_23C62D9B8(&v35[v58], v119, type metadata accessor for TranscriptProtoAction);
  v65 = _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v63, v64);
  sub_23C62D958(v64, type metadata accessor for TranscriptProtoAction);
  sub_23C62D958(v63, type metadata accessor for TranscriptProtoAction);
  sub_23C585C34(v35, &qword_27E1FBB28, &qword_23C87B928);
  if ((v65 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v66 = v56;
  v67 = *(v56 + 24);
  v68 = *(v120 + 48);
  v69 = v123;
  sub_23C5855B0(v59 + v67, v123, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5855B0(v60 + v67, v69 + v68, &qword_27E1FBB18, &unk_23C87B950);
  v70 = v122;
  v71 = *(v121 + 48);
  if (v71(v69, 1, v122) == 1)
  {
    v72 = v71(v69 + v68, 1, v70);
    v74 = v124;
    v73 = v125;
    if (v72 == 1)
    {
      sub_23C585C34(v69, &qword_27E1FBB18, &unk_23C87B950);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v75 = v118;
  sub_23C5855B0(v69, v118, &qword_27E1FBB18, &unk_23C87B950);
  v76 = v71(v69 + v68, 1, v70);
  v74 = v124;
  v73 = v125;
  if (v76 == 1)
  {
    sub_23C62D958(v75, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_20:
    v52 = &qword_27E1FBB20;
    v53 = &qword_23C87B920;
    v54 = v69;
    goto LABEL_21;
  }

  v79 = v69 + v68;
  v80 = v117;
  sub_23C62D9B8(v79, v117, type metadata accessor for TranscriptProtoStatementOutcome);
  v81 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v75, v80);
  sub_23C62D958(v80, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C62D958(v75, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v69, &qword_27E1FBB18, &unk_23C87B950);
  if ((v81 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v82 = v66[7];
  v83 = *(v59 + v82);
  v84 = *(v60 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v84 == 2 || ((v84 ^ v83) & 1) != 0)
  {
    goto LABEL_22;
  }

  v85 = v73;
  v86 = v66[8];
  v87 = *(v113 + 48);
  v88 = v116;
  sub_23C5855B0(v59 + v86, v116, &qword_27E1FBB08, &unk_23C8A11D0);
  v89 = v60 + v86;
  v90 = v88;
  sub_23C5855B0(v89, v88 + v87, &qword_27E1FBB08, &unk_23C8A11D0);
  v91 = v115;
  v92 = *(v114 + 48);
  if (v92(v88, 1, v115) != 1)
  {
    sub_23C5855B0(v88, v74, &qword_27E1FBB08, &unk_23C8A11D0);
    if (v92(v88 + v87, 1, v91) != 1)
    {
      v93 = v88 + v87;
      v94 = v108;
      sub_23C62D9B8(v93, v108, type metadata accessor for TranscriptProtoResponseManifest);
      v95 = _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v74, v94);
      sub_23C62D958(v94, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C62D958(v74, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C585C34(v88, &qword_27E1FBB08, &unk_23C8A11D0);
      if ((v95 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    sub_23C62D958(v74, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_35:
    v52 = &qword_27E1FBB10;
    v53 = &qword_23C87B918;
LABEL_43:
    v54 = v90;
    goto LABEL_21;
  }

  if (v92(v88 + v87, 1, v91) != 1)
  {
    goto LABEL_35;
  }

  sub_23C585C34(v88, &qword_27E1FBB08, &unk_23C8A11D0);
LABEL_37:
  v96 = v66[9];
  v97 = *(v109 + 48);
  v98 = v112;
  sub_23C5855B0(v59 + v96, v112, &qword_27E1FBAF8, &qword_23C87B960);
  v99 = v60 + v96;
  v90 = v98;
  sub_23C5855B0(v99, v98 + v97, &qword_27E1FBAF8, &qword_23C87B960);
  v100 = v111;
  v101 = *(v110 + 48);
  if (v101(v98, 1, v111) == 1)
  {
    if (v101(v98 + v97, 1, v100) == 1)
    {
      sub_23C585C34(v98, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_45:
      v105 = v66[10];
      sub_23C870F34();
      sub_23C62DA74(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v77 = sub_23C871754();
      return v77 & 1;
    }

    goto LABEL_42;
  }

  sub_23C5855B0(v98, v85, &qword_27E1FBAF8, &qword_23C87B960);
  if (v101(v98 + v97, 1, v100) == 1)
  {
    sub_23C62D958(v85, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
LABEL_42:
    v52 = &qword_27E1FBB00;
    v53 = &qword_23C87B910;
    goto LABEL_43;
  }

  v102 = v98 + v97;
  v103 = v107;
  sub_23C62D9B8(v102, v107, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  v104 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v85, v103);
  sub_23C62D958(v103, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C62D958(v85, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C585C34(v98, &qword_27E1FBAF8, &qword_23C87B960);
  if (v104)
  {
    goto LABEL_45;
  }

LABEL_22:
  v77 = 0;
  return v77 & 1;
}

uint64_t _s26AIMLInstrumentationStreams023ResponseGenerationProtocD5InputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23C5DF260(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  sub_23C870F34();
  sub_23C62DA74(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C62D66C()
{
  result = qword_27E1FBAB0;
  if (!qword_27E1FBAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBAB0);
  }

  return result;
}

unint64_t sub_23C62D6C4()
{
  result = qword_27E1FBAB8;
  if (!qword_27E1FBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBAB8);
  }

  return result;
}

uint64_t sub_23C62D958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C62D9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C62DA20()
{
  result = qword_27E1FBB48;
  if (!qword_27E1FBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB48);
  }

  return result;
}

uint64_t sub_23C62DA74(unint64_t *a1, void (*a2)(uint64_t))
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

AIMLInstrumentationStreams::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  v8 = v3[8];
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v3[9];
  v11 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v3[10];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}