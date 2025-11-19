uint64_t sub_19213D134(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A58, &qword_192236268);
  v45 = a2;
  result = sub_1922286A0();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v41 = v3;
    v42 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v43 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v45)
      {
        sub_192140B10(v28, v9, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
        v46 = *(*(v13 + 56) + 8 * v26);
      }

      else
      {
        sub_1920B7F00(v28, v9, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
        v46 = *(*(v13 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_192228AD0();
      sub_192225150();
      sub_192076BC8(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
      sub_192227890();
      v30 = *&v9[*(v44 + 20)];
      v31 = WidgetEnvironment.Storage.hash.getter();
      MEMORY[0x193B0BA90](v31);
      result = sub_192228B30();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v13 = v42;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v13 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_192140B10(v9, *(v14 + 48) + v27 * v22, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      *(*(v14 + 56) + 8 * v22) = v46;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v13 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_19213D518(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_192225150();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
  v46 = a2;
  result = sub_1922286A0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_192228AD0();
      sub_1922279B0();
      result = sub_192228B30();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_19213D898(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v33 = a2;
  result = sub_1922286A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_192228AD0();
      MEMORY[0x193B0BA90](v21);
      result = sub_192228B30();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *sub_19213DB28(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19213EA88();
      v11 = v19;
      goto LABEL_8;
    }

    sub_19213B7BC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1920440AC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_192228A40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_19203BEDC(a1, v23);
  }

  else
  {
    sub_19213E73C(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_19213DC78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1920B71E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_19213EDD4();
    result = v17;
    goto LABEL_8;
  }

  sub_19213C3E4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1920B71E4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7] + 88 * result;
      v22 = *(a1 + 48);
      *(v21 + 32) = *(a1 + 32);
      *(v21 + 48) = v22;
      *(v21 + 64) = *(a1 + 64);
      *(v21 + 79) = *(a1 + 79);
      v23 = *(a1 + 16);
      *v21 = *a1;
      *(v21 + 16) = v23;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v24 = v20[7] + 88 * result;
    v25 = *(a1 + 16);
    *v24 = *a1;
    *(v24 + 16) = v25;
    *(v24 + 79) = *(a1 + 79);
    v26 = *(a1 + 64);
    *(v24 + 48) = *(a1 + 48);
    *(v24 + 64) = v26;
    *(v24 + 32) = *(a1 + 32);
    v27 = v20[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v20[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_192228A40();
  __break(1u);
  return result;
}

uint64_t sub_19213DDE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19213C690(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1920440AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_19213F3C0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_19213DF60(char a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1920B733C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_19213F530();
    result = v21;
    goto LABEL_8;
  }

  sub_19213C938(v18, a3 & 1);
  v22 = *v6;
  result = sub_1920B733C(a2);
  if ((v19 & 1) == (v23 & 1))
  {
LABEL_8:
    v24 = *v6;
    if (v19)
    {
      v25 = v24[7] + 24 * result;
      *v25 = a1;
      *(v25 + 8) = a4;
      *(v25 + 16) = a5;
      return result;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a2;
    v26 = v24[7] + 24 * result;
    *v26 = a1;
    *(v26 + 8) = a4;
    *(v26 + 16) = a5;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for CHSWidgetFamily(0);
  result = sub_192228A40();
  __break(1u);
  return result;
}

uint64_t sub_19213E0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_19213CBD8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1920440AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_192228A40();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_19213F694();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_19213E224(unsigned __int8 a1, void *a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  result = sub_1920B73A8(a1, a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_19213CE7C(v17, a3 & 1);
      v21 = *v6;
      result = sub_1920B73A8(a1, a2);
      if ((v18 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      sub_19213F800();
      result = v20;
    }
  }

  v23 = *v6;
  if (v18)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a4;
    v24[1] = a5;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = v23[6] + 16 * result;
  *v25 = a1;
  *(v25 + 8) = a2;
  v26 = (v23[7] + 16 * result);
  *v26 = a4;
  v26[1] = a5;
  v27 = v23[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;

  return a2;
}

uint64_t sub_19213E3A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1920B7428(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_19213F970(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey, &qword_1EADF0A58, &qword_192236268, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      goto LABEL_7;
    }

    sub_19213D134(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1920B7428(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1920B7F00(a2, v11, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      return sub_19213E7A8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_192228A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_19213E56C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1920440AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_19213FE34();
      goto LABEL_7;
    }

    sub_19213D518(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1920440AC(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_192228A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_192225150();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_19213E85C(v12, a2, a3, a1, v18);
}

unint64_t sub_19213E6EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

_OWORD *sub_19213E73C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19203BEDC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_19213E7A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  result = sub_192140B10(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_19213E85C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_192225150();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_19213E90C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A68, &qword_192236278);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = v19;
        v23[1] = v20;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213EA88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_19202A98C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_19203BEDC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_19213EC2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = sub_1920367C8(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213EDD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F8, &qword_192236210);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 88 * v14;
      v18 = *(v17 + 48);
      *v23 = *(v17 + 64);
      *&v23[15] = *(v17 + 79);
      v19 = *(v17 + 16);
      v22 = *(v17 + 32);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 88 * v14;
      *v21 = v20;
      *(v21 + 16) = v19;
      *(v21 + 79) = *&v23[15];
      *(v21 + 48) = v18;
      *(v21 + 64) = *v23;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_19213EF6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09E8, &qword_192236200);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_19202A98C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_19203BEDC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213F0EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213F250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A78, &qword_192236288);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213F3C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A60, &qword_192236270);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213F530()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_19213F694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A50, &qword_192236260);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_19213F800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A40, &qword_192236250);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + v17);
        v22 = *(v4 + 48) + v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(*(v4 + 56) + v17) = v21;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_19213F970(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v37 = a4;
  v7 = v4;
  v8 = a1(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_192228690();
  v13 = v12;
  if (*(v11 + 16))
  {
    v33 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v34 = v11 + 64;
    v17 = 0;
    v18 = *(v11 + 16);
    v38 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = *(v11 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = v35;
        v29 = *(v36 + 72) * v27;
        v30 = v37;
        sub_1920B7F00(*(v11 + 48) + v29, v35, v37);
        v31 = *(*(v11 + 56) + 8 * v27);
        v32 = v38;
        sub_192140B10(v28, *(v38 + 48) + v29, v30);
        *(*(v32 + 56) + 8 * v27) = v31;
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v33;
        v13 = v38;
        goto LABEL_21;
      }

      v26 = *(v34 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_19213FBB0()
{
  v1 = v0;
  v27 = sub_1922285D0();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A28, &qword_192236240);
  v4 = *v0;
  v5 = sub_192228690();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_19202A98C(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_19203BEDC(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_19213FE34()
{
  v1 = v0;
  v36 = sub_192225150();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
  v4 = *v0;
  v5 = sub_192228690();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1921400B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A18, &qword_192236230);
  v2 = *v0;
  v3 = sub_192228690();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_192140210(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_192228B30();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_192228AD0();

    sub_1922279B0();
    v15 = sub_192228B30();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x193B0BA90](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19214036C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A80, &qword_192236290);
    v3 = sub_1922286C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_19202CFFC(v4, &v13, &qword_1EADF0A88, qword_192236298);
      v5 = v13;
      v6 = v14;
      result = sub_1920440AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19203BEDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1921404A0()
{
  result = qword_1EADF09E0;
  if (!qword_1EADF09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF09E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKCErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKCErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_192140634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A10, &qword_192236228);
    v3 = sub_1922286C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;

      sub_1920367C8(v5, v7);
      result = sub_1920B70BC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A48, &qword_192236258);
    v3 = sub_1922286C0();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1920B733C(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A08, &qword_192236220);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A00, &qword_192236218);
    v8 = sub_1922286C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_19202CFFC(v10, v6, &qword_1EADF0A08, &qword_192236220);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1920440AC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_192225150();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_192140A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF09F0, &qword_192236208);
    v3 = sub_1922286C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1920B7548(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_192140B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_192140BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920D7114;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_192140D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920D8A84;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_192140EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_192140F78(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_192140F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a1;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  v16 = sub_192227CF0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v11, v5, a3);
  sub_192227CC0();

  v17 = sub_192227CB0();
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 2) = v17;
  *(v20 + 3) = v21;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  *(v20 + 6) = v24;
  (*(v9 + 32))(&v20[v18], v11, a3);
  v22 = &v20[v19];
  *v22 = v25;
  *(v22 + 1) = a2;
  sub_19211CA04(0, 0, v15, &unk_1922363B8, v20);
}

uint64_t sub_1921411A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = sub_192227CC0();
  v7[5] = sub_192227CB0();
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_192141274;

  return sub_1922216C0(a7, v12);
}

uint64_t sub_192141274(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 56) = a1;

  v6 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1921413B8, v6, v5);
}

uint64_t sub_1921413B8()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v4(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_192141438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_192140F78(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1921414B4(uint64_t a1)
{
  v4 = v1[4];
  v15 = v1[5];
  v5 = v1[6];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1920A59A8;

  return sub_1921411A8(a1, v7, v8, v1 + v6, v10, v11, v4);
}

uint64_t EnvironmentValues.idealizedDateComponents.getter()
{
  sub_1920C8054();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.idealizedDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19204154C(a1, &v6 - v4);
  sub_1920C8054();
  sub_1922261F0();
  return sub_192033970(a1, &qword_1EADEECD0, &qword_1922363D0);
}

uint64_t sub_19214170C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  __swift_allocate_value_buffer(v0, qword_1EADEE0D0);
  v1 = __swift_project_value_buffer(v0, qword_1EADEE0D0);
  v2 = sub_192224EA0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static IdealizedDateComponentsKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  return sub_19204154C(v3, a1);
}

uint64_t static IdealizedDateComponentsKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  sub_192141904(a1, v3);
  swift_endAccess();
  return sub_192033970(a1, &qword_1EADEECD0, &qword_1922363D0);
}

uint64_t sub_192141904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static IdealizedDateComponentsKey.defaultValue.modify())()
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  __swift_project_value_buffer(v0, qword_1EADEE0D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_192141A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  return sub_19204154C(v3, a1);
}

uint64_t sub_192141AAC(uint64_t a1)
{
  if (qword_1EADEE0C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEE0D0);
  swift_beginAccess();
  sub_192141904(a1, v3);
  return swift_endAccess();
}

uint64_t sub_192141B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920494E8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.idealizedDateComponents.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1920C8054();
  sub_1922261E0();
  return sub_192141CC8;
}

void sub_192141CC8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_19204154C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_19204154C(v3[2], v3[1]);
    sub_1922261F0();
    sub_192033970(v7, &qword_1EADEECD0, &qword_1922363D0);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_1922261F0();
  }

  sub_192033970(v4, &qword_1EADEECD0, &qword_1922363D0);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t sub_192141DB8(uint64_t a1)
{
  v2 = sub_192141FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192141DF4(uint64_t a1)
{
  v2 = sub_192141FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IdealizedDateComponentsKey.DateComponentsValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A90, &qword_1922363D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  sub_192228B90();
  sub_192224EA0();
  sub_1921435EC(&qword_1EADF0AA0, MEMORY[0x1E6968278]);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_192141FA8()
{
  result = qword_1EADF0A98;
  if (!qword_1EADF0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0A98);
  }

  return result;
}

uint64_t IdealizedDateComponentsKey.DateComponentsValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0AA8, &qword_1922363E0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_192224EA0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  v17 = v22;
  sub_192228B70();
  if (!v17)
  {
    v18 = v20;
    sub_1921435EC(&qword_1EADF0AB0, MEMORY[0x1E6968278]);
    sub_192228750();
    (*(v21 + 8))(v10, v7);
    sub_192142334(v6, v14);
    sub_1921423A4(v14, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1921422D8(v14);
}

uint64_t type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue()
{
  result = qword_1EADF0AD8;
  if (!qword_1EADF0AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1921422D8(uint64_t a1)
{
  v2 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192142334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921423A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdealizedDateComponentsKey.DateComponentsValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192142420(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A90, &qword_1922363D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192141FA8();
  sub_192228B90();
  sub_192224EA0();
  sub_1921435EC(&qword_1EADF0AA0, MEMORY[0x1E6968278]);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_192142598()
{
  result = swift_getKeyPath();
  qword_1ED74C7D0 = result;
  return result;
}

uint64_t sub_1921425C0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B00, &qword_192236658);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C7D8 = v0;
  unk_1ED74C7E0 = 0xD000000000000017;
  qword_1ED74C7E8 = 0x80000001922497B0;
  return result;
}

uint64_t sub_192142640()
{
  if (qword_1ED74A3B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19214269C()
{
  if (qword_1ED74A4B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C7D8;

  return v0;
}

BOOL _s9WidgetKit26IdealizedDateComponentsKeyV0dE5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192224EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF500, &unk_19222D8E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_19204154C(a1, &v23 - v16);
  sub_19204154C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_19204154C(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1921435EC(&qword_1EADECF18, MEMORY[0x1E6968278]);
      v21 = sub_192227910();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_192033970(v17, &qword_1EADEECD0, &qword_1922363D0);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_192033970(v17, &qword_1EADEF500, &unk_19222D8E0);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_192033970(v17, &qword_1EADEECD0, &qword_1922363D0);
  return 1;
}

BOOL _s9WidgetKit26IdealizedDateComponentsKeyV0dE5ValueV1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v100 = sub_1922252B0();
  v97 = *(v100 - 8);
  v4 = *(v97 + 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v87 - v14;
  v16 = sub_192224EA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - v22;
  sub_19204154C(a1, v15);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) != 1)
  {
    v99 = v21;
    v26 = *(v17 + 32);
    v26(v23, v15, v16);
    sub_19204154C(a2, v13);
    if (v24(v13, 1, v16) == 1)
    {
      (*(v17 + 8))(v23, v16);
      sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
      return 0;
    }

    v95 = v17;
    v96 = v16;
    v26(v99, v13, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B08, qword_192236690);
    v27 = v97;
    v28 = *(v97 + 9);
    v29 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1922363C0;
    v94 = v30;
    v31 = v30 + v29;
    v32 = *(v27 + 13);
    v33 = v100;
    v32(v30 + v29, *MEMORY[0x1E6969A68], v100);
    v32(v31 + v28, *MEMORY[0x1E6969A78], v33);
    v32(v31 + 2 * v28, *MEMORY[0x1E6969A48], v33);
    v90 = 2 * v28;
    v34 = *MEMORY[0x1E6969A58];
    v89 = 3 * v28;
    v32(v31 + 3 * v28, v34, v33);
    v32(v31 + 4 * v28, *MEMORY[0x1E6969A88], v33);
    v88 = 4 * v28;
    v35 = *MEMORY[0x1E6969A98];
    v87 = 5 * v28;
    v32(v31 + 5 * v28, v35, v33);
    v36 = *(v27 + 2);
    v37 = v98;
    v92 = (v27 + 16);
    v93 = v31;
    v91 = v36;
    v36(v98, v31, v33);
    v38 = sub_192224E70();
    v40 = v39;
    v41 = sub_192224E70();
    v43 = v42;
    v44 = *(v27 + 1);
    if (v40)
    {
      v45 = 0;
    }

    else
    {
      v45 = v38;
    }

    v44(v37, v33);
    v46 = v23;
    if (v43)
    {
      if (v45)
      {
        v41 = 0;
        v45 = v38;
LABEL_18:
        v56 = v95;
        v55 = v96;
LABEL_47:

        v84 = *(v56 + 8);
        v84(v99, v55);
        v84(v46, v55);
        return v45 < v41;
      }
    }

    else if (v45 != v41)
    {
      goto LABEL_18;
    }

    v47 = v93 + v28;
    v48 = v98;
    v49 = v100;
    v91(v98, v47, v100);
    v50 = sub_192224E70();
    v51 = v50;
    if (v52)
    {
      v45 = 0;
    }

    else
    {
      v45 = v50;
    }

    v41 = sub_192224E70();
    v54 = v53;
    v44(v48, v49);
    if (v54)
    {
      v56 = v95;
      v55 = v96;
      if (v45)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v56 = v95;
      v55 = v96;
      if (v45 != v41)
      {
        goto LABEL_47;
      }
    }

    v97 = v44;
    v57 = v98;
    v58 = v100;
    v91(v98, v93 + v90, v100);
    v59 = sub_192224E70();
    v51 = v59;
    if (v60)
    {
      v45 = 0;
    }

    else
    {
      v45 = v59;
    }

    v41 = sub_192224E70();
    v62 = v61;
    v97(v57, v58);
    if (v62)
    {
      if (v45)
      {
        goto LABEL_46;
      }
    }

    else if (v45 != v41)
    {
      goto LABEL_47;
    }

    v63 = v98;
    v64 = v100;
    v91(v98, v93 + v89, v100);
    v65 = sub_192224E70();
    v51 = v65;
    if (v66)
    {
      v45 = 0;
    }

    else
    {
      v45 = v65;
    }

    v41 = sub_192224E70();
    v68 = v67;
    v97(v63, v64);
    if (v68)
    {
      if (v45)
      {
        goto LABEL_46;
      }
    }

    else if (v45 != v41)
    {
      goto LABEL_47;
    }

    v69 = v98;
    v70 = v100;
    v91(v98, v93 + v88, v100);
    v71 = sub_192224E70();
    v51 = v71;
    if (v72)
    {
      v45 = 0;
    }

    else
    {
      v45 = v71;
    }

    v41 = sub_192224E70();
    v74 = v73;
    v75 = v69;
    v76 = v97;
    v97(v75, v70);
    if ((v74 & 1) == 0)
    {
      if (v45 != v41)
      {
        goto LABEL_47;
      }

LABEL_41:
      v77 = v76;
      v78 = v98;
      v79 = v100;
      v91(v98, v93 + v87, v100);
      v80 = sub_192224E70();
      v51 = v80;
      if (v81)
      {
        v45 = 0;
      }

      else
      {
        v45 = v80;
      }

      v41 = sub_192224E70();
      v83 = v82;
      v77(v78, v79);
      if (v83)
      {
        v55 = v96;
        if (v45)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v55 = v96;
        if (v45 != v41)
        {
          goto LABEL_47;
        }
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v86 = *(v56 + 8);
      v86(v99, v55);
      v86(v46, v55);
      return 0;
    }

    if (!v45)
    {
      goto LABEL_41;
    }

LABEL_46:
    v41 = 0;
    v45 = v51;
    goto LABEL_47;
  }

  sub_192033970(v15, &qword_1EADEECD0, &qword_1922363D0);
  sub_19204154C(a2, v10);
  v25 = v24(v10, 1, v16) != 1;
  sub_192033970(v10, &qword_1EADEECD0, &qword_1922363D0);
  return v25;
}

void sub_192143410()
{
  sub_19214347C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19214347C()
{
  if (!qword_1ED749D08)
  {
    sub_192224EA0();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED749D08);
    }
  }
}

unint64_t sub_1921434E8()
{
  result = qword_1EADF0AE8;
  if (!qword_1EADF0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AE8);
  }

  return result;
}

unint64_t sub_192143540()
{
  result = qword_1EADF0AF0;
  if (!qword_1EADF0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AF0);
  }

  return result;
}

unint64_t sub_192143598()
{
  result = qword_1EADF0AF8;
  if (!qword_1EADF0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0AF8);
  }

  return result;
}

uint64_t sub_1921435EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*EnvironmentValues.userWantsWidgetDataWhenPasscodeLocked.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_192041074();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19214375C;
}

uint64_t (*EnvironmentValues.userWantsLiveActivityDataWhenPasscodeLocked.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920577E0();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1921437D0;
}

uint64_t sub_1921437DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

WidgetKit::JindoDisplayMode_optional __swiftcall JindoDisplayMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_192143864@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_19214387C()
{
  result = qword_1EADF0B30;
  if (!qword_1EADF0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B30);
  }

  return result;
}

unint64_t sub_1921438D4()
{
  result = qword_1EADF0B38;
  if (!qword_1EADF0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B40, &qword_192236A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B38);
  }

  return result;
}

unint64_t sub_192143A58()
{
  result = qword_1EADF0B48;
  if (!qword_1EADF0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B48);
  }

  return result;
}

uint64_t AccessoryWidgetBackground.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

double AccessoryWidgetBackground.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    LOBYTE(v21) = *(v1 + 16);
  }

  else
  {
    v9 = *(v1 + 16);

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v8, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v8) = v21;
  }

  v11 = qword_192236D20[v8];
  if (CHSWidgetFamilyIsAccessory())
  {
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    v14 = swift_getKeyPath();
    *v20 = KeyPath;
    *&v20[16] = v13;
    *&v20[32] = v14;
    *&v20[40] = 0;
  }

  else
  {
    memset(v20, 0, 41);
    v20[41] = 1;
  }

  sub_192040C10();
  sub_1922266E0();
  result = *&v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  *a1 = v21;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 41) = v19;
  return result;
}

uint64_t sub_192143D0C@<X0>(_BYTE *a1@<X8>)
{
  sub_192143E60();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192143D5C(char *a1)
{
  v2 = *a1;
  sub_192143E60();
  return sub_1922261F0();
}

unint64_t sub_192143DD4()
{
  result = qword_1ED7491A0;
  if (!qword_1ED7491A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B50, &unk_192236D10);
    sub_192040C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7491A0);
  }

  return result;
}

unint64_t sub_192143E60()
{
  result = qword_1EADECD90;
  if (!qword_1EADECD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD90);
  }

  return result;
}

uint64_t sub_192143ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192143FF0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double _s7SwiftUI17EnvironmentValuesV9WidgetKitE20widgetContentMarginsAA10EdgeInsetsVvg_0()
{
  sub_19207D65C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_192143F70()
{
  sub_19207D56C();
  sub_1922261E0();
  return v1;
}

uint64_t sub_192143FAC(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 100)) = 1;
  return result;
}

unint64_t sub_192143FF0()
{
  result = qword_1EADF0B58;
  if (!qword_1EADF0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0B58);
  }

  return result;
}

uint64_t sub_192144054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19214409C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_192144108()
{
  result = qword_1ED749FC0;
  if (!qword_1ED749FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B90, &qword_192237050);
    sub_1921441C0();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749FC0);
  }

  return result;
}

unint64_t sub_1921441C0()
{
  result = qword_1ED74A118;
  if (!qword_1ED74A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B68, &unk_192236FD0);
    sub_192144278();
    sub_192031E74(&qword_1ED74A0C0, &qword_1EADF0B98, &qword_192237058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A118);
  }

  return result;
}

unint64_t sub_192144278()
{
  result = qword_1ED74A130;
  if (!qword_1ED74A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0B60, &qword_192236FC8);
    sub_192031E74(&qword_1ED74A0D8, &qword_1EADF0B88, &qword_192236FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A130);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_192144350(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192144370(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1921443BC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_192226D20();
  sub_192226D50();
  v5 = sub_192226D50();
  v6 = v5 != v4;
  if (v5 == v4)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = sub_192226D40();
  sub_192226D50();
  v9 = sub_192226D50();
  v10 = v9 != v8;
  if (v9 == v8)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = sub_192226D30();
  sub_192226D50();
  v13 = sub_192226D50();
  v14 = v13 != v12;
  if (v13 == v12)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = sub_192226D60();
  sub_192226D50();
  result = sub_192226D50();
  if (result == v16)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0.0;
  }

  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  *(a1 + 48) = v18;
  *(a1 + 56) = result != v16;
  return result;
}

uint64_t ActivityPreviewSource.makeContent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a1;
  v5[18] = a3;
  v7 = sub_192228240();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v10 = *(a3 - 8);
  v5[24] = v10;
  v11 = *(v10 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  sub_192227CC0();
  v5[27] = sub_192227CB0();
  v13 = sub_192227C70();
  v5[28] = v13;
  v5[29] = v12;

  return MEMORY[0x1EEE6DFA0](sub_192144640, v13, v12);
}

uint64_t sub_192144640()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_192033A64(v2 + 24, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0BA0, &qword_1922370A8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = *(v0 + 160);
    v8 = *(v0 + 144);
    (*(v6 + 56))(v5, 0, 1, v8);
    v9 = *(v6 + 32);
    *(v0 + 240) = v9;
    *(v0 + 248) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v4, v5, v8);
    v10 = *(v7 + 72);
    v31 = (*(v7 + 64) + **(v7 + 64));
    v11 = *(*(v7 + 64) + 4);
    v12 = swift_task_alloc();
    *(v0 + 256) = v12;
    *v12 = v0;
    v12[1] = sub_192144970;

    return v31();
  }

  else
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);

    (*(v16 + 56))(v15, 1, 1, v20);
    (*(v18 + 8))(v15, v17);
    *(v0 + 80) = swift_getMetatypeMetadata();
    *(v0 + 56) = v20;
    v21 = *(v19 + 48);
    v22 = __swift_project_boxed_opaque_existential_1((v2 + 24), v21);
    *(v0 + 112) = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v22, v21);
    sub_192121A58();
    swift_allocError();
    v25 = v24;
    *v24 = 0xD000000000000017;
    *(v24 + 8) = 0x800000019224BBE0;
    *(v24 + 16) = 0x7475626972747461;
    *(v24 + 24) = 0xEA00000000007365;
    sub_19203BEDC((v0 + 56), (v24 + 32));
    v26 = *(v0 + 104);
    *(v25 + 64) = *(v0 + 88);
    *(v25 + 80) = v26;
    swift_willThrow();
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    v29 = *(v0 + 184);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_192144970(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = a1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 224);

  return MEMORY[0x1EEE6DFA0](sub_192144A98, v5, v4);
}

uint64_t sub_192144A98()
{
  v1 = v0[33];
  v2 = v0[27];
  v4 = v0[18];
  v3 = v0[19];

  v0[15] = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0BA8, &unk_1922370B0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  v9 = sub_192145108();
  v10 = sub_19204301C(sub_1921450E8, v5, v6, AssociatedTypeWitness, v8, v9, MEMORY[0x1E69E7288], (v0 + 16));
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];
  v15 = v0[25];
  v14 = v0[26];
  v21 = v0[23];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];

  v12(v15, v14, v17);
  (*(*(v17 - 8) + 32))(v18, v15, v17);
  *(v18 + *(type metadata accessor for ActivityPreviewSource.Content() + 36)) = v10;

  v19 = v0[1];

  return v19();
}

uint64_t ActivityPreviewSource.Content.states.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*ActivityPreviewSource.Content.states.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_192144DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ActivityPreviewSource.Content();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t ActivityPreviewSource.makeWidget.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_192144E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_192228240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  sub_19202A98C(a1, &v21);
  v12 = swift_dynamicCast();
  v13 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v12)
  {
    v14 = *(AssociatedTypeWitness - 8);
    v13(v11, 0, 1, AssociatedTypeWitness);
    return (*(v14 + 32))(a3, v11, AssociatedTypeWitness);
  }

  else
  {
    v13(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v21 = AssociatedTypeWitness;
    sub_19202A98C(a1, v20);
    sub_192121A58();
    v16 = swift_allocError();
    v18 = v17;
    *v17 = 0xD000000000000017;
    *(v17 + 8) = 0x800000019224BBE0;
    strcpy((v17 + 16), "content state");
    *(v17 + 30) = -4864;
    sub_19203BEDC(&v21, (v17 + 32));
    v19 = v20[1];
    *(v18 + 64) = v20[0];
    *(v18 + 80) = v19;
    result = swift_willThrow();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_1921450E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_192144E7C(a1, a2, a3);
}

unint64_t sub_192145108()
{
  result = qword_1EADF0BB0[0];
  if (!qword_1EADF0BB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0BA8, &unk_1922370B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF0BB0);
  }

  return result;
}

uint64_t ActivityPreviewSource.contentDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966798];
  v3 = sub_192225720();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t Widget.buildActivityHost()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ResolvedWidgetHost();
  result = sub_1921AFBB8(v1);
  a1[3] = v3;
  a1[4] = &off_1F06AFB88;
  *a1 = result;
  return result;
}

char *sub_192145294()
{
  v0 = type metadata accessor for WidgetDescriptor(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1921AA3D8();
  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 32);
  v8 = *(v1 + 80);
  v22[1] = v5;
  v9 = v5 + ((v8 + 32) & ~v8);
  v10 = *(v1 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_19207F348(v9, v4);
    v13 = *&v4[v7];

    result = sub_192145924(v4);
    v14 = *(v13 + 16);
    v15 = *(v11 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v16 <= *(v11 + 3) >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1920C3388(result, v17, 1, v11);
      v11 = result;
      if (*(v13 + 16))
      {
LABEL_14:
        v18 = *(v11 + 2);
        if ((*(v11 + 3) >> 1) - v18 < v14)
        {
          goto LABEL_23;
        }

        memcpy(&v11[v18 + 32], (v13 + 32), v14);

        if (v14)
        {
          v19 = *(v11 + 2);
          v20 = __OFADD__(v19, v14);
          v21 = v19 + v14;
          if (v20)
          {
            goto LABEL_24;
          }

          *(v11 + 2) = v21;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_22;
    }

LABEL_4:
    v9 += v10;
    if (!--v6)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1921454A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1921454F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192145554(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v3 = sub_192227C40();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_192145608(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_192145744(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_192145924(uint64_t a1)
{
  v2 = type metadata accessor for WidgetDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlPicker.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v61 = a8;
  v62 = a2;
  v63 = a7;
  v64 = a4;
  v65 = a3;
  v66 = a5;
  v59 = a9;
  v60 = a1;
  v55 = a22;
  v56 = a23;
  v53 = a19;
  v54 = a20;
  v51 = a16;
  v52 = a18;
  v49 = a14;
  v50 = a15;
  v47 = a12;
  v48 = a13;
  v57 = a10;
  v58 = a11;
  v25 = *(a21 - 8);
  v26 = *(v25 + 64);
  v46 = a24;
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PickerStateProviderBox();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v43 - v31;
  v33 = sub_192224FB0();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = *a6;
  v36 = *(swift_getAssociatedConformanceWitness() + 8);
  v45 = sub_192224BB0();
  v44 = v37;
  if (!v66)
  {
    sub_192224BC0();
    v64 = sub_192227980();
    v66 = v38;
  }

  v67[0] = v35;
  v39 = v63;
  (*(v25 + 16))(v28, v63, a21);
  (*(v25 + 32))(v32, v28, a21);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_192224BA0();
  sub_192145D94(v60, v62, v65, v45, v44, v64, v66, v67, v59, v32, 3, v41, v61, v57, v58, v47, v48, v49, v50, v51, a17, v52, v53, v54, v29, v36, v55, v56, v46, WitnessTable);
  return (*(v25 + 8))(v39, a21);
}

uint64_t sub_192145D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v100 = a6;
  v104 = a5;
  v103 = a4;
  v122 = a30;
  v121 = a29;
  v113 = a28;
  v119 = a27;
  v120 = a24;
  v127 = a23;
  v126 = a22;
  v109 = a20;
  v108 = a19;
  v125 = a18;
  v106 = a17;
  v124 = a16;
  v105 = a15;
  v123 = a14;
  v114 = a25;
  v116 = *(a25 - 8);
  v102 = a13;
  v107 = a12;
  v36 = *(v116 + 64);
  v110 = a11;
  v115 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v112 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_192224FB0();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = *a8;
  *(a9 + 192) = 0;
  v111 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v117 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  v41 = a9;
  *(a9 + 48) = a3;

  if (a7)
  {
    v42 = v100;
  }

  else
  {
    sub_192224BC0();
    v42 = sub_192227980();
    a7 = v43;
  }

  *(a9 + 152) = v42;
  *(a9 + 160) = a7;
  *(a9 + 168) = v40;
  v44 = v104;
  *(a9 + 176) = v103;
  *(a9 + 184) = v44;
  v104 = sub_192224BB0();
  v103 = v45;
  v46 = *(v116 + 16);
  v118 = a21;
  v47 = v114;
  v46(v112, v115);
  v48 = swift_allocObject();
  v49 = v126;
  v48[2] = a21;
  v48[3] = v49;
  v50 = v120;
  v48[4] = v127;
  v48[5] = v50;
  v51 = v50;
  v48[6] = v47;
  v48[7] = a26;
  v52 = v47;
  v53 = v119;
  v54 = v113;
  v48[8] = v119;
  v48[9] = v54;
  v55 = v121;
  v48[10] = v121;
  v56 = v55;
  v48[11] = v122;
  v57 = swift_allocObject();
  v58 = v118;
  v59 = v126;
  v57[2] = v118;
  v57[3] = v59;
  v57[4] = v127;
  v57[5] = v51;
  v57[6] = v52;
  v57[7] = a26;
  v101 = a26;
  v57[8] = v53;
  v57[9] = v54;
  v60 = v122;
  v57[10] = v56;
  v57[11] = v60;
  v61 = v123;
  v57[12] = v102;
  v57[13] = v61;
  v62 = swift_allocObject();
  v102 = v41;
  v63 = v126;
  v62[2] = v58;
  v62[3] = v63;
  v64 = v120;
  v62[4] = v127;
  v62[5] = v64;
  v62[6] = v52;
  v62[7] = a26;
  v65 = v119;
  v66 = v113;
  v62[8] = v119;
  v62[9] = v66;
  v67 = v121;
  v62[10] = v121;
  v62[11] = v60;
  v68 = v124;
  v62[12] = v105;
  v62[13] = v68;
  v69 = swift_allocObject();
  v69[2] = v118;
  v69[3] = v63;
  v70 = v127;
  v69[4] = v127;
  v69[5] = v64;
  v71 = v101;
  v69[6] = v52;
  v69[7] = v71;
  v69[8] = v65;
  v69[9] = v66;
  v69[10] = v67;
  v72 = v122;
  v73 = v106;
  v69[11] = v122;
  v69[12] = v73;
  v69[13] = v125;
  v74 = swift_allocObject();
  v75 = v126;
  v74[2] = v118;
  v74[3] = v75;
  v76 = v120;
  v74[4] = v70;
  v74[5] = v76;
  v77 = v114;
  v74[6] = v114;
  v74[7] = v71;
  v74[8] = v119;
  v74[9] = v66;
  v74[10] = v121;
  v74[11] = v72;
  v78 = v72;
  v79 = v108;
  v80 = v109;
  v74[12] = v108;
  v74[13] = v80;
  v81 = v117;

  sub_19202D088(v79);
  v98 = v78;
  v82 = v77;
  v97 = v62;
  v96 = v57;
  v83 = v111;
  v84 = v81;
  sub_19207FAEC(v111, v81, v104, v103, v112, sub_19214C6B4, v48, sub_19214C6EC, v128, v96, sub_19214C704, v97, sub_19214C768, v69, sub_19214C7A4, v74, v77, v98);
  v85 = v110;
  v86 = v102;
  v87 = v107;
  *v102 = v110;
  v86[1] = v87;
  v86[16] = &type metadata for ControlPickerTemplateProvider;
  v86[17] = &off_1F06AFD68;
  v88 = swift_allocObject();
  v86[13] = v88;
  v89 = v87;
  sub_19203831C(v79);

  v90 = v128[9];
  v88[9] = v128[8];
  v88[10] = v90;
  v88[11] = v128[10];
  v91 = v128[5];
  v88[5] = v128[4];
  v88[6] = v91;
  v92 = v128[7];
  v88[7] = v128[6];
  v88[8] = v92;
  v93 = v128[1];
  v88[1] = v128[0];
  v88[2] = v93;
  v94 = v128[3];
  v88[3] = v128[2];
  v88[4] = v94;
  result = (*(v116 + 8))(v115, v82);
  *(v86 + 144) = 0;
  v86[7] = v83;
  v86[8] = v84;
  v86[9] = 0;
  v86[10] = 0;
  v86[11] = v85;
  v86[12] = v89;
  return result;
}

uint64_t ControlPicker.init<A, B, C>(kind:intent:displayName:preferredSize:stateProvider:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v54 = a8;
  v55 = a2;
  v56 = a7;
  v57 = a4;
  v58 = a3;
  v59 = a5;
  v52 = a9;
  v53 = a1;
  v48 = a17;
  v49 = a19;
  v46 = a14;
  v47 = a16;
  v44 = a12;
  v45 = a13;
  v50 = a10;
  v51 = a11;
  v21 = *(a18 - 8);
  v22 = *(v21 + 64);
  v43 = a20;
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PickerStateProviderBox();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v29 = sub_192224FB0();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = *a6;
  v32 = *(swift_getAssociatedConformanceWitness() + 8);
  v33 = sub_192224BB0();
  v41 = v34;
  v42 = v33;
  if (!v59)
  {
    sub_192224BC0();
    v57 = sub_192227980();
    v59 = v35;
  }

  v60[0] = v31;
  v36 = v56;
  (*(v21 + 16))(v24, v56, a18);
  (*(v21 + 32))(v28, v24, a18);
  WitnessTable = swift_getWitnessTable();
  v38 = sub_192224BA0();
  sub_192080134(v53, v55, v58, v42, v41, v57, v59, v60, v52, v28, 3, v38, v54, v50, v51, v44, v45, v46, a15, v47, v48, v25, v32, v49, v43, WitnessTable);
  return (*(v21 + 8))(v36, a18);
}

uint64_t sub_1921467D8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_1921468D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_192227570();
}

uint64_t sub_192146960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  return sub_192227570();
}

uint64_t sub_1921469F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a8 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10(v9);
  return sub_192227570();
}

uint64_t sub_192146A80(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  sub_192224C80();
  v6 = sub_1921D85E8();
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t sub_192146B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  return sub_192227570();
}

uint64_t sub_192146C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a7 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_192227570();
}

uint64_t _s9WidgetKit13ControlPickerV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v9 = *(v1 + 168);
  v11 = *(v1 + 176);
  v10 = *(v1 + 184);
  v12 = *(v1 + 192);
  sub_192081C60(v1 + 56, v6);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v6, a1);
  v13 = type metadata accessor for WidgetDescriptor(0);
  v14 = v13[7];
  v15 = *(a1 + v14);

  *(a1 + v14) = &unk_1F06A8010;
  *(a1 + v13[39]) = v9;
  v16 = (a1 + v13[5]);
  v17 = v16[1];

  *v16 = v8;
  v16[1] = v7;
  v18 = (a1 + v13[6]);
  v19 = v18[1];

  *v18 = 0;
  v18[1] = 0;
  v20 = (a1 + v13[40]);
  v21 = v20[1];

  *v20 = v11;
  v20[1] = v10;
  *(a1 + v13[36]) = v12;
  *(a1 + v13[29]) = v12;
  return result;
}

uint64_t ControlPicker.init<A, B, C>(kind:intent:stateProvider:content:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a8;
  v30 = a7;
  v26 = a5;
  v27 = a6;
  v28 = a4;
  v33 = a2;
  v34 = a3;
  v31 = a9;
  v32 = a1;
  v16 = *(a13 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v20, a13);
  v21 = swift_allocObject();
  v21[2] = a10;
  v21[3] = a11;
  v21[4] = a12;
  v21[5] = a13;
  v21[6] = a14;
  v21[7] = a15;
  v23 = v26;
  v22 = v27;
  v21[8] = a16;
  v21[9] = v23;
  v21[10] = v22;
  v24 = swift_allocObject();
  v24[2] = a10;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a13;
  v24[6] = a14;
  v24[7] = a15;
  v24[8] = a16;
  v35 = 0;
  ControlPicker.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)(v32, v33, v34, 0, 0, &v35, v19, sub_192147114, v31, v21, nullsub_1, v24, v30, v29, 0, 0, a10, a11, MEMORY[0x1E6981E70], a12, a13, a14, MEMORY[0x1E6981E60], a15);
  return (*(v16 + 8))(v28, a13);
}

uint64_t sub_192146FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  v18(v15);
  sub_1921BB14C(v14, a5, a8);
  v19 = *(v10 + 8);
  v19(v14, a5);
  sub_1921BB14C(v17, a5, a8);
  return (v19)(v17, a5);
}

uint64_t sub_192147114(uint64_t a1)
{
  v3 = v1[7];
  v4 = v1[8];
  return sub_192146FE0(a1, v1[9], v1[10], v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t ControlPicker.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v31);
  if (BYTE7(v33) == 1)
  {
    return sub_1920B2BD8(&v31);
  }

  sub_19209CBAC(&v31, v42);
  sub_192033A64(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21[0] = v31;
  v21[1] = v32;
  v8 = a1 & 1;
  v18 = v31;
  v19 = v32;
  v20[0] = v8;
  *&v20[81] = v38;
  *&v20[97] = v39;
  *&v20[113] = *v40;
  *&v20[128] = *&v40[15];
  *&v20[17] = v34;
  *&v20[33] = v35;
  *&v20[49] = v36;
  *&v20[65] = v37;
  *&v20[1] = v33;
  v16[3] = &type metadata for ControlPickerTemplateProvider;
  v16[4] = &off_1F06AFD68;
  v9 = swift_allocObject();
  v16[0] = v9;
  v10 = *&v20[112];
  v9[9] = *&v20[96];
  v9[10] = v10;
  v9[11] = *&v20[128];
  v11 = *&v20[48];
  v9[5] = *&v20[32];
  v9[6] = v11;
  v12 = *&v20[80];
  v9[7] = *&v20[64];
  v9[8] = v12;
  v13 = v19;
  v9[1] = v18;
  v9[2] = v13;
  v14 = *&v20[16];
  v9[3] = *v20;
  v9[4] = v14;
  v22 = v8;
  v28 = v38;
  v29 = v39;
  *v30 = *v40;
  *&v30[15] = *&v40[15];
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v23 = v33;
  sub_1920800B4(&v18, &v15);
  sub_192080104(v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v17 = 0;
  return sub_192147370(v16, a3 + 104);
}

uint64_t sub_192147410()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19214744C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
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

uint64_t sub_192147494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PickerStateProvider.state(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_192147668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920EF2F4;

  return v11(a1, a2, a3);
}

uint64_t sub_192147790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1921478C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1921479F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920B3B44;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_192147B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192147B5C, 0, 0);
}

uint64_t sub_192147B5C()
{
  v2 = v0[4];
  v1 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for EmptyConfiguration)
  {
    v10 = v0[2];
    swift_dynamicCast();
    v11 = v0[1];

    return v11();
  }

  else
  {
    v4 = AssociatedTypeWitness;
    v5 = swift_task_alloc();
    v0[6] = v5;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v5 = v0;
    v5[1] = sub_1920F9F30;
    v7 = v0[2];
    v8 = v0[3];

    return sub_19213431C(v7, v8, v4, AssociatedConformanceWitness);
  }
}

uint64_t sub_192147CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 24) + 40))(a1, *(a3 + 16), *(a3 + 24));
  swift_getAssociatedTypeWitness();
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {
    sub_192227C60();
  }

  else
  {
    v5 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v6 = a2;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_192147E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v8 = *(v6 + 48);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920A59A8;

  return v12(a1, a2, v7, v6);
}

uint64_t sub_192147F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v4[6] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[7] = AssociatedConformanceWitness;
  v4[8] = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = sub_192228240();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[12] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192148188, 0, 0);
}

uint64_t sub_192148188()
{
  v1 = v0[15];
  v2 = v0[5];
  sub_192147CA8(v0[2], v0[3], v0[4]);
  v3 = v0[14];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[2];
  (*(v0[13] + 16))(v3, v0[15], v0[12]);
  v7 = *(v4 + 32);
  v8 = swift_checkMetadataState();
  v7(v3, v8, v4);
  v9 = *(MEMORY[0x1E6959E78] + 4);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_192148310;
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[2];

  return MEMORY[0x1EEDB2D48](v11, 1, v8, v12);
}

uint64_t sub_192148310()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1921484D8;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v4 = sub_19214843C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19214843C()
{
  v1 = v0[14];
  v2 = v0[11];
  (*(v0[13] + 8))(v0[15], v0[12]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1921484D8()
{
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_192148570(uint64_t a1, uint64_t a2)
{
  v3 = sub_192147E28(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_1921485D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return sub_192147E40(a1, a2, a3);
}

uint64_t sub_192148680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return sub_192147F70(a1, a2, a3);
}

uint64_t sub_19214872C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920B3B44;

  return sub_19210A4F4(a1);
}

uint64_t sub_1921487C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  swift_getAssociatedTypeWitness();
  v4[8] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v9 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v4[16] = v16;
  v17 = swift_task_alloc();
  v4[17] = v17;
  *v17 = v4;
  v17[1] = sub_1921489E8;

  return sub_192147B38(v16, a1, a3, a4);
}

uint64_t sub_1921489E8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19214916C, 0, 0);
  }

  else
  {
    v12 = (v3[7] + 48);
    v13 = (*v12 + **v12);
    v4 = (*v12)[1];
    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v3;
    v5[1] = sub_192148BE4;
    v6 = v3[16];
    v7 = v3[13];
    v8 = v3[6];
    v9 = v3[7];
    v10 = v3[5];

    return v13(v7, v6, v8, v9);
  }
}

uint64_t sub_192148BE4()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1921491F0, 0, 0);
  }

  else
  {
    v11 = (v3[7] + 40);
    v12 = (*v11 + **v11);
    v4 = (*v11)[1];
    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v3;
    v5[1] = sub_192148DDC;
    v6 = v3[6];
    v7 = v3[7];
    v8 = v3[5];
    v9 = v3[16];

    return v12(v9, v6, v7);
  }
}

uint64_t sub_192148DDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_19214928C;
  }

  else
  {
    *(v4 + 184) = a1;
    v7 = sub_192148F04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_192148F04()
{
  *(v0 + 32) = *(v0 + 184);
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 48);
  *(v4 + 32) = v2;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227E80();

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (*(v0 + 24) == 1)
  {
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    sub_192228420();
    v17 = sub_192227990();
    v19 = v18;
    sub_19214C5F0();
    swift_allocError();
    *v20 = v17;
    v20[1] = v19;
    swift_willThrow();
    (*(v6 + 8))(v5, v8);
    (*(v10 + 8))(v7, v9);
    v21 = *(v0 + 128);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 16);
    (*(v6 + 8))(*(v0 + 128), *(v0 + 112));
    (*(v10 + 8))(v7, v9);

    v27 = *(v0 + 8);

    return v27(v26);
  }
}

uint64_t sub_19214916C()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1921491F0()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_19214928C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_192149344()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  swift_checkMetadataState();
  sub_192228420();
  sub_192228420();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = sub_192227910();
  v10 = *(v1 + 8);
  v10(v5, AssociatedTypeWitness);
  v10(v7, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_19214952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v5[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[8] = v12;
  v13 = swift_task_alloc();
  v5[9] = v13;
  *v13 = v5;
  v13[1] = sub_192149660;

  return sub_192147B38(v12, a1, a4, a5);
}

uint64_t sub_192149660()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19214C840, 0, 0);
  }

  else
  {
    v12 = (v3[5] + 56);
    v13 = (*v12 + **v12);
    v4 = (*v12)[1];
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_192149858;
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[8];

    return v13(v10, v8, v6, v7);
  }
}

uint64_t sub_192149858()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_19214C838;
  }

  else
  {
    v3 = sub_19214C830;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19214996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[5] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[6] = v13;
  v6[7] = sub_192227CC0();
  v6[8] = sub_192227CB0();
  v14 = swift_task_alloc();
  v6[9] = v14;
  *v14 = v6;
  v14[1] = sub_192149ABC;

  return sub_192147B38(v13, a1, a5, a6);
}

uint64_t sub_192149ABC()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_192149CCC;
  }

  else
  {
    v8 = sub_192149C18;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_192149C18()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v7 = v6(v2);
  (*(v3 + 8))(v2, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_192149CCC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_192149D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[5] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[6] = v13;
  v6[7] = sub_192227CC0();
  v6[8] = sub_192227CB0();
  v14 = swift_task_alloc();
  v6[9] = v14;
  *v14 = v6;
  v14[1] = sub_192149E8C;

  return sub_192147B38(v13, a1, a5, a6);
}

uint64_t sub_192149E8C()
{
  v2 = v0;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 80) = v2;

  v7 = sub_192227C70();
  if (v2)
  {
    v8 = sub_19214C82C;
  }

  else
  {
    v8 = sub_19214C848;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_192149FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[10] = v13;
  v6[11] = sub_192227CC0();
  v6[12] = sub_192227CB0();
  v14 = swift_task_alloc();
  v6[13] = v14;
  *v14 = v6;
  v14[1] = sub_19214A140;

  return sub_192147B38(v13, a1, a5, a6);
}

uint64_t sub_19214A140()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19214A650, v7, v6);
  }

  else
  {
    v15 = (v3[7] + 40);
    v16 = (*v15 + **v15);
    v8 = (*v15)[1];
    v9 = swift_task_alloc();
    v3[15] = v9;
    *v9 = v3;
    v9[1] = sub_19214A350;
    v10 = v3[6];
    v11 = v3[7];
    v12 = v3[3];
    v13 = v3[10];

    return v16(v13, v10, v11);
  }
}

uint64_t sub_19214A350(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;
  v5[16] = v1;

  v8 = v5[12];
  v9 = v5[11];
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_19214A6BC;
  }

  else
  {
    v5[17] = a1;
    v10 = sub_192227C70();
    v12 = v14;
    v13 = sub_19214A4D0;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_19214A4D0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  v16 = *(v0 + 32);

  *(v0 + 16) = v2;
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v16;
  *(v9 + 48) = v4;
  swift_getAssociatedTypeWitness();
  v10 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_19204301C(sub_19214C584, v9, v10, MEMORY[0x1E6981910], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  (*(v5 + 8))(v4, v6);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_19214A650()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19214A6BC()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v5 = v0[16];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_19214A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[10] = v13;
  v6[11] = sub_192227CC0();
  v6[12] = sub_192227CB0();
  v14 = swift_task_alloc();
  v6[13] = v14;
  *v14 = v6;
  v14[1] = sub_19214A8A8;

  return sub_192147B38(v13, a1, a5, a6);
}

uint64_t sub_19214A8A8()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];
    v7 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19214C834, v7, v6);
  }

  else
  {
    v15 = (v3[7] + 40);
    v16 = (*v15 + **v15);
    v8 = (*v15)[1];
    v9 = swift_task_alloc();
    v3[15] = v9;
    *v9 = v3;
    v9[1] = sub_19214AAB8;
    v10 = v3[6];
    v11 = v3[7];
    v12 = v3[3];
    v13 = v3[10];

    return v16(v13, v10, v11);
  }
}

uint64_t sub_19214AAB8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;
  v5[16] = v1;

  v8 = v5[12];
  v9 = v5[11];
  if (v3)
  {
    v10 = sub_192227C70();
    v12 = v11;
    v13 = sub_19214C844;
  }

  else
  {
    v5[17] = a1;
    v10 = sub_192227C70();
    v12 = v14;
    v13 = sub_19214AC38;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_19214AC38()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  v16 = *(v0 + 32);

  *(v0 + 16) = v2;
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v16;
  *(v9 + 48) = v4;
  swift_getAssociatedTypeWitness();
  v10 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_19204301C(sub_19214C54C, v9, v10, &type metadata for ControlAffordances, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  (*(v5 + 8))(v4, v6);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_19214ADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v5[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[8] = v12;
  v13 = swift_task_alloc();
  v5[9] = v13;
  *v13 = v5;
  v13[1] = sub_19214AEEC;

  return sub_192147B38(v12, a2, a4, a5);
}

uint64_t sub_19214AEEC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1920AA0F4, 0, 0);
  }

  else
  {
    v12 = (v3[5] + 64);
    v13 = (*v12 + **v12);
    v4 = (*v12)[1];
    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v3;
    v5[1] = sub_19214B0E4;
    v6 = v3[8];
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[2];
    v10 = v3[3];

    return v13(v9, v6, v7, v8);
  }
}

uint64_t sub_19214B0E4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_19214B278;
  }

  else
  {
    v3 = sub_19214B1F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19214B1F8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19214B278()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19214B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  sub_192227CC0();
  v4[51] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[52] = v6;
  v4[53] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19214B390, v6, v5);
}

uint64_t sub_19214B390()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *v1;
  v5 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[6];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[10];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v11;
  *(v0 + 128) = v9;
  *(v0 + 144) = v10;
  *(v0 + 192) = v2;
  v3[3] = type metadata accessor for ControlTemplatePicker(0);
  v3[4] = sub_19214BB44(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1920800B4(v1, v0 + 200);
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 432) = v14;
  *v14 = v0;
  v14[1] = sub_19214B4D4;
  v15 = *(v0 + 384);

  return sub_192111D70(boxed_opaque_existential_1, v15);
}

uint64_t sub_19214B4D4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 424);
  v6 = *(v2 + 416);
  if (v0)
  {
    v7 = sub_19214B680;
  }

  else
  {
    v7 = sub_19214B610;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19214B610()
{
  v1 = *(v0 + 408);
  sub_19214BB8C(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19214B680()
{
  v1 = v0[51];
  v2 = v0[47];
  sub_19214BB8C((v0 + 2));

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = v0[1];
  v4 = v0[55];

  return v3();
}

uint64_t sub_19214B6FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_19214B724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = v3[9];
  *(v7 + 144) = v3[8];
  *(v7 + 160) = v9;
  *(v7 + 176) = v3[10];
  v10 = v3[5];
  *(v7 + 80) = v3[4];
  *(v7 + 96) = v10;
  v11 = v3[7];
  *(v7 + 112) = v3[6];
  *(v7 + 128) = v11;
  v12 = v3[1];
  *(v7 + 16) = *v3;
  *(v7 + 32) = v12;
  v13 = v3[3];
  *(v7 + 48) = v3[2];
  *(v7 + 64) = v13;
  v14 = swift_task_alloc();
  *(v7 + 192) = v14;
  *v14 = v7;
  v14[1] = sub_19214B80C;

  return sub_19214B2F4(a1, a2, a3);
}

uint64_t sub_19214B80C()
{
  v1 = *(*v0 + 192);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_19214B900(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920A5800;

  return v9(a1);
}

uint64_t sub_19214B9F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 160);
  v7 = *(v2 + 168);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return v11(a2, a1);
}

uint64_t sub_19214BAF4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return *(swift_getAssociatedConformanceWitness() + 8);
}

uint64_t sub_19214BB28(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_19214BB44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19214BBE0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  return sub_192146A80(v0[2]);
}

uint64_t sub_19214BBF4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v7 = *(v1 + 72);
  v6 = *(v1 + 56);
  return sub_192146B78(a1, *(v1 + 80), *(v1 + 88), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_19214BC34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v5 = *(v2 + 48);
  return sub_192146C08(a1, a2, *(v2 + 80), *(v2 + 88), *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

double sub_19214BC70@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    v4 = *(v1 + 88);
    v3(v8);
    v5 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v9;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v6 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v6;
}

uint64_t sub_19214BCE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920EF9CC;

  return sub_1921487C4(a1, v1 + v6, v4, v5);
}

uint64_t sub_19214BDC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return sub_19214952C(a1, a2, v2 + v8, v6, v7);
}

uint64_t sub_19214BEB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_19214996C(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214BFD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_192149FE8(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214C0FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_19214A750(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_19214C2A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return sub_19214ADB8(a1, a2, v2 + v8, v6, v7);
}

uint64_t objectdestroy_64Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_19214C428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_192149D3C(a1, v1 + v6, v8, v9, v4, v5);
}

uint64_t sub_19214C584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 40);
  result = (*(v2 + 32))(a1, *(v2 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_19214C5CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_192149344() & 1;
}

unint64_t sub_19214C5F0()
{
  result = qword_1EADF0CC8;
  if (!qword_1EADF0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0CC8);
  }

  return result;
}

unint64_t sub_19214C644()
{
  result = qword_1EADEDEF8;
  if (!qword_1EADEDEF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADEDEF8);
  }

  return result;
}

uint64_t sub_19214C6B4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
  v10 = v0[11];
  return sub_1921467D8(v0[2]);
}

uint64_t sub_19214C768(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v4 = *(v2 + 48);
  v5 = *(v2 + 64);
  return sub_1921469F0(a1, a2, *(v2 + 96), *(v2 + 104), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

double sub_19214C7A4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = *(v1 + 104);
    v3(v8);
    v5 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v9;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
  }

  else
  {
    *(a1 + 64) = 0;
    *&v6 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return *&v6;
}

id sub_19214C89C@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(v3 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  *a1 = v4;

  return v4;
}

id sub_19214C8EC()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 32));

  return v2;
}

uint64_t sub_19214C934@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 44), a1, type metadata accessor for TimelineReloadPolicy);
}

BOOL sub_19214C98C()
{
  v1 = sub_1922266C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - v8;
  v10 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  sub_19202CFFC(v0 + v10, v9, &qword_1EADF0CD8, &unk_192237800);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_192033970(v9, &qword_1EADF0CD8, &unk_192237800);
    return 1;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_192033970(v9, &qword_1EADF0CD8, &unk_192237800);
    sub_19205E17C(&qword_1EADEDD88, MEMORY[0x1E697C620]);
    sub_192227E00();
    sub_192227E60();
    (*(v2 + 8))(v5, v1);
    return v12[2] == v12[1];
  }
}

uint64_t sub_19214CBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(type metadata accessor for WidgetArchivableMetadata(0) + 20);
  v5 = sub_192225150();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19214CC48@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 24), a1, type metadata accessor for BundleStub);
}

uint64_t sub_19214CCA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_19214CD34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_19214CD94()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_19214CDCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_19214CE64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_192224E00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v7, v13 + v14);
  return swift_endAccess();
}

uint64_t sub_19214CFF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_192224E00();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_192096378(v6, v1 + v9);
  return swift_endAccess();
}

void (*sub_19214D120(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_192224E00();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_1920419A4(v10);
  return sub_19214D240;
}

void sub_19214D240(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
    swift_beginAccess();
    sub_192096378(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_19214D3B8()
{
  v1 = v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 28));
  KeyPath = swift_getKeyPath();
  v4 = v2;
  v5 = sub_192066C3C(KeyPath);

  if (!v5)
  {
    goto LABEL_12;
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_192228340())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x193B0B410](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_19214D49C@<X0>(unint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_19205E20C(a1, a2, a3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    result = sub_192069070(a1, v7, a4);
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  v11 = type metadata accessor for ViewableTimelineEntry();
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

uint64_t sub_19214D544(uint64_t a1)
{
  v33 = a1;
  v2 = sub_192225150();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries;
  v32 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v9 = sub_192096880(v8);

  v11 = *(v9 + 16);
  v12 = (v3 + 8);
  v13 = v9 + 40 * v11 - 8;
  while (1)
  {
    v14 = v11;
    if (!v11)
    {

      v26 = *(v32 + v31);

      v28 = sub_192096880(v27);

      v29 = *(v28 + 16);

      v25 = v29 == 0;
      goto LABEL_7;
    }

    if (v11 > *(v9 + 16))
    {
      break;
    }

    --v11;
    sub_192033A64(v13, v35);
    v16 = v36;
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v15 + 8))(v16, v15);
    sub_19205E17C(&qword_1ED7486A8, MEMORY[0x1E6969530]);
    LOBYTE(v15) = sub_1922278B0();
    (*v12)(v6, v2);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v13 -= 40;
    if ((v15 & 1) == 0)
    {

      v18 = v31;
      v17 = v32;
      v19 = *(v32 + v31);

      sub_192096880(v20);

      v21 = *(v17 + v18);

      v23 = sub_192096880(v22);

      v24 = *(v23 + 16) - 1;

      v25 = v24 == v11;
LABEL_7:
      LOBYTE(v35[0]) = v14 == 0;
      v34 = v25;
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _TimelineArchivedViewCollection.deinit()
{
  v1 = *(v0 + 24);

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192055614(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata, type metadata accessor for WidgetArchivableMetadata);
  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates, &qword_1EADF0CD8, &unk_192237800);
  return v0;
}

id sub_19214D850()
{
  v1 = *v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v2 = *(v1 + *(type metadata accessor for WidgetArchivableMetadata(0) + 32));

  return v2;
}

uint64_t sub_19214D8C0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_19214D908()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_19214D94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of _TimelineArchivedViewCollection.viewableEntry(for:in:ignoringEnvironmentKeys:)()
{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 328))();
}

unint64_t sub_19214DC80()
{
  result = qword_1ED74C6A8;
  if (!qword_1ED74C6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74C6A8);
  }

  return result;
}

double ActivityViewEntryMetadata.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double ActivityViewEntryMetadata.metrics.setter(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = result;
  return result;
}

__n128 ActivityViewEntryMetadata.backgroundTintColor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 60);
  v3 = *(v1 + 61);
  result = *(v1 + 44);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.backgroundTintColor.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *(v1 + 44) = *a1;
  *(v1 + 60) = v2;
  *(v1 + 61) = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.textColor.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u8[0];
  v3 = v1[5].n128_u8[1];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 ActivityViewEntryMetadata.textColor.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u8[0] = v2;
  v1[5].n128_u8[1] = v3;
  return result;
}

unint64_t sub_19214DE30()
{
  v1 = *v0;
  v2 = 0x7363697274656DLL;
  v3 = 0x6F6C6F4374786574;
  if (v1 != 3)
  {
    v3 = 0x6465766968637261;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_19214DEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19214EBBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19214DF08(uint64_t a1)
{
  v2 = sub_19214E770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19214DF44(uint64_t a1)
{
  v2 = sub_19214E770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewEntryMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CE0, &qword_1922378C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = *(v3 + 4);
  v27 = *(v3 + 40);
  v11 = *(v3 + 44);
  v25 = *(v3 + 52);
  v26 = v11;
  LODWORD(v11) = *(v3 + 60);
  v23 = *(v3 + 61);
  v24 = v11;
  v12 = *(v3 + 9);
  *&v20 = *(v3 + 8);
  *(&v20 + 1) = v12;
  LODWORD(v11) = *(v3 + 80);
  v21 = *(v3 + 81);
  v22 = v11;
  v13 = *(v3 + 82);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19214E770();
  sub_192228B90();
  v15 = *v3;
  v30 = v3[1];
  v29 = v15;
  v31 = v10;
  v28 = 0;
  sub_19214E7C4();
  sub_1922288C0();
  if (!v2)
  {
    v17 = v24;
    v19 = v25;
    v18 = v26;
    LOBYTE(v29) = 1;
    sub_192228870();
    *&v29 = v18;
    *(&v29 + 1) = v19;
    LOBYTE(v30) = v17;
    BYTE1(v30) = v23;
    v28 = 2;
    sub_19214E818();
    sub_192228850();
    v29 = v20;
    LOBYTE(v30) = v22;
    BYTE1(v30) = v21;
    v28 = 3;
    sub_192228850();
    LOBYTE(v29) = v13;
    v28 = 4;
    sub_19214E86C();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivityViewEntryMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CE8, &qword_1922378C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v35 = 1;
  v34 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19214E770();
  sub_192228B70();
  if (!v2)
  {
    v30 = 0;
    sub_19214E8C0();
    sub_1922287C0();
    v28 = v31;
    v29 = v32;
    v11 = v33;
    LOBYTE(v31) = 1;
    v27 = sub_192228770();
    v30 = 2;
    sub_19214E914();
    sub_192228750();
    v25 = *(&v31 + 1);
    v26 = v31;
    v12 = v32;
    v35 = BYTE1(v32);
    v30 = 3;
    sub_192228750();
    v24 = v12;
    v14 = v26;
    v23 = *(&v31 + 1);
    v15 = v31;
    HIDWORD(v22) = v32;
    v34 = BYTE1(v32);
    v30 = 4;
    sub_19214E968();
    sub_1922287C0();
    (*(v6 + 8))(v9, v5);
    v16 = v27 & 1;
    v17 = v31;
    v18 = v35;
    v19 = v34;
    v20 = v29;
    *a2 = v28;
    *(a2 + 16) = v20;
    *(a2 + 32) = v11;
    *(a2 + 40) = v16;
    *(a2 + 44) = v14;
    *(a2 + 52) = v25;
    *(a2 + 60) = v24;
    *(a2 + 61) = v18;
    v21 = v23;
    *(a2 + 64) = v15;
    *(a2 + 72) = v21;
    *(a2 + 80) = BYTE4(v22);
    *(a2 + 81) = v19;
    *(a2 + 82) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s9WidgetKit25ActivityViewEntryMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 52);
  v6 = *(a1 + 60);
  v7 = *(a1 + 61);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 44);
  v11 = *(a2 + 52);
  v12 = *(a2 + 60);
  v13 = *(a2 + 61);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  v20 = *(a2 + 80);
  v21 = *(a1 + 80);
  v24 = *(a2 + 81);
  v25 = *(a1 + 81);
  v22 = *(a2 + 82);
  v23 = *(a1 + 82);
  v14 = CGRectEqualToRect(*a1, *a2);
  result = 0;
  if (v14 && v2 == v8 && ((v3 ^ v9) & 1) == 0)
  {
    if (v7)
    {
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else if ((v13 & 1) == 0)
    {
      if (v6)
      {
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v12 & 1) != 0 || (sub_192227290() & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      if (v25)
      {
        if (v24)
        {
          return v23 ^ v22 ^ 1u;
        }
      }

      else if ((v24 & 1) == 0)
      {
        if (v21)
        {
          if (v20)
          {
            return v23 ^ v22 ^ 1u;
          }
        }

        else if (v20 & 1) == 0 && (sub_192227290())
        {
          return v23 ^ v22 ^ 1u;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_19214E770()
{
  result = qword_1EADEE0F8;
  if (!qword_1EADEE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0F8);
  }

  return result;
}

unint64_t sub_19214E7C4()
{
  result = qword_1EADED968;
  if (!qword_1EADED968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED968);
  }

  return result;
}

unint64_t sub_19214E818()
{
  result = qword_1EADEDAF8;
  if (!qword_1EADEDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDAF8);
  }

  return result;
}

unint64_t sub_19214E86C()
{
  result = qword_1EADEDA20;
  if (!qword_1EADEDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA20);
  }

  return result;
}

unint64_t sub_19214E8C0()
{
  result = qword_1EADED130;
  if (!qword_1EADED130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED130);
  }

  return result;
}

unint64_t sub_19214E914()
{
  result = qword_1EADED198;
  if (!qword_1EADED198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED198);
  }

  return result;
}

unint64_t sub_19214E968()
{
  result = qword_1EADED170;
  if (!qword_1EADED170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED170);
  }

  return result;
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19214E9E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 83))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19214EA34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_19214EAB8()
{
  result = qword_1EADF0CF0;
  if (!qword_1EADF0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0CF0);
  }

  return result;
}

unint64_t sub_19214EB10()
{
  result = qword_1EADEE0E8;
  if (!qword_1EADEE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0E8);
  }

  return result;
}

unint64_t sub_19214EB68()
{
  result = qword_1EADEE0F0;
  if (!qword_1EADEE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE0F0);
  }

  return result;
}

uint64_t sub_19214EBBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000192249650 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019224BD30 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEE00796C696D6146)
  {

    return 4;
  }

  else
  {
    v6 = sub_1922289A0();

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

__n128 MetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = *(type metadata accessor for MetricsRequest() + 40);
  v19 = sub_192226600();
  (*(*(v19 - 8) + 56))(a4 + v18, 1, 1, v19);
  *(a4 + 48) = a5;
  result = *a3;
  v21 = *(a3 + 16);
  *(a4 + 56) = *a3;
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 72) = v21;
  *(a4 + 88) = *(a3 + 32);
  *(a4 + 96) = a6;
  *(a4 + 104) = a7;
  return result;
}

uint64_t type metadata accessor for MetricsRequest()
{
  result = qword_1ED74BA48;
  if (!qword_1ED74BA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 MetricsRequest.width.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.width.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.height.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 MetricsRequest.height.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 MetricsRequest.edgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 MetricsRequest.edgeInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  return result;
}

uint64_t MetricsRequest.watchDisplayVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetricsRequest() + 40);

  return sub_192150CF4(v3, a1);
}

uint64_t MetricsRequest.watchDisplayVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsRequest() + 40);

  return sub_192150D64(a1, v3);
}

uint64_t sub_19214F120(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6772614D70696C63;
    v6 = 0x636146656C616373;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746F427465736E69;
    if (a1 != 5)
    {
      v7 = 0x6172547465736E69;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6874646977;
    v2 = 0x615272656E726F63;
    v3 = 0x706F547465736E69;
    if (a1 != 3)
    {
      v3 = 0x61654C7465736E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746867696568;
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
}

uint64_t sub_19214F28C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_19214F120(*a1);
  v5 = v4;
  if (v3 == sub_19214F120(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_19214F314()
{
  v1 = *v0;
  sub_192228AD0();
  sub_19214F120(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19214F378()
{
  sub_19214F120(*v0);
  sub_1922279B0();
}

uint64_t sub_19214F3CC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_19214F120(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19214F42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_192151200();
  *a2 = result;
  return result;
}

uint64_t sub_19214F45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19214F120(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19214F4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192151200();
  *a1 = result;
  return result;
}

uint64_t sub_19214F4CC(uint64_t a1)
{
  v2 = sub_192150DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19214F508(uint64_t a1)
{
  v2 = sub_192150DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsRequest.init(width:height:cornerRadius:edgeInsets:clipMargin:scaleFactor:watchDisplayVariant:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  v20 = *(type metadata accessor for MetricsRequest() + 40);
  v21 = sub_192226600();
  (*(*(v21 - 8) + 56))(a5 + v20, 1, 1, v21);
  *(a5 + 48) = a6;
  v22 = *(a3 + 16);
  *(a5 + 56) = *a3;
  *a5 = v14;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v17;
  *(a5 + 32) = v18;
  *(a5 + 40) = v19;
  *(a5 + 72) = v22;
  *(a5 + 88) = *(a3 + 32);
  *(a5 + 96) = a7;
  *(a5 + 104) = a8;

  return sub_192150D64(a4, a5 + v20);
}

uint64_t MetricsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CF8, &qword_192237AC0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - v9;
  v11 = type metadata accessor for MetricsRequest();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  v15[88] = 1;
  v16 = *(v13 + 48);
  v17 = sub_192226600();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v49 = v16;
  v52 = v15;
  v19(&v15[v16], 1, 1, v17);
  v21 = a1[3];
  v22 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_192150DD4();
  v23 = v50;
  sub_192228B70();
  if (v23)
  {
    v26 = v52;
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_192033970(v26 + v49, &qword_1EADEFD38, &qword_1922316A0);
  }

  else
  {
    v46[1] = v20;
    v50 = v19;
    v24 = v48;
    v55 = 0;
    sub_192150E28();
    v25 = v10;
    sub_1922287C0();
    v28 = v54;
    v29 = v52;
    *v52 = v53;
    *(v29 + 16) = v28;
    v55 = 1;
    sub_1922287C0();
    v30 = v54;
    *(v29 + 24) = v53;
    *(v29 + 40) = v30;
    LOBYTE(v53) = 2;
    sub_192228780();
    *(v29 + 48) = v31;
    LOBYTE(v53) = 7;
    sub_192228780();
    *(v29 + 96) = v32;
    LOBYTE(v53) = 8;
    sub_192228780();
    *(v29 + 104) = v33;
    LOBYTE(v53) = 9;
    v34 = sub_192228800();
    if (v34)
    {
      LOBYTE(v53) = 9;
      sub_19215124C(&qword_1EADF0D00, MEMORY[0x1E697F8E8]);
      sub_1922287C0();
      v50(v6, 0, 1, v17);
      sub_192150D64(v6, v29 + v49);
    }

    LOBYTE(v53) = 3;
    sub_192228780();
    v35 = v47;
    v37 = v36;
    LOBYTE(v53) = 4;
    sub_192228780();
    v39 = v38;
    LOBYTE(v53) = 5;
    sub_192228780();
    v41 = v40;
    LOBYTE(v53) = 6;
    sub_192228780();
    v43 = v42;
    (*(v24 + 8))(v25, v7);
    v44 = v52;
    *(v52 + 7) = v37;
    *(v44 + 64) = v39;
    *(v44 + 72) = v41;
    *(v44 + 80) = v43;
    *(v44 + 88) = 0;
    v45 = v52;
    sub_1920F864C(v52, v35);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_192101B1C(v45);
  }
}

uint64_t MetricsRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v31 - v6;
  v7 = sub_192226600();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0D08, &qword_192237AC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192150DD4();
  sub_192228B90();
  v17 = *(v2 + 16);
  v37 = *v2;
  v38 = v17;
  v36 = 0;
  sub_192150E7C();
  v18 = v35;
  sub_1922288C0();
  if (v18)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v35 = v10;
  v19 = *(v2 + 40);
  v37 = *(v2 + 24);
  v38 = v19;
  v36 = 1;
  sub_1922288C0();
  *&v37 = *(v2 + 6);
  v36 = 2;
  sub_192059A84();
  sub_1922288C0();
  v21 = v12;
  *&v37 = *(v2 + 12);
  v36 = 7;
  sub_1922288C0();
  *&v37 = *(v2 + 13);
  v36 = 8;
  sub_1922288C0();
  v32 = v11;
  if ((*(v2 + 88) & 1) == 0)
  {
    v27 = *(v2 + 9);
    v26 = *(v2 + 10);
    v28 = *(v2 + 8);
    *&v37 = *(v2 + 7);
    v36 = 3;
    sub_1922288C0();
    *&v37 = v28;
    v36 = 4;
    sub_1922288C0();
    *&v37 = v27;
    v36 = 5;
    sub_1922288C0();
    *&v37 = v26;
    v36 = 6;
    sub_1922288C0();
  }

  v22 = type metadata accessor for MetricsRequest();
  v23 = v33;
  sub_192150CF4(v2 + *(v22 + 40), v33);
  v24 = v34;
  v25 = v7;
  if ((*(v34 + 48))(v23, 1, v7) == 1)
  {
    (*(v21 + 8))(v15, v32);
    return sub_192033970(v23, &qword_1EADEFD38, &qword_1922316A0);
  }

  else
  {
    v29 = v35;
    (*(v24 + 32))(v35, v23, v25);
    LOBYTE(v37) = 9;
    sub_19215124C(&qword_1EADF0D10, MEMORY[0x1E697F8E8]);
    v30 = v32;
    sub_1922288C0();
    (*(v24 + 8))(v29, v25);
    return (*(v21 + 8))(v15, v30);
  }
}

uint64_t MetricsRequest.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  LOBYTE(v3) = *(v0 + 16);
  v24 = *v0;
  v25 = v3;
  DimensionRequest.hash(into:)();
  v5 = *(v0 + 40);
  v24 = *(v0 + 24);
  v25 = v5;
  DimensionRequest.hash(into:)();
  v6 = *(v0 + 6);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v6);
  v7 = *(v0 + 12);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v7);
  v8 = *(v0 + 13);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v8);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  v11 = *(v0 + 88);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if (*(v0 + 88))
  {
    v12 = 0x3FF0000000000000;
  }

  else
  {
    v12 = *&v10;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if (*(v0 + 88))
  {
    v13 = 0x3FF0000000000000;
  }

  else
  {
    v13 = *&v9;
  }

  v14 = *(v0 + 8);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  if (*(v0 + 88))
  {
    v15 = 0x3FF0000000000000;
  }

  else
  {
    v15 = *&v14;
  }

  if (*(v0 + 7) == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *(v0 + 7);
  }

  if (*(v0 + 88))
  {
    v17 = 0x3FF0000000000000;
  }

  else
  {
    v17 = *&v16;
  }

  MEMORY[0x193B0BAC0](v17);
  MEMORY[0x193B0BAC0](v15);
  MEMORY[0x193B0BAC0](v13);
  MEMORY[0x193B0BAC0](v12);
  v18 = type metadata accessor for MetricsRequest();
  sub_192150CF4(v0 + *(v18 + 40), v4);
  v19 = sub_192226600();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v4, 1, v19) == 1)
  {
    sub_192033970(v4, &qword_1EADEFD38, &qword_1922316A0);
    v21 = 1;
  }

  else
  {
    v22 = sub_1922265F0();
    (*(v20 + 8))(v4, v19);
    v21 = v22;
  }

  return MEMORY[0x193B0BA90](v21);
}

uint64_t MetricsRequest.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224BD50);
  v29 = *v0;
  v31 = *(v0 + 16);
  v3 = DimensionRequest.description.getter();
  MEMORY[0x193B0A990](v3);

  MEMORY[0x193B0A990](0x746867696568202CLL, 0xE90000000000003DLL);
  v30 = *(v0 + 24);
  v32 = *(v0 + 40);
  v4 = DimensionRequest.description.getter();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](0xD000000000000010, 0x800000019224BD70);
  v5 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  v7 = MEMORY[0x1E69E7DE0];
  *(v6 + 56) = MEMORY[0x1E69E7DE0];
  v8 = sub_192150ED0();
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  v9 = sub_192227970();
  MEMORY[0x193B0A990](v9);

  MEMORY[0x193B0A990](0x614D70696C63202CLL, 0xED00003D6E696772);
  v10 = *(v1 + 12);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19222B480;
  *(v11 + 56) = v7;
  *(v11 + 64) = v8;
  *(v11 + 32) = v10;
  v12 = sub_192227970();
  MEMORY[0x193B0A990](v12);

  MEMORY[0x193B0A990](0x46656C616373202CLL, 0xEE003D726F746361);
  v13 = *(v1 + 13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19222B480;
  *(v14 + 56) = v7;
  *(v14 + 64) = v8;
  *(v14 + 32) = v13;
  v15 = sub_192227970();
  MEMORY[0x193B0A990](v15);

  MEMORY[0x193B0A990](0xD000000000000012, 0x800000019224BD90);
  v17 = *(v1 + 9);
  v16 = *(v1 + 10);
  v18 = *(v1 + 88);
  if (v18)
  {
    v19 = 0xE300000000000000;
    MEMORY[0x193B0A990](7104878, 0xE300000000000000);

    MEMORY[0x193B0A990](0x6E696461656C202CLL, 0xEA00000000003D67);
    v20 = 7104878;
  }

  else
  {
    v21 = *(v1 + 7);
    v22 = *(v1 + 8);
    v23 = sub_192227D10();
    MEMORY[0x193B0A990](v23);

    MEMORY[0x193B0A990](0x6E696461656C202CLL, 0xEA00000000003D67);
    v20 = sub_192227D10();
    v19 = v24;
  }

  MEMORY[0x193B0A990](v20, v19);

  MEMORY[0x193B0A990](0x6D6F74746F62202CLL, 0xE90000000000003DLL);
  if (v18)
  {
    v25 = 0xE300000000000000;
    MEMORY[0x193B0A990](7104878, 0xE300000000000000);

    MEMORY[0x193B0A990](0x696C69617274202CLL, 0xEB000000003D676ELL);
  }

  else
  {
    v26 = sub_192227D10();
    MEMORY[0x193B0A990](v26);

    MEMORY[0x193B0A990](0x696C69617274202CLL, 0xEB000000003D676ELL);
    v2 = sub_192227D10();
    v25 = v27;
  }

  MEMORY[0x193B0A990](v2, v25);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t MetricsRequest.hashValue.getter()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  return sub_192228B30();
}

uint64_t sub_192150854()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  return sub_192228B30();
}

uint64_t sub_192150898()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)();
  return sub_192228B30();
}

uint64_t _s9WidgetKit14MetricsRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192226600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0D28, &qword_192237D38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    v23 = *a1;
    v24 = *a2;
    if (v18 != v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }

LABEL_9:
    v25 = *(a1 + 24);
    v26 = *(a2 + 24);
    v20 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return v20;
      }

      v20 = 0;
      v27 = *(a1 + 24);
      v28 = *(a2 + 24);
      if (v25 != v26 || *(a1 + 32) != *(a2 + 32))
      {
        return v20;
      }
    }

    else
    {
      v29 = *(a1 + 24);
      v30 = *(a2 + 24);
      if (v25 != v26)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (*(a1 + 48) == *(a2 + 48))
    {
      v31 = *(a2 + 88);
      if ((*(a1 + 88) & 1) == 0)
      {
        if (*(a2 + 88))
        {
          return 0;
        }

        v32 = *(a1 + 56);
        v33 = *(a1 + 64);
        v34 = *(a1 + 72);
        v35 = *(a1 + 80);
        v36 = *(a2 + 56);
        v37 = *(a2 + 64);
        v38 = *(a2 + 72);
        v39 = *(a2 + 80);
        v40 = v15;
        v31 = sub_1922259A0();
        v15 = v40;
      }

      if ((v31 & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
      {
        return 0;
      }

      v41 = v15;
      v42 = *(type metadata accessor for MetricsRequest() + 40);
      v43 = *(v41 + 48);
      sub_192150CF4(a1 + v42, v17);
      sub_192150CF4(a2 + v42, &v17[v43]);
      v44 = *(v5 + 48);
      if (v44(v17, 1, v4) == 1)
      {
        if (v44(&v17[v43], 1, v4) == 1)
        {
          sub_192033970(v17, &qword_1EADEFD38, &qword_1922316A0);
          return 1;
        }

        goto LABEL_29;
      }

      sub_192150CF4(v17, v12);
      if (v44(&v17[v43], 1, v4) == 1)
      {
        (*(v5 + 8))(v12, v4);
LABEL_29:
        sub_192033970(v17, &qword_1EADF0D28, &qword_192237D38);
        return 0;
      }

      (*(v5 + 32))(v8, &v17[v43], v4);
      sub_19215124C(&qword_1EADF0D30, MEMORY[0x1E697F8E8]);
      v46 = sub_192227910();
      v47 = *(v5 + 8);
      v47(v8, v4);
      v47(v12, v4);
      sub_192033970(v17, &qword_1EADEFD38, &qword_1922316A0);
      if (v46)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    v20 = 0;
    v21 = *a1;
    v22 = *a2;
    if (v18 == v19 && *(a1 + 8) == *(a2 + 8))
    {
      goto LABEL_9;
    }
  }

  return v20;
}

uint64_t sub_192150CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192150D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_192150DD4()
{
  result = qword_1EADEE3C0;
  if (!qword_1EADEE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3C0);
  }

  return result;
}

unint64_t sub_192150E28()
{
  result = qword_1EADEDF48;
  if (!qword_1EADEDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF48);
  }

  return result;
}

unint64_t sub_192150E7C()
{
  result = qword_1EADED148;
  if (!qword_1EADED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED148);
  }

  return result;
}

unint64_t sub_192150ED0()
{
  result = qword_1EADED360;
  if (!qword_1EADED360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED360);
  }

  return result;
}

void sub_192150F94()
{
  sub_192151040();
  if (v0 <= 0x3F)
  {
    sub_192151090();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_192151040()
{
  if (!qword_1ED74C3E0[0])
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, qword_1ED74C3E0);
    }
  }
}

void sub_192151090()
{
  if (!qword_1ED74BAD8)
  {
    sub_192226600();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74BAD8);
    }
  }
}

unint64_t sub_1921510FC()
{
  result = qword_1EADF0D20;
  if (!qword_1EADF0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0D20);
  }

  return result;
}

unint64_t sub_192151154()
{
  result = qword_1EADEE3B0;
  if (!qword_1EADEE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3B0);
  }

  return result;
}

unint64_t sub_1921511AC()
{
  result = qword_1EADEE3B8;
  if (!qword_1EADEE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE3B8);
  }

  return result;
}

uint64_t sub_192151200()
{
  v0 = sub_192228700();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19215124C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ControlAffordances.init(tint:status:actionHint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1921512FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_192151358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_192151410()
{
  v1 = *(*(*(*v0 + qword_1EADF0D38) - 8) + 80);
  sub_192228220();

  JUMPOUT(0x193B0B480);
}

uint64_t sub_1921514A0()
{
  sub_192151410();

  return swift_deallocClassInstance();
}

uint64_t ActivityWidgetRequest.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v4 = sub_192225360();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityWidgetRequest.defaultPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload);
  sub_1920367C8(v1, *(v0 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload + 8));
  return v1;
}

uint64_t ActivityWidgetRequest.PayloadMetadata.payloadID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityWidgetRequest.payloadMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 8);
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 16);
  v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 17);
  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata + 18);
  *a1 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 18) = v5;
}

id ActivityWidgetRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment);
  *a1 = v2;
  return v2;
}

void sub_192151694(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1921516F4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_192151758(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_192151810(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D6E6F7269766E65;
    v7 = 0x7363697274656DLL;
    v8 = 0xD000000000000012;
    if (a1 != 3)
    {
      v8 = 0x50746C7561666564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646E6148656C6966;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x5665766968637261;
    v2 = 0x7974746168437369;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C6174537369;
    v4 = 0x4964616F6C796170;
    if (a1 != 6)
    {
      v4 = 0x697472656C417369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1921519AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192151810(*a1);
  v5 = v4;
  if (v3 == sub_192151810(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192151A34()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192151810(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192151A98()
{
  sub_192151810(*v0);
  sub_1922279B0();
}

uint64_t sub_192151AEC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192151810(v1);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192151B4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_192154B94();
  *a2 = result;
  return result;
}

uint64_t sub_192151B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192151810(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192151BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192154B94();
  *a1 = result;
  return result;
}

uint64_t sub_192151BF8(uint64_t a1)
{
  v2 = sub_192155888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192151C34(uint64_t a1)
{
  v2 = sub_192155888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192151C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E28, &qword_192238218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192156208();
  sub_192228B90();
  LOBYTE(v23) = 0;
  sub_192225360();
  sub_1921558DC(&qword_1EADECEE8, MEMORY[0x1E6959B98]);
  sub_1922288C0();
  if (!v2)
  {
    v11 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
    v12 = v11[5];
    LOBYTE(v23) = 1;
    type metadata accessor for ActivityMetricsDefinition();
    sub_1921558DC(&qword_1EADECAC8, type metadata accessor for ActivityMetricsDefinition);
    sub_1922288C0();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v23 = *v13;
    v24 = v14;
    v22 = 2;
    sub_1920367C8(v23, v14);
    sub_1920593E0();
    sub_1922288C0();
    sub_192039140(v23, v24);
    v15 = *(v3 + v11[7]);
    LOBYTE(v23) = 3;
    sub_192228870();
    v16 = (v3 + v11[8]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v23) = 4;
    sub_192228860();
    v19 = *(v3 + v11[9]);
    LOBYTE(v23) = 5;
    sub_192228870();
    LOBYTE(v23) = *(v3 + v11[10]);
    v22 = 6;
    sub_1921559A8();
    sub_192228850();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_192151FA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for ActivityMetricsDefinition();
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_192225360();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0E18, &qword_192238210);
  v32 = *(v35 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ActivityWidgetRequest.CodingProxy(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 40);
  v15[v16] = 3;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192156208();
  v36 = v10;
  v18 = v37;
  sub_192228B70();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v32;
  v20 = v33;
  v28 = v16;
  v37 = v11;
  LOBYTE(v38) = 0;
  sub_1921558DC(&qword_1EADEDED8, MEMORY[0x1E6959B98]);
  v21 = v34;
  sub_1922287C0();
  (*(v31 + 32))(v15, v21, v5);
  LOBYTE(v38) = 1;
  sub_1921558DC(qword_1EADED6F0, type metadata accessor for ActivityMetricsDefinition);
  sub_1922287C0();
  v22 = v37;
  sub_19215625C(v20, &v15[v37[5]], type metadata accessor for ActivityMetricsDefinition);
  v39 = 2;
  sub_192047340();
  sub_1922287C0();
  *&v15[v22[6]] = v38;
  LOBYTE(v38) = 3;
  v15[v22[7]] = sub_192228770() & 1;
  LOBYTE(v38) = 4;
  v23 = sub_192228760();
  v24 = &v15[v22[8]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v38) = 5;
  v15[v22[9]] = sub_192228770() & 1;
  v39 = 6;
  sub_1921562C4();
  sub_192228750();
  (*(v19 + 8))(v36, v35);
  v26 = v29;
  v15[v28] = v38;
  sub_192156318(v15, v26, type metadata accessor for ActivityWidgetRequest.CodingProxy);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_192155A84(v15, type metadata accessor for ActivityWidgetRequest.CodingProxy);
}

uint64_t sub_192152590()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  v3 = 0x697472656C417369;
  if (v1 != 5)
  {
    v3 = 0x5665766968637261;
  }

  v4 = 0x656C6174537369;
  if (v1 != 3)
  {
    v4 = 0x4964616F6C796170;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7363697274656DLL;
  if (v1 != 1)
  {
    v5 = 0x50746C7561666564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19215268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_192154BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1921526B4(uint64_t a1)
{
  v2 = sub_192156208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921526F0(uint64_t a1)
{
  v2 = sub_192156208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ActivityWidgetRequest.__allocating_init(descriptor:metrics:defaultPayload:fileHandle:environment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8, uint64_t a9, char *a10, char a11, char a12)
{
  v13 = v12;
  v18 = objc_allocWithZone(v13);
  v19 = *a6;
  v20 = *a10;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v21 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v22 = sub_192225360();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v18[v21], a1, v22);
  sub_192156318(a2, &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v24 = &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v24 = a3;
  v24[1] = a4;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  *&v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v19;
  v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v20;
  v25 = &v18[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v25 = a8;
  *(v25 + 1) = a9;
  v25[16] = a7;
  v25[17] = a11;
  v25[18] = a12;
  v32.receiver = v18;
  v32.super_class = v13;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  sub_192155A84(a2, type metadata accessor for ActivityMetricsDefinition);
  (*(v23 + 8))(a1, v22);
  return v26;
}

id ActivityWidgetRequest.init(descriptor:metrics:defaultPayload:fileHandle:environment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8, uint64_t a9, char *a10, char a11, char a12)
{
  v17 = *a6;
  v18 = *a10;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v19 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v20 = sub_192225360();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v19], a1, v20);
  sub_192156318(a2, &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v22 = &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v22 = a3;
  v22[1] = a4;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  *&v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v17;
  v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v18;
  v23 = &v12[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v23 = a8;
  *(v23 + 1) = a9;
  v23[16] = a7;
  v23[17] = a11;
  v23[18] = a12;
  v29.receiver = v12;
  v29.super_class = type metadata accessor for ActivityWidgetRequest(0);
  v24 = objc_msgSendSuper2(&v29, sel_init);
  sub_192155A84(a2, type metadata accessor for ActivityMetricsDefinition);
  (*(v21 + 8))(a1, v20);
  return v24;
}

id ActivityWidgetRequest.__allocating_init(descriptor:metrics:defaultPayload:fileHandle:environment:jindoEnvironment:isStale:payloadID:archiveVersion:isAlerting:isChatty:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void **a6, void **a7, char a8, uint64_t a9, uint64_t a10, char *a11, char a12, char a13)
{
  v14 = v13;
  v70 = v14;
  v22 = objc_allocWithZone(v14);
  v23 = *a6;
  v65 = *a7;
  v67 = *a11;
  v24 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment;
  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_jindoEnvironment] = 0;
  v25 = OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_descriptor;
  v26 = sub_192225360();
  v69 = *(v26 - 8);
  v75 = a1;
  v71 = v26;
  (*(v69 + 16))(&v22[v25], a1);
  v74 = a2;
  sub_192156318(a2, &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_metrics], type metadata accessor for ActivityMetricsDefinition);
  v27 = &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_defaultPayload];
  *v27 = a3;
  v27[1] = a4;
  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_fileHandle] = a5;
  KeyPath = swift_getKeyPath();
  v72 = a3;
  v73 = a4;
  sub_1920367C8(a3, a4);
  v66 = a5;
  v29 = v23;
  v30 = v29;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v31 = type metadata accessor for WidgetEnvironment.Storage();
    v32 = objc_allocWithZone(v31);
    v33 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v32[v33] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v34 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v35 = *&v29[v34];
    swift_beginAccess();
    *&v32[v33] = v35;

    v80.receiver = v32;
    v80.super_class = v31;
    v30 = objc_msgSendSuper2(&v80, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v36 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v37 = type metadata accessor for WidgetEnvironment.Storage();
    v38 = objc_allocWithZone(v37);
    v39 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v38[v39] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v40 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v41 = *&v30[v40];
    swift_beginAccess();
    *&v38[v39] = v41;

    v79.receiver = v38;
    v79.super_class = v37;
    v42 = objc_msgSendSuper2(&v79, sel_init);

    v30 = v42;
  }

  v43 = a13;
  v45 = a9;
  v44 = a10;
  sub_19204C8C0(0, v36);

  *&v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_environment] = v30;
  if (v65)
  {
    v46 = swift_getKeyPath();
    v47 = v65;
    v48 = v47;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v49 = type metadata accessor for WidgetEnvironment.Storage();
      v50 = objc_allocWithZone(v49);
      v51 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v50[v51] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v52 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v53 = *&v47[v52];
      swift_beginAccess();
      *&v50[v51] = v53;

      v77.receiver = v50;
      v77.super_class = v49;
      v48 = objc_msgSendSuper2(&v77, &selRef_colorGamut);
    }

    sub_19204C8C0(0, v46);

    v54 = swift_getKeyPath();
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v55 = type metadata accessor for WidgetEnvironment.Storage();
      v56 = objc_allocWithZone(v55);
      v57 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      *&v56[v57] = sub_192043788(MEMORY[0x1E69E7CC0]);
      v58 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
      swift_beginAccess();
      v59 = *&v48[v58];
      swift_beginAccess();
      *&v56[v57] = v59;

      v76.receiver = v56;
      v76.super_class = v55;
      v60 = objc_msgSendSuper2(&v76, &selRef_colorGamut);

      v48 = v60;
    }

    v45 = a9;
    v44 = a10;
    v43 = a13;
    sub_19204C8C0(0, v54);
  }

  else
  {
    v48 = 0;
  }

  swift_beginAccess();
  v61 = *&v22[v24];
  *&v22[v24] = v48;

  v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_archiveVersion] = v67;
  v62 = &v22[OBJC_IVAR____TtC9WidgetKit21ActivityWidgetRequest_payloadMetadata];
  *v62 = v45;
  *(v62 + 1) = v44;
  v62[16] = a8 & 1;
  v62[17] = a12 & 1;
  v62[18] = v43 & 1;
  v78.receiver = v22;
  v78.super_class = v70;
  v63 = objc_msgSendSuper2(&v78, sel_init);

  sub_192039140(v72, v73);
  sub_192155A84(v74, type metadata accessor for ActivityMetricsDefinition);
  (*(v69 + 8))(v75, v71);
  return v63;
}