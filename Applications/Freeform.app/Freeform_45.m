unint64_t sub_1007A96C8()
{
  result = qword_1019FFF68;
  if (!qword_1019FFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFF68);
  }

  return result;
}

unint64_t sub_1007A9778()
{
  result = qword_1019FFF88;
  if (!qword_1019FFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFF88);
  }

  return result;
}

unint64_t sub_1007A9820()
{
  result = qword_1019FFF98;
  if (!qword_1019FFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFF98);
  }

  return result;
}

unint64_t sub_1007A9874()
{
  result = qword_1019FFFD0;
  if (!qword_1019FFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFFD0);
  }

  return result;
}

void sub_1007A98C8(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_1007A98DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00210, &qword_101A00208);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00208);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &unk_1019F61A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9A7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A00048, &qword_101A00040);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00040);
            v9 = sub_1007779F4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1005B981C(&qword_1019F5720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9C18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00160, &qword_101A00158);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00158);
            v9 = sub_100777B7C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1005B981C(&qword_101A00150);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9DB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00248, &qword_101A00240);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00240);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_101A04270);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9F54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00078, &qword_101A00070);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00070);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLTextSelectionRect();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA0E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00230, &qword_101A00228);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00228);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_101A287B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A001D0, &qword_101A001C8);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A001C8);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_101A001C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA424(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00118, &qword_101A00110);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00110);
            v9 = sub_100777A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1005B981C(&qword_1019F6DD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA5C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A000A8, &qword_101A000A0);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A000A0);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019F6E98);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA760(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00140, &qword_101A00138);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00138);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_101A00130);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AA900(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00220, &qword_101A00218);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00218);
            v9 = sub_100777C04(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyCancellable();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AAA90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A00090, &unk_1019FF118);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&unk_1019FF118);
            v9 = sub_100777A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLBoardItemData();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AAC20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A001A8, &qword_101A001A0);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A001A0);
            v9 = sub_100777A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1005B981C(&qword_1019F6E90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AADBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A00060, &qword_101A00058);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00058);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLFreehandDrawingShapeItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AAF4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A00030, &qword_101A00028);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00028);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_101A00020);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007AB160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007AB1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007AB228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1007AB290()
{
  result = qword_101A00188;
  if (!qword_101A00188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00188);
  }

  return result;
}

id sub_1007AB2E4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC8Freeform11CRLWPLayout_defaultEdgeInset];
  __asm { FMOV            V0.2D, #4.0 }

  *v3 = _Q0;
  v3[1] = _Q0;
  v1[OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid] = 0;
  v9 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  *&v1[v9] = [objc_allocWithZone(NSMutableArray) init];
  *&v1[OBJC_IVAR____TtC8Freeform11CRLWPLayout_geometryWhenLastInvalidated] = 0;
  v10 = OBJC_IVAR____TtC8Freeform11CRLWPLayout_layoutDetailsFactory;
  *&v1[v10] = type metadata accessor for CRLWPLaidOutColumnProxy();
  type metadata accessor for CRLWPStorage();
  *&v1[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage] = swift_dynamicCastClassUnconditional();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CRLWPLayout();
  swift_unknownObjectRetain();
  result = objc_msgSendSuper2(&v12, "initWithInfo:", a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007AB3D4(uint64_t a1)
{
  if ((a1 - 2) < 4)
  {
    return qword_10147C120[a1 - 2];
  }

  v28[12] = v1;
  v28[13] = v2;
  v5 = objc_opt_self();
  v6 = [v5 _atomicIncrementAssertCount];
  v28[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v28);
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v15;
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 547;
  v18 = v28[0];
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Unknown direction type.", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  [v5 handleFailureInFunction:v25 file:v26 lineNumber:547 isFatal:0 format:v27 args:v24];

  return a1;
}

unint64_t sub_1007AB790(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1007AB7A8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1007AB88C()
{
  if (qword_1019F1578 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6508;
  if (qword_101AD6508 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((qword_101AD6508 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100034080(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v0 canvasObjectTypeIdentifierForVersion:v5];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100034080((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
    }

    while (v2 != v4);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_1007ABA18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_18:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = (*((swift_isaMask & *v8) + 0x300))();

    if (!v10)
    {
      return 0;
    }
  }

  sub_10080D698(a1);
  if (a2)
  {
    v11 = sub_1007ABF70(a1, a2, a3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = sub_1007AB88C();
  sub_100798D48(_swiftEmptyArrayStorage);
  sub_100798D48(v11);
  return v13;
}

id sub_1007ABD30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCLCopyPasteHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1007ABD88()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101465920;
  v1 = type metadata accessor for TSCLVersion();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, "init");
  *(v0 + 32) = result;
  qword_101AD6508 = v0;
  return result;
}

uint64_t sub_1007ABF70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  _s16ResourceExporterCMa();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();

  v6 = sub_1008147E0(v5, a1);
  _s25CanvasObjectArrayExporterCMa();
  inited = swift_initStackObject();
  _s20CanvasObjectExporterCMa();
  v8 = swift_initStackObject();
  *(v8 + 16) = v6;
  *(inited + 24) = v8;

  result = sub_10080D194(a1);
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  v13 = _swiftEmptyArrayStorage;
LABEL_2:
  v14 = 24 * v11 + 40;
  while (1)
  {
    if (v12 == v11)
    {

      return v13;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    ++v11;
    v15 = v14 + 24;
    v16 = *(v10 + v14);
    v14 += 24;
    if (v16)
    {
      v20 = *(v10 + v15 - 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024CBC(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        result = sub_100024CBC((v17 > 1), v18 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1007AC158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 40;
  v26 = *(a1 + 16);
  v24 = a1 + 40;
  while (2)
  {
    v25 = v3;
    v5 = (v4 + 16 * v2);
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9._object = 0x8000000101567710;
      v9._countAndFlagsBits = 0xD00000000000002ELL;
      if (!String.hasPrefix(_:)(v9))
      {

        goto LABEL_5;
      }

      v10 = String.count.getter();
      sub_100D8BFDC(v10, v8, v7);

      static String._fromSubstring(_:)();

      v11 = type metadata accessor for TSCLVersion();
      v12 = objc_allocWithZone(v11);
      v13 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
      *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
      v14 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
      *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;

      v15 = sub_100763420();
      v27 = v16;
      v18 = v17;

      if (v18)
      {
        swift_deallocPartialClassInstance();

        v1 = v26;
        v2 = v6 + 1;
        goto LABEL_5;
      }

      *&v12[v13] = v15;
      *&v12[v14] = v27;
      v28.receiver = v12;
      v28.super_class = v11;
      v19 = objc_msgSendSuper2(&v28, "init");
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      v20 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
      v2 = v6 + 1;
      if (*(static TSContentLanguage.Models.CanvasObject.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v19[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {

LABEL_21:

        v1 = v26;
        goto LABEL_5;
      }

      v21 = v25;
      if (!v25)
      {
        break;
      }

      v22 = *&v25[OBJC_IVAR____TtC8Freeform11TSCLVersion_major];
      v23 = *&v19[v20];
      if (v22 < v23)
      {
        break;
      }

      if (v22 != v23)
      {

        goto LABEL_21;
      }

      v21 = v25;
      if (*&v25[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] < *&v19[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor])
      {
        break;
      }

      v1 = v26;
LABEL_5:
      ++v6;
      v5 += 2;
      if (v2 == v1)
      {
        v19 = v25;
        goto LABEL_25;
      }
    }

    sub_1007AC490(v21);
    v3 = v19;
    v1 = v26;
    v4 = v24;
    if (v6 + 1 != v26)
    {
      continue;
    }

    break;
  }

LABEL_25:
  if (v19)
  {
  }
}

void *sub_1007AC490(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1007AC4D0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_1005B981C(&qword_101A00278);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v40 = type metadata accessor for URLResourceValues();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v41 = v12;
  v15(v12, 1, 1, v13);
  sub_1005B981C(&qword_101A00280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSURLContentTypeKey;
  v18 = NSURLContentTypeKey;
  sub_1005BC3E8(inited);
  swift_setDeallocating();
  sub_1007B00E4(inited + 32);
  URL.resourceValues(forKeys:)();
  v19 = v18;
  v36 = v16;

  v20 = v40;
  (*(v5 + 56))(v4, 0, 1, v40);
  v21 = v37;
  (*(v5 + 32))(v37, v4, v20);
  v22 = URLResourceValues.allValues.getter();
  if (*(v22 + 16))
  {
    v23 = sub_10006E4C8(v19);
    if (v24)
    {
      sub_100064288(*(v22 + 56) + 32 * v23, v42);
      (*(v5 + 8))(v21, v20);

      sub_10000BF3C(v42, &aBlock);
      sub_10000BF3C(&aBlock, v42);
      v25 = swift_dynamicCast();
      v15(v9, v25 ^ 1u, 1, v13);
      v26 = v41;
      sub_10002C638(v9, v41, &unk_1019F8DB0);
LABEL_7:
      v33 = 0;
      goto LABEL_8;
    }
  }

  (*(v5 + 8))(v21, v20);
  v26 = v41;
  if ((v38 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = [objc_allocWithZone(NSFileCoordinator) init];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  v32 = swift_allocObject();
  v33 = sub_1007B01B0;
  *(v32 + 16) = sub_1007B01B0;
  *(v32 + 24) = v31;
  v46 = sub_100055B40;
  v47 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = *"";
  v44 = sub_100055A5C;
  v45 = &unk_101886CC0;
  v34 = _Block_copy(&aBlock);

  [v27 coordinateReadingItemAtURL:v30 options:4 error:0 byAccessor:v34];

  _Block_release(v34);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  sub_1007B0140(v26, v39);
  return sub_1000C1014(v33);
}

uint64_t sub_1007ACA3C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1005B981C(&qword_101A00278);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for URLResourceValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A00280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSURLContentTypeKey;
  v13 = NSURLContentTypeKey;
  sub_1005BC3E8(inited);
  swift_setDeallocating();
  sub_1007B00E4(inited + 32);
  URL.promisedItemResourceValues(forKeys:)();
  v14 = v22;

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v11, v7, v8);
  v15 = URLResourceValues.allValues.getter();
  if (*(v15 + 16) && (v16 = sub_10006E4C8(v13), (v17 & 1) != 0))
  {
    sub_100064288(*(v15 + 56) + 32 * v16, v23);
    (*(v9 + 8))(v11, v8);

    sub_10000BF3C(v23, v24);
    sub_10000BF3C(v24, v23);
    v18 = type metadata accessor for UTType();
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v4, v19 ^ 1u, 1, v18);
    return sub_10002C638(v4, v14, &unk_1019F8DB0);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1007ACDB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  sub_1007ACF8C(a1, a2, v14 - v7);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CAAC(v8, &unk_1019F33C0);
    v15 = a1;
    v16 = a2;
    v14[0] = 37;
    v14[1] = 0xE100000000000000;
    sub_100017CD8();
    if ((StringProtocol.contains<A>(_:)() & 1) != 0 && (v15 = a1, v16 = a2, v11 = StringProtocol.removingPercentEncoding.getter(), v12))
    {
      sub_1007ACF8C(v11, v12, a3);
    }

    else
    {
      return (*(v10 + 56))(a3, 1, 1, v9);
    }
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }
}

uint64_t sub_1007ACF8C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v74 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v73 = &v67[-v10];
  __chkstk_darwin(v9);
  v71 = &v67[-v11];
  v12 = sub_1005B981C(&unk_1019F33C0);
  v13 = __chkstk_darwin(v12 - 8);
  v75 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v72 = &v67[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v67[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v67[-v21];
  __chkstk_darwin(v20);
  v76 = &v67[-v23];
  v24 = type metadata accessor for CharacterSet();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v67[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = a1;
  v79 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v28 = StringProtocol.trimmingCharacters(in:)();
  v30 = v29;
  (*(v25 + 8))(v27, v24);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    (*(v6 + 56))(v77, 1, 1, v5);
  }

  v32 = v6;
  v33._countAndFlagsBits = 0x2F2F3A70747468;
  v33._object = 0xE700000000000000;
  v34 = String.hasPrefix(_:)(v33);
  v35 = objc_allocWithZone(NSDataDetector);
  v78 = 0;
  v36 = [v35 initWithTypes:32 error:&v78];
  if (!v36)
  {
    v43 = v78;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return (*(v6 + 56))(v77, 1, 1, v5);
  }

  v37 = v36;
  v68 = v34;
  v38 = v78;
  v39 = v76;
  v70 = v37;
  sub_1007AD7D0(v76);
  sub_10001ACF0(v39, v22);
  v40 = *(v32 + 48);
  v41 = v40(v22, 1, v5);
  v69 = v40;
  if (v41 == 1)
  {
    sub_10000CAAC(v22, &unk_1019F33C0);
    URL.init(string:encodingInvalidCharacters:)();
    if (v40(v19, 1, v5) == 1)
    {
      sub_10000CAAC(v19, &unk_1019F33C0);
    }

    else
    {
      v44 = v71;
      (*(v32 + 32))(v71, v19, v5);
      URL.scheme.getter();
      v46 = v45;
      (*(v32 + 8))(v44, v5);
      if (v46)
      {

LABEL_14:
        v40 = v69;
        goto LABEL_15;
      }
    }

    v78 = 0x2F2F3A7370747468;
    v79 = 0xE800000000000000;
    v47._countAndFlagsBits = v28;
    v47._object = v30;
    String.append(_:)(v47);

    v48 = v72;
    sub_1007AD7D0(v72);

    sub_10002C638(v48, v39, &unk_1019F33C0);
    goto LABEL_14;
  }

  sub_10000CAAC(v22, &unk_1019F33C0);
LABEL_15:
  if (v40(v39, 1, v5) || (v49 = v73, (*(v32 + 16))(v73, v39, v5), URL.host.getter(), v51 = v50, (*(v32 + 8))(v49, v5), !v51))
  {
  }

  v52 = String._bridgeToObjectiveC()();

  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 containsString:v53];

  if ((v54 & 1) == 0)
  {
    v58 = v75;
    sub_10001ACF0(v39, v75);
    if (v69(v58, 1, v5) == 1)
    {

      sub_10000CAAC(v58, &unk_1019F33C0);
      (*(v32 + 56))(v77, 1, 1, v5);
      v57 = v39;
      return sub_10000CAAC(v57, &unk_1019F33C0);
    }

    v59 = *(v32 + 32);
    v60 = v74;
    v59(v74, v58, v5);
    v61 = sub_1007ADDDC();
    v62 = v77;
    if (v61)
    {
      (*(v32 + 8))(v60, v5);

      v55 = *(v32 + 56);
      v56 = v62;
      goto LABEL_20;
    }

    if (!v68)
    {
      v63 = URL.scheme.getter();
      if (v64)
      {
        if (v63 == 1886680168 && v64 == 0xE400000000000000)
        {

LABEL_34:
          v66 = v74;
          sub_1007AE1C0(v62);

          (*(v32 + 8))(v66, v5);
          goto LABEL_21;
        }

        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v65)
        {
          goto LABEL_34;
        }
      }
    }

    v59(v62, v74, v5);
    (*(v32 + 56))(v62, 0, 1, v5);
    goto LABEL_21;
  }

  v55 = *(v32 + 56);
  v56 = v77;
LABEL_20:
  v55(v56, 1, 1, v5);
LABEL_21:
  v57 = v39;
  return sub_10000CAAC(v57, &unk_1019F33C0);
}

void sub_1007AD7D0(uint64_t a1@<X8>)
{
  v2 = v1;
  if ([v1 checkingTypes] == 32)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v4 crl_range];
    v7 = v6;

    v8 = String._bridgeToObjectiveC()();
    v9 = [v2 matchesInString:v8 options:0 range:{v5, v7}];

    sub_100006370(0, &qword_101A002A8);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_4:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      if ([v12 range] == v5 && v13 == v7)
      {
        v14 = [v12 URL];
        if (v14)
        {
          v15 = v14;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v16 = type metadata accessor for URL();
          v17 = *(*(v16 - 8) + 56);
          v18 = v16;
          v19 = a1;
          v20 = 0;
LABEL_19:

          v17(v19, v20, 1, v18);
          return;
        }
      }

LABEL_18:
      v45 = type metadata accessor for URL();
      v17 = *(*(v45 - 8) + 56);
      v18 = v45;
      v19 = a1;
      v20 = 1;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v21 = objc_opt_self();
  v22 = [v21 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v46);
  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = [v24 lastPathComponent];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v22;
  v31 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v31;
  v32 = sub_1005CF04C();
  *(inited + 104) = v32;
  *(inited + 72) = v23;
  *(inited + 136) = &type metadata for String;
  v33 = sub_1000053B0();
  *(inited + 112) = v26;
  *(inited + 120) = v28;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v33;
  *(inited + 152) = 293;
  v34 = v46;
  *(inited + 216) = v31;
  *(inited + 224) = v32;
  *(inited + 192) = v34;
  v35 = v23;
  v36 = v34;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v38, "NSDataDetector is misconfigured.", 32, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v39 = swift_allocObject();
  v39[2] = 8;
  v39[3] = 0;
  v39[4] = 0;
  v39[5] = 0;
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  [v21 handleFailureInFunction:v41 file:v42 lineNumber:293 isFatal:0 format:v43 args:v40];

  v44 = type metadata accessor for URL();
  (*(*(v44 - 8) + 56))(a1, 1, 1, v44);
}

uint64_t sub_1007ADDDC()
{
  v0 = sub_1005B981C(&qword_101A00298);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v26 - v4;
  v6 = sub_1005B981C(&qword_101A002A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = URL.scheme.getter();
  if (!v13)
  {
    return 0;
  }

  if (v12 != 0x7370747468 || v13 != 0xE500000000000000)
  {
    v14 = v12;
    v15 = v13;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v14 != 1886680168 || v15 != 0xE400000000000000))
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_8;
      }

      return 0;
    }
  }

LABEL_8:
  URL.host.getter();
  if (v16)
  {

    IPv4Address.init(_:)();
    v17 = type metadata accessor for IPv4Address();
    if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
    {
      sub_10000CAAC(v11, &qword_101A002A0);
      IPv6Address.init(_:)();
      v18 = type metadata accessor for IPv6Address();
      v19 = (*(*(v18 - 8) + 48))(v5, 1, v18) != 1;
      sub_10000CAAC(v5, &qword_101A00298);
      return v19;
    }

    v24 = v11;
  }

  else
  {
    URL.absoluteString.getter();

    IPv4Address.init(_:)();
    v21 = type metadata accessor for IPv4Address();
    if ((*(*(v21 - 8) + 48))(v9, 1, v21) == 1)
    {
      sub_10000CAAC(v9, &qword_101A002A0);
      IPv6Address.init(_:)();
      v22 = type metadata accessor for IPv6Address();
      v23 = (*(*(v22 - 8) + 48))(v3, 1, v22) != 1;
      sub_10000CAAC(v3, &qword_101A00298);
      return v23;
    }

    v24 = v9;
  }

  sub_10000CAAC(v24, &qword_101A002A0);
  return 1;
}

uint64_t sub_1007AE1C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = URL.scheme.getter();
  if (v11)
  {
    if (v10 == 1886680168 && v11 == 0xE400000000000000)
    {

      goto LABEL_6;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
LABEL_6:
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_10000CAAC(v5, &qword_101A00288);
        v13 = type metadata accessor for URL();
        return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        URLComponents.scheme.setter();
        URLComponents.url.getter();
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  v15 = type metadata accessor for URL();
  v18 = *(v15 - 8);
  (*(v18 + 16))(a1, v1, v15);
  v16 = *(v18 + 56);

  return v16(a1, 0, 1, v15);
}

uint64_t sub_1007AE4C0()
{
  v0 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000CAAC(v2, &qword_101A00288);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = URLComponents.scheme.getter();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = URLComponents.string.getter();
      if (v12)
      {
        v25 = v11;
        v26 = v12;
        v23 = v9;
        v24 = v10;
        v20[1] = v12;

        v13._countAndFlagsBits = 3092282;
        v13._object = 0xE300000000000000;
        String.append(_:)(v13);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_100017CD8();
        v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v16 = v15;

        v25 = v14;
        v26 = v16;
        v23 = v9;
        v24 = v10;

        v17._countAndFlagsBits = 58;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);

        v21 = 0;
        v22 = 0xE000000000000000;
        v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        (*(v4 + 8))(v6, v3);
        return v18;
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_1007AE7F0(char a1, char a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v36 - v9;
  v10 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CAAC(v12, &qword_101A00288);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  v17 = URLComponents.scheme.getter();
  if (!v18)
  {
    goto LABEL_36;
  }

  if (v17 == 0x6D726F6665657266 && v18 == 0xE800000000000000)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v21 = URLComponents.host.getter();
  if (!v22)
  {
    goto LABEL_36;
  }

  if (a1)
  {
    v23 = 0x706F436472616F62;
  }

  else
  {
    v23 = 0x6472616F62;
  }

  if (a1)
  {
    v24 = 0xE900000000000079;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  if (v21 == v23 && v22 == v24)
  {

    goto LABEL_22;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
LABEL_36:
    (*(v14 + 8))(v16, v13);
    return 0;
  }

LABEL_22:
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    goto LABEL_36;
  }

  v27 = result;
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_35:

    goto LABEL_36;
  }

  v28 = 0;
  v39 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v38 = v5 + 16;
  v29 = 25705;
  if (a2)
  {
    v29 = 0x54676E6972616873;
  }

  v42 = v29;
  if (a2)
  {
    v30 = 0xEC0000006E656B6FLL;
  }

  else
  {
    v30 = 0xE200000000000000;
  }

  v40 = (v5 + 8);
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v5 + 16))(v7, v39 + *(v5 + 72) * v28, v4);
    if (URLQueryItem.name.getter() == v42 && v31 == v30)
    {
      break;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_40;
    }

    ++v28;
    result = (*v40)(v7, v4);
    if (v37 == v28)
    {
      goto LABEL_35;
    }
  }

LABEL_40:

  v32 = v43;
  (*(v5 + 32))(v43, v7, v4);
  v33 = URLQueryItem.value.getter();
  v35 = v34;
  (*(v14 + 8))(v16, v13);
  (*(v5 + 8))(v32, v4);
  if (!v35)
  {
    return 0;
  }

  return v33;
}

uint64_t sub_1007AECEC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v29 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007AE7F0(a1, 0);
  if (v17)
  {
    v26 = v4;
    v28 = a2;
    v19 = sub_10084CD4C(v6, v16, v17);
    v21 = v20;

    (*(v27 + 32))(v9, v6, v26);
    v22 = &v9[*(v7 + 20)];
    *v22 = v19;
    v22[1] = v21;
    sub_100046168(v9, v12, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100046168(v12, v15, type metadata accessor for CRLBoardIdentifierStorage);
    v23 = v28;
    sub_100046168(v15, v28, type metadata accessor for CRLBoardIdentifier);
    return (*(v29 + 56))(v23, 0, 1, v13);
  }

  else
  {
    v18 = *(v29 + 56);

    return v18(a2, 1, 1, v13);
  }
}

uint64_t sub_1007AEFF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for UUID();
  v59 = *(v6 - 8);
  __chkstk_darwin(v6);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = sub_1005B981C(&qword_1019F69B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - v12;
  v14 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v17 = type metadata accessor for URLComponents();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CAAC(v16, &qword_101A00288);
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = URL.absoluteString.getter();
    v25 = v24;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v23;
    *(inited + 40) = v25;
    v26 = static os_log_type_t.default.getter();
    sub_100005404(v21, &_mh_execute_header, v26, "Unable to parse URL: %@", 23, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v27 = 1;
  }

  else
  {
    v54 = v5;
    v55 = v6;
    v57 = a1;
    v56 = v1;
    (*(v18 + 32))(v20, v16, v17);
    v28 = URLComponents.path.getter();
    v30 = sub_100D8BFDC(1uLL, v28, v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v62[0] = v30;
    v62[1] = v32;
    v62[2] = v34;
    v62[3] = v36;
    v60 = 47;
    v61 = 0xE100000000000000;
    sub_1007B01B8();
    sub_100017CD8();
    v37 = StringProtocol.components<A>(separatedBy:)();

    if (v37[2] == 2)
    {
      strcpy(v62, "freeform-copy");
      HIWORD(v62[1]) = -4864;
      v38 = v37[5];
      v60 = v37[4];
      v61 = v38;
      v39 = type metadata accessor for Locale();
      (*(*(v39 - 8) + 56))(v13, 1, 1, v39);

      v40 = StringProtocol.compare<A>(_:options:range:locale:)();
      sub_10000CAAC(v13, &qword_1019F69B8);

      if (v40 || !v37[2])
      {
        (*(v18 + 8))(v20, v17);
      }

      else
      {

        v49 = v54;
        UUID.init(uuidString:)();

        v50 = v59;
        v51 = v55;
        if ((*(v59 + 48))(v49, 1, v55) != 1)
        {
          (*(v50 + 32))(v10, v49, v51);
          v52 = v58;
          (*(v50 + 16))(v58, v10, v51);
          a1 = v57;
          sub_10084BD4C(v52, 0, 0xE000000000000000, v57);
          (*(v50 + 8))(v10, v51);
          (*(v18 + 8))(v20, v17);
          v27 = 0;
          goto LABEL_12;
        }

        (*(v18 + 8))(v20, v17);
        sub_10000CAAC(v49, &qword_1019F6990);
      }
    }

    else
    {

      if (qword_1019F2168 != -1)
      {
        swift_once();
      }

      v41 = static OS_os_log.crlSendACopy;
      sub_1005B981C(&qword_1019F54E0);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_10146C6B0;
      v43 = URL.absoluteString.getter();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1000053B0();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      v46 = static os_log_type_t.default.getter();
      sub_100005404(v41, &_mh_execute_header, v46, "URL was not a valid url: %@", 27, 2, v42);
      swift_setDeallocating();
      sub_100005070(v42 + 32);
      (*(v18 + 8))(v20, v17);
    }

    v27 = 1;
    a1 = v57;
  }

LABEL_12:
  v47 = type metadata accessor for CRLBoardIdentifier(0);
  return (*(*(v47 - 8) + 56))(a1, v27, 1, v47);
}

uint64_t sub_1007AF7B4()
{
  v0 = URL.scheme.getter();
  if (!v1)
  {
    return sub_1007AE7F0(0, 1);
  }

  if (v0 != 0x7370747468 || v1 != 0xE500000000000000)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      goto LABEL_6;
    }

    return sub_1007AE7F0(0, 1);
  }

LABEL_6:
  URL.path.getter();
  sub_100017CD8();
  v3 = StringProtocol.contains<A>(_:)();

  if ((v3 & 1) != 0 && (URL.lastPathComponent.getter(), v4 = String.count.getter(), , v4 >= 16))
  {
    return URL.lastPathComponent.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007AF8E4()
{
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CAAC(v10, &qword_101A00288);
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v17 = URL.absoluteString.getter();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Failed to create URLComponents from %{public}@", 46, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  v59 = v4;
  v60 = v0;
  (*(v12 + 32))(v14, v10, v11);
  v61 = URLComponents.path.getter();
  v62 = v21;
  sub_100017CD8();
  v22 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  if (*(v22 + 16) != 2)
  {
    goto LABEL_13;
  }

  v57 = v5;
  v58 = v14;

  v23 = Substring.lowercased()();

  if (v23._countAndFlagsBits == 0x6D726F6665657266 && v23._object == 0xED000079706F632DLL)
  {

    v14 = v58;
    goto LABEL_10;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = v58;
  if ((v24 & 1) == 0)
  {
LABEL_13:

    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10146C6B0;
    v29 = URL.absoluteString.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_1000053B0();
    *(v28 + 32) = v29;
    v32 = v28 + 32;
    *(v28 + 40) = v31;
    v33 = static os_log_type_t.error.getter();
    v34 = "Invalid path from universal link %{public}@";
    v35 = v27;
    v36 = 43;
    goto LABEL_20;
  }

LABEL_10:
  if (!*(v22 + 16))
  {

    goto LABEL_17;
  }

  v25 = v57;
  static String._fromSubstring(_:)();

  UUID.init(uuidString:)();

  v26 = v59;
  if ((*(v25 + 48))(v3, 1, v59) == 1)
  {
    sub_10000CAAC(v3, &qword_1019F6990);
    v14 = v58;
LABEL_17:
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10146C6B0;
    v38 = URL.absoluteString.getter();
    v40 = v39;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_1000053B0();
    *(v28 + 32) = v38;
    v32 = v28 + 32;
    *(v28 + 40) = v40;
    v33 = static os_log_type_t.error.getter();
    v34 = "Failed to get valid board uuid from %{public}@";
    v35 = v37;
    v36 = 46;
LABEL_20:
    sub_100005404(v35, &_mh_execute_header, v33, v34, v36, 2, v28);
    swift_setDeallocating();
    sub_100005070(v32);
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  (*(v25 + 32))(v7, v3, v26);
  v42 = URL.fragment(percentEncoded:)(1);
  if (v42.value._object)
  {
    countAndFlagsBits = v42.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  object = 0xE000000000000000;
  if (v42.value._object)
  {
    object = v42.value._object;
  }

  v55 = object;
  v56 = countAndFlagsBits;
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_10146C4D0;
  v46 = URL.absoluteString.getter();
  v48 = v47;
  *(v45 + 56) = &type metadata for String;
  v49 = sub_1000053B0();
  *(v45 + 64) = v49;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v50 = UUID.uuidString.getter();
  *(v45 + 96) = &type metadata for String;
  *(v45 + 104) = v49;
  *(v45 + 72) = v50;
  *(v45 + 80) = v51;
  *(v45 + 136) = &type metadata for String;
  *(v45 + 144) = v49;
  v52 = v55;
  *(v45 + 112) = v56;
  *(v45 + 120) = v52;
  v53 = static os_log_type_t.default.getter();
  sub_100005404(v54, &_mh_execute_header, v53, "Validated Send-A-Copy Universal Link: %{public}@, boardUUID: %{public}@, title: %{public}@", 90, 2, v45);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  (*(v57 + 8))(v7, v59);
  (*(v12 + 8))(v58, v11);
  return 1;
}

uint64_t sub_1007B00E4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007B0140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F8DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007B01B8()
{
  result = qword_101A00290;
  if (!qword_101A00290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A00290);
  }

  return result;
}

uint64_t sub_1007B020C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  if (a3 > 1u)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
    return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  }

  return result;
}

void *sub_1007B04C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    __chkstk_darwin(v7);
    *(&v23 - 2) = a1;
    sub_1005B981C(&qword_101A002B8);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v2)
    {
      if (qword_1019F2098 == -1)
      {
LABEL_5:
        a2 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v25 = v3;
        swift_errorRetain();
        sub_1005B981C(&unk_1019F6B40);
        v11 = String.init<A>(describing:)();
        v13 = v12;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v11;
        *(inited + 40) = v13;
        v14 = static os_log_type_t.error.getter();
        sub_100005404(a2, &_mh_execute_header, v14, "Error getting unique title: %@", 30, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        swift_willThrow();
        return a2;
      }
    }

    else
    {
      v15 = v25;
      a2 = _swiftEmptySetSingleton;
      v27 = _swiftEmptySetSingleton;
      v24 = *(v25 + 16);
      if (!v24)
      {
LABEL_18:

        return a2;
      }

      v23 = 0;
      v3 = 0;
      v16 = (v25 + 40);
      while (v3 < *(v15 + 16))
      {
        v20 = *(v16 - 1);
        v19 = *v16;
        if (*(v20 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName))
        {
          v21 = 0;
        }

        else
        {
          v21 = *(v20 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8) == 0xE000000000000000;
        }

        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          sub_1005E2B78(v20 + v17, v9);
          v18 = v19;

          sub_1005B981C(&qword_101A1A020);
          CRRegister.wrappedValue.getter();
          sub_10003D45C(v9, type metadata accessor for CRLBoardCRDTData);
          sub_100E6DE34(v26, v26[0], v26[1]);
        }

        ++v3;
        v16 += 2;
        if (v24 == v3)
        {
          a2 = v27;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  return a2;
}

uint64_t sub_1007B0838(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v7;
  }

  return result;
}

uint64_t sub_1007B0970(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = objc_opt_self();

    v6 = [v5 mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10146C6B0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000053B0();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    v11 = static String.localizedStringWithFormat(_:_:)();

    return v11;
  }

  return result;
}

uint64_t sub_1007B0B30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    if (v9 != 1)
    {
      return 0;
    }

LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

unint64_t sub_1007B0BC0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  Substring.init<A>(_:)();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  Substring.init<A>(_:)();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_100AE6694(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = String.UTF8View._foreignDistance(from:to:)();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_100AE6694(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_100AE6694(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = String.UTF8View._foreignDistance(from:to:)();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = String.UTF8View._foreignCount()();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        String.reserveCapacity(_:)(result);
LABEL_23:
        String.subscript.getter();
        sub_1007B2110();
        String.append<A>(contentsOf:)();

        String.append<A>(contentsOf:)();
        sub_100DCBC88(a2, a5, a6);
        String.append<A>(contentsOf:)();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1007B0ED4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = *a1;
  v18 = *a2;
  v17 = a2[1];
  v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v16 + v19, v15);

  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v15, type metadata accessor for CRLBoardCRDTData);
  if (v18 == v35 && v17 == v36)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_12:

      v30 = 0;
      return v30 & 1;
    }
  }

  v21 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v22 = (v37 + *(v21 + 20));
  v23 = *v22;
  v24 = v22[1];
  v25 = (v16 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  if ((*v22 != *(v16 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName) || v24 != *(v16 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1005E2B78(v16 + v19, v12);
  sub_1005B981C(&unk_1019F5250);
  v26 = v34;
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v12, type metadata accessor for CRLBoardCRDTData);
  v28 = *v25;
  v27 = v25[1];

  sub_10084BD4C(v26, v28, v27, v9);
  if (static UUID.== infix(_:_:)())
  {
    v29 = &v9[*(v21 + 20)];
    if (v23 == *v29 && v24 == *(v29 + 1))
    {

      v30 = 0;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v31 ^ 1;
    }
  }

  else
  {

    v30 = 1;
  }

  sub_10003D45C(v9, type metadata accessor for CRLBoardIdentifier);
  return v30 & 1;
}

uint64_t sub_1007B1254(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007B04C0(a5, a6);
  if (v6)
  {
    return a2;
  }

  LODWORD(v64) = a4;
  v65 = v15;
  v63 = 0;
  *&v62 = a2;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v16 crl_stringByFixingBrokenSurrogatePairs];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  aBlock = v18;
  v67 = v20;

  static CharacterSet.whitespacesAndNewlines.getter();
  v72 = sub_100017CD8();
  v21 = StringProtocol.trimmingCharacters(in:)();
  v23 = v22;
  v24 = *(v12 + 8);
  v24(v14, v11);

  while (1)
  {
    aBlock = v21;
    v67 = v23;
    static CharacterSet.newlines.getter();
    a2 = v21;
    v25 = StringProtocol.rangeOfCharacter(from:options:range:)();
    v27 = v26;
    v29 = v28;
    v24(v14, v11);

    if (v29)
    {
      break;
    }

    v21 = sub_1007B0BC0(v25, v27, 32, 0xE100000000000000, a2, v23);
    v31 = v30;

    v23 = v31;
  }

  v32 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v32 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    if (v64)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v38 = [objc_opt_self() mainBundle];
    v39 = String._bridgeToObjectiveC()();
    v40 = String._bridgeToObjectiveC()();
    v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v42;

    if (v64)
    {
LABEL_9:
      v33 = v65;
      if (sub_10079E9A8(a2, v23, v65))
      {
        v34 = String._bridgeToObjectiveC()();

        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v70 = sub_1007B20EC;
        v71 = v35;
        aBlock = _NSConcreteStackBlock;
        v67 = *"";
        v68 = sub_1007B1904;
        v69 = &unk_101886D10;
        v36 = _Block_copy(&aBlock);

        v37 = [v34 crl_stringByIncrementingCounterAfterDuplicateTitleModifierWithUniquenessTest:v36];
        _Block_release(v36);

        a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
LABEL_27:
      }

      return a2;
    }
  }

  v72 = a2;
  v43 = [objc_opt_self() mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v65;
  if (!v65[2])
  {

    return v72;
  }

  v48 = v65 + 7;

  v49 = 2;
  v62 = xmmword_10146BDE0;
  v50 = v23;
  a2 = v72;
  while (1)
  {

    Hasher.init(_seed:)();
    String.hash(into:)();
    v51 = Hasher._finalize()();
    v52 = -1 << *(v47 + 32);
    v53 = v51 & ~v52;
    if (((*(v48 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }

    v54 = ~v52;
    while (1)
    {
      v55 = (v65[6] + 16 * v53);
      v56 = *v55 == a2 && v55[1] == v50;
      if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v53 = (v53 + 1) & v54;
      if (((*(v48 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    swift_bridgeObjectRelease_n();
    sub_1005B981C(&qword_1019F54E0);
    v57 = swift_allocObject();
    *(v57 + 16) = v62;
    *(v57 + 56) = &type metadata for String;
    v58 = sub_1000053B0();
    *(v57 + 32) = v72;
    *(v57 + 40) = v23;
    *(v57 + 96) = &type metadata for Int;
    *(v57 + 104) = &protocol witness table for Int;
    *(v57 + 64) = v58;
    *(v57 + 72) = v49;

    a2 = static String.localizedStringWithFormat(_:_:)();
    v50 = v59;

    if (__OFADD__(v49++, 1))
    {
      break;
    }

    v47 = v65;
    if (!v65[2])
    {

      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B1904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  LOBYTE(v2) = v1(v2, v4);

  return v2 & 1;
}

uint64_t sub_1007B196C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v68 = a3;
  v65 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v65);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v8 - 8);
  v61 = &v57 - v9;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v67 = a2;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v16 crl_stringByFixingBrokenSurrogatePairs];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v72 = v18;
  v73 = v20;

  static CharacterSet.whitespacesAndNewlines.getter();
  v75 = sub_100017CD8();
  v21 = StringProtocol.trimmingCharacters(in:)();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v15, v12);

  while (1)
  {
    v72 = v21;
    v73 = v23;
    static CharacterSet.newlines.getter();
    v25 = StringProtocol.rangeOfCharacter(from:options:range:)();
    v27 = v26;
    v29 = v28;
    v24(v15, v12);

    if (v29)
    {
      break;
    }

    v21 = sub_1007B0BC0(v25, v27, 32, 0xE100000000000000, v21, v23);
    v31 = v30;

    v23 = v31;
  }

  v74[0] = v21;
  v74[1] = v23;
  v32 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v32 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    sub_10070C224();
    swift_allocError();
    v34 = v67;
    *v35 = v66;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
    swift_willThrow();
  }

  if (v68)
  {
    return v74[0];
  }

  v36 = v61;
  sub_1006C35A8(v62, v61);
  v45 = (*(v59 + 48))(v36, 1, v60) == 1;
  v37 = v69;
  if (!v45)
  {
    v49 = v58;
    v50 = sub_1005EB270(v36, v58);
    __chkstk_darwin(v50);
    *(&v57 - 2) = v51;
    sub_1005B981C(&qword_101A002B8);
    v52 = OS_dispatch_queue.sync<A>(execute:)();
    if (v37)
    {
      sub_10003D45C(v49, type metadata accessor for CRLBoardIdentifier);
    }

    v53 = v72;
    __chkstk_darwin(v52);
    *(&v57 - 2) = v74;
    *(&v57 - 1) = v49;
    v43 = sub_1010AA810(sub_1007B21C0, (&v57 - 4), v53);
    v44 = v54;

    sub_1007B21E0(v43, v44);
    sub_10003D45C(v49, type metadata accessor for CRLBoardIdentifier);
    if (v43)
    {
      sub_1007B2180(v43, v44);
      goto LABEL_31;
    }

    return v74[0];
  }

  v38 = sub_1006C3618(v36);
  __chkstk_darwin(v38);
  *(&v57 - 2) = v39;
  sub_1005B981C(&qword_101A002B8);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v37)
  {
  }

  v69 = 0;
  v75 = v72;
  v40 = *(v72 + 16);
  if (!v40)
  {
LABEL_33:

    return v74[0];
  }

  v41 = (v75 + 40);
  while (1)
  {
    v43 = *(v41 - 1);
    v44 = *v41;
    if (*(v43 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v43 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8) == 0xE000000000000000;
    }

    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }

    v46 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v47 = v64;
    sub_1005E2B78(v43 + v46, v64);
    v48 = v44;

    swift_retain_n();
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v47, type metadata accessor for CRLBoardCRDTData);
    if (v21 == v70 && v23 == v71)
    {
      break;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_26;
    }

LABEL_17:
    v41 += 2;
    if (!--v40)
    {
      goto LABEL_33;
    }
  }

LABEL_26:

LABEL_31:
  sub_10070C224();
  swift_allocError();
  v55 = v67;
  *v56 = v66;
  *(v56 + 8) = v55;
  *(v56 + 16) = 1;
  swift_willThrow();

  sub_1007B2180(v43, v44);
}

unint64_t sub_1007B2110()
{
  result = qword_101A002B0;
  if (!qword_101A002B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A002B0);
  }

  return result;
}

void sub_1007B2180(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1007B21E0(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2;
  }

  return result;
}

uint64_t sub_1007B2230(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

id sub_1007B2278()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1007B22D4(v0);
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1007B22D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = [*(a1 + 16) ownerName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0xE000000000000000;
  }

  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v7)
  {

LABEL_13:

    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = &selRef_sharedCloudDatabase;
    goto LABEL_15;
  }

LABEL_14:
  v10 = &selRef_privateCloudDatabase;
LABEL_15:
  v11 = [v1 *v10];

  return v11;
}

uint64_t sub_1007B23E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1007B2408, 0, 0);
}

uint64_t sub_1007B2408()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_100006370(0, &qword_1019F6E98);
  v4 = *(v1 + 16);
  v5._countAndFlagsBits = 0x5264616F6C796150;
  v5._object = 0xED000064726F6365;
  isa = CKRecordID.init(recordName:zoneID:)(v5, v4).super.isa;
  v0[7] = isa;
  sub_100006370(0, &unk_101A22DC0);
  v7 = isa;
  v8._object = 0x8000000101567C90;
  v8._countAndFlagsBits = 0xD000000000000018;
  v9 = CKRecord.init(recordType:recordID:)(v8, v7).super.isa;
  v0[8] = v9;
  sub_100024E98(v3, v2);
  CKRecordKeyValueSetting.subscript.setter();
  sub_100006370(0, &qword_101A003B0);
  sub_1005B981C(&unk_1019F4D60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101465920;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)();
  v0[9] = v12;
  [v12 setQualityOfService:25];
  [v12 setQueuePriority:8];
  v13 = sub_1007B2278();
  v0[10] = v13;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_1007B26A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x4474707972636E65, 0xEF293A5F28617461, sub_1007B33C8, v14, &type metadata for Data);
}

uint64_t sub_1007B26A0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1007B2838;
  }

  else
  {

    v3 = sub_1007B27C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007B27C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_1007B2838()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

id sub_1007B28C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1005B981C(&qword_101A003B8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  CKSerializeRecordModificationsOperation.serializeResultBlock.setter();
  return [a3 addOperation:a2];
}

uint64_t sub_1007B2A18(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A003B8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100024E98(a1, a2);
    sub_1005B981C(&qword_101A003B8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1007B2A98(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_1007B2ABC, 0, 0);
}

uint64_t sub_1007B2ABC()
{
  v1 = objc_allocWithZone(CKDeserializeRecordModificationsOperation);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithSerializedModifications:isa];
  v0[7] = v3;

  v4 = v3;
  [v4 setQualityOfService:25];
  [v4 setQueuePriority:8];

  v5 = sub_1007B2278();
  v0[8] = v5;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_1005B981C(&qword_101A00398);
  *v7 = v0;
  v7[1] = sub_1007B2C4C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x4474707972636564, 0xEF293A5F28617461, sub_1007B3344, v6, v8);
}

uint64_t sub_1007B2C4C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1007B3080;
  }

  else
  {

    v3 = sub_1007B2D70;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007B2D70()
{
  v22 = v0;
  v1 = v0[2];

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:
    v14 = v0[7];

    sub_1007B334C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_23;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  if (CKRecord.recordType.getter() == 0xD000000000000018 && 0x8000000101567C90 == v5)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x5264616F6C796150 && v11 == 0xED000064726F6365)
  {

    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_16:
    v14 = v0[7];
    sub_1007B334C();
    swift_allocError();
    v16 = 1;
    goto LABEL_17;
  }

LABEL_14:
  sub_100EE9FE4(0x64616F6C796150, 0xE700000000000000, &v21);
  v13 = *(&v21 + 1);
  v14 = v0[7];
  if (*(&v21 + 1) >> 60 == 15)
  {
    sub_1007B334C();
    swift_allocError();
    v16 = 2;
LABEL_17:
    *v15 = v16;
    swift_willThrow();

LABEL_23:
    v20 = v0[1];

    return v20();
  }

  v17 = v21;

  v18 = v0[1];

  return v18(v17, v13);
}

uint64_t sub_1007B3080()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1007B30F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1005B981C(&qword_101A003A8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  CKDeserializeRecordModificationsOperation.deserializeResultBlock.setter();
  return [a3 addOperation:a2];
}

uint64_t sub_1007B324C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A003A8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1005B981C(&qword_101A003A8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1007B32D8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1007B334C()
{
  result = qword_101A003A0;
  if (!qword_101A003A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A003A0);
  }

  return result;
}

uint64_t sub_1007B33F8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  v10 = *(sub_1005B981C(a4) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3 & 1, v11);
}

unint64_t sub_1007B34AC()
{
  result = qword_101A003C0;
  if (!qword_101A003C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A003C0);
  }

  return result;
}

Swift::Int sub_1007B3500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3650()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B377C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B386C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B39E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3B38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3C30()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3D70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3E90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B3FC8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B40EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B41FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B42F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B4434()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B4540()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B4678()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B47B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B48E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B4A04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1007B4B18()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_1007B4C34()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Textbox.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Textbox.version.unsafeMutableAddressor()
{
  if (qword_1019F1580 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Textbox.version;
}

id static TSContentLanguage.Models.Textbox.version.getter()
{
  if (qword_1019F1580 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Textbox.version;

  return v1;
}

__n128 TSContentLanguage.Models.Textbox.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 58);
  result = *(v1 + 16);
  v6 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 42) = v4;
  *(a1 + 40) = v3;
  return result;
}

__n128 TSContentLanguage.Models.Textbox.geometry.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 27);
  *(v1 + 43) = result;
  return result;
}

uint64_t TSContentLanguage.Models.Textbox.description.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TSContentLanguage.Models.Textbox.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t type metadata accessor for TSContentLanguage.Models.Textbox()
{
  result = qword_101A004E0;
  if (!qword_101A004E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TSContentLanguage.Models.Textbox.text.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TSContentLanguage.Models.Textbox() + 44);

  return sub_1007B5094(a1, v3);
}

uint64_t sub_1007B5094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.Text();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TSContentLanguage.Models.Textbox.canvasObject.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100048DB4(v1, a1, type metadata accessor for TSContentLanguage.Models.Textbox);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.Textbox.init(identifier:geometry:aspectRatioLocked:description:path:layoutStyle:paragraphStyle:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_1005BC604(v28);
  v20 = v28[7];
  *(a9 + 232) = v28[6];
  *(a9 + 248) = v20;
  *(a9 + 264) = v29[0];
  *(a9 + 278) = *(v29 + 14);
  v21 = v28[3];
  *(a9 + 168) = v28[2];
  *(a9 + 184) = v21;
  v22 = v28[5];
  *(a9 + 200) = v28[4];
  *(a9 + 216) = v22;
  v23 = v28[1];
  *(a9 + 136) = v28[0];
  *(a9 + 152) = v23;
  sub_1005BC630(__src);
  memcpy((a9 + 296), __src, 0x5C5uLL);
  *a9 = a1;
  *(a9 + 8) = a2;
  v24 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v24;
  *(a9 + 43) = *(a3 + 27);
  *(a9 + 59) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  v25 = *(a7 + 16);
  *(a9 + 80) = *a7;
  *(a9 + 96) = v25;
  *(a9 + 112) = *(a7 + 32);
  *(a9 + 128) = *(a7 + 48);
  sub_10002C638(a8, a9 + 136, &qword_101A003D0);
  sub_10002C638(a10, a9 + 296, &qword_101A003D8);
  v26 = type metadata accessor for TSContentLanguage.Models.Textbox();
  return sub_1007B5304(a11, a9 + *(v26 + 44));
}

uint64_t sub_1007B5304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.Text();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007B5368(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1954047348;
    v6 = 0x6564695F65707974;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x735F74756F79616CLL;
    if (a1 != 5)
    {
      v7 = 0x7061726761726170;
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
    v1 = 0x696669746E656469;
    v2 = 0xD000000000000013;
    v3 = 0x7470697263736564;
    if (a1 != 3)
    {
      v3 = 1752457584;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x797274656D6F6567;
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

uint64_t sub_1007B54C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1007B5368(*a1);
  v5 = v4;
  if (v3 == sub_1007B5368(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007B554C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1007B5368(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007B55B0()
{
  sub_1007B5368(*v0);
  String.hash(into:)();
}

Swift::Int sub_1007B5604()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1007B5368(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007B5664@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007CDDD0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1007B5694@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007B5368(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1007B56DC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1007CDDD0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007B5710(uint64_t a1)
{
  v2 = sub_1007C7E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007B574C(uint64_t a1)
{
  v2 = sub_1007C7E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Textbox.init(from:)(uint64_t a1)
{
  __chkstk_darwin(a1);
  v95 = v1;
  v3 = v2;
  v83 = v4;
  v5 = sub_1005B981C(&qword_101A003E0);
  __chkstk_darwin(v5 - 8);
  v86 = &v79 - v6;
  v7 = type metadata accessor for TSContentLanguage.Models.Text();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v89 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v79 - v12;
  __chkstk_darwin(v13);
  v91 = &v79 - v14;
  v15 = type metadata accessor for CodingUserInfoKey();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = sub_1005B981C(&qword_101A003F0);
  v94 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v79 - v24;
  v26 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v26);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v28 + 6) = 0;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  v28[58] = 0;
  *(v28 + 28) = 2;
  sub_1005BC604(&v117);
  v29 = v124;
  *(v28 + 232) = v123;
  *(v28 + 248) = v29;
  *(v28 + 264) = v125[0];
  v96 = v28 + 136;
  *(v28 + 278) = *(v125 + 14);
  v30 = v120;
  *(v28 + 168) = v119;
  *(v28 + 184) = v30;
  v31 = v122;
  *(v28 + 200) = v121;
  *(v28 + 216) = v31;
  v32 = v118;
  *(v28 + 136) = v117;
  *(v28 + 152) = v32;
  sub_1005BC630(v126);
  v97 = v28;
  memcpy(v28 + 296, v126, 0x5C5uLL);
  v33 = v3[3];
  v127 = v3;
  sub_100020E58(v3, v33);
  sub_1007C7E18();
  v34 = v95;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    v37 = v97;
LABEL_4:
    sub_100005070(v127);

    v38 = v96[7];
    *&v100[96] = v96[6];
    *&v100[112] = v38;
    *&v100[128] = v96[8];
    *&v100[142] = *(v96 + 142);
    v39 = v96[3];
    *&v100[32] = v96[2];
    *&v100[48] = v39;
    v40 = v96[5];
    *&v100[64] = v96[4];
    *&v100[80] = v40;
    v41 = v96[1];
    *v100 = *v96;
    *&v100[16] = v41;
    sub_10000CAAC(v100, &qword_101A003D0);
    memcpy(v114, v37 + 296, 0x5C5uLL);
    return sub_10000CAAC(v114, &qword_101A003D8);
  }

  v95 = v22;
  v81 = v26;
  v82 = v19;
  LOBYTE(v114[0]) = 8;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v97;
  if (v36)
  {
    if (v35 == 0xD000000000000027 && v36 == 0x8000000101567CB0)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v46[1] = 0;
        v46[2] = 0;
        *v46 = 0;
        swift_willThrow();
        goto LABEL_16;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v100[0] = 9;
  sub_10003EA68(&qword_101A00400, type metadata accessor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = *&v114[0];
  if (*&v114[0])
  {
    if (qword_1019F1580 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Textbox.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v44[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v45 = xmmword_101463530;
      *(v45 + 16) = 0;
      swift_willThrow();

LABEL_16:
      (*(v94 + 8))(v25, v23);
      goto LABEL_4;
    }
  }

  v47 = v127;
  sub_100020E58(v127, v127[3]);
  v48 = dispatch thunk of Decoder.userInfo.getter();
  v49 = sub_1007BC66C(0, v48, 0, 0, &qword_101A003F0);
  v51 = v50;

  *v37 = v49;
  *(v37 + 1) = v51;
  v52 = v47[3];
  v80 = v47[4];
  sub_100020E58(v47, v52);
  dispatch thunk of Decoder.userInfo.getter();
  v100[0] = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v95 = v23;

  v53 = v114[1];
  v54 = *&v114[2];
  v55 = WORD4(v114[2]) | (BYTE10(v114[2]) << 16);
  *(v37 + 1) = v114[0];
  *(v37 + 2) = v53;
  *(v37 + 6) = v54;
  *(v37 + 28) = v55;
  v37[58] = BYTE2(v55);
  v56 = v127;
  sub_100020E58(v127, v127[3]);
  v57 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v49) = sub_1007BDE30(2, v57, 0, 0, &qword_101A003F0);

  v37[59] = v49;
  sub_100020E58(v56, v56[3]);
  v58 = dispatch thunk of Decoder.userInfo.getter();
  v59 = sub_1007BC66C(3, v58, 0, 0, &qword_101A003F0);
  v61 = v60;

  *(v37 + 8) = v59;
  *(v37 + 9) = v61;
  v91 = v61;
  sub_100020E58(v56, v56[3]);
  v62 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B7BC0(4, v62, 0, 0, &qword_101A003F0, v115);

  v63 = v115[1];
  *(v37 + 5) = v115[0];
  *(v37 + 6) = v63;
  *(v37 + 7) = v115[2];
  v37[128] = v116;
  sub_100020E58(v127, v127[3]);
  v80 = dispatch thunk of Decoder.userInfo.getter();
  v104 = 5;
  sub_1007C8578();
  v79 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v100[96] = v114[6];
  *&v100[112] = v114[7];
  *&v100[128] = v114[8];
  *&v100[142] = *(&v114[8] + 14);
  *&v100[32] = v114[2];
  *&v100[48] = v114[3];
  *&v100[64] = v114[4];
  *&v100[80] = v114[5];
  *v100 = v114[0];
  *&v100[16] = v114[1];
  if (sub_1007C8634(v100) == 1)
  {

    v99[6] = v114[6];
    v99[7] = v114[7];
    v99[8] = v114[8];
    *(&v99[8] + 14) = *(&v114[8] + 14);
    v99[2] = v114[2];
    v99[3] = v114[3];
    v99[4] = v114[4];
    v99[5] = v114[5];
    v99[0] = v114[0];
    v99[1] = v114[1];
    sub_10000CAAC(v99, &qword_101A003D0);
    v111 = v123;
    v112 = v124;
    v113[0] = v125[0];
    *(v113 + 14) = *(v125 + 14);
    v107 = v119;
    v108 = v120;
    v109 = v121;
    v110 = v122;
    v105 = v117;
    v106 = v118;
  }

  else
  {

    v111 = v114[6];
    v112 = v114[7];
    v113[0] = v114[8];
    *(v113 + 14) = *(&v114[8] + 14);
    v107 = v114[2];
    v108 = v114[3];
    v109 = v114[4];
    v110 = v114[5];
    v105 = v114[0];
    v106 = v114[1];
  }

  v64 = v96;
  v65 = v96[7];
  v102[6] = v96[6];
  v102[7] = v65;
  *v103 = v96[8];
  *&v103[14] = *(v96 + 142);
  v66 = v96[3];
  v102[2] = v96[2];
  v102[3] = v66;
  v67 = v96[5];
  v102[4] = v96[4];
  v102[5] = v67;
  v68 = v96[1];
  v102[0] = *v96;
  v102[1] = v68;
  sub_10000CAAC(v102, &qword_101A003D0);
  v69 = v112;
  v64[6] = v111;
  v64[7] = v69;
  v64[8] = v113[0];
  *(v64 + 142) = *(v113 + 14);
  v70 = v108;
  v64[2] = v107;
  v64[3] = v70;
  v71 = v110;
  v64[4] = v109;
  v64[5] = v71;
  v72 = v106;
  *v64 = v105;
  v64[1] = v72;
  sub_100020E58(v127, v127[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v101 = 6;
  sub_1007C85CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v99, v100, 0x5C5uLL);
  if (sub_1007C8620(v99) == 1)
  {

    memcpy(v98, v100, 0x5C5uLL);
    sub_10000CAAC(v98, &qword_101A003D8);
    v73 = v126;
  }

  else
  {

    v73 = v100;
  }

  memcpy(v114, v73, 0x5C5uLL);
  v74 = v97;
  memcpy(v100, v97 + 296, sizeof(v100));
  sub_10000CAAC(v100, &qword_101A003D8);
  memcpy(v74 + 296, v114, 0x5C5uLL);
  sub_100020E58(v127, v127[3]);
  v75 = dispatch thunk of Decoder.userInfo.getter();
  v76 = v86;
  (*(v84 + 56))(v86, 1, 1, v85);
  v77 = v79;
  sub_1007BE0E4(7, v75, 0, 0, v76, v87);

  sub_10000CAAC(v76, &qword_101A003E0);
  (*(v94 + 8))(v77, v95);
  v78 = v97;
  sub_1007B5304(v87, &v97[*(v81 + 44)]);
  sub_100048DB4(v78, v83, type metadata accessor for TSContentLanguage.Models.Textbox);
  sub_100005070(v127);
  return sub_100048E24(v78, type metadata accessor for TSContentLanguage.Models.Textbox);
}

uint64_t sub_1007B6B94@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v31 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A009A8);
  sub_1007CF024();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    if (v33)
    {
      v39[0] = v32;
      v39[1] = v33;
      v39[2] = v34;
      v39[3] = v35;
      v39[4] = v36;
      v39[5] = v37;
      v40 = v38 & 1;
      if (a3)
      {
        v26 = v37;
        v27 = v36;
        v28 = v35;
        v29 = v34;
        result = a3(v39);
        v21 = v28;
        v20 = v29;
        v23 = v26;
        v22 = v27;
      }
    }

    goto LABEL_13;
  }

  v29 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v31;
    if (*(v31 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v39);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v32 & 1) != 0)
      {

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_13:
        v25 = v30;
        *v30 = v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v22;
        v25[5] = v23;
        *(v25 + 48) = v24;
        return result;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B6EA4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v26 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_1005B981C(&qword_101A00998);
  sub_1007CEFD0();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    if (v31)
    {
      v22 = 1;
    }

    else
    {
      v32[0] = v27;
      v32[1] = v28;
      v32[2] = v29;
      v32[3] = v30;
      if (a3)
      {
        v24 = v28;
        result = a3(v32);
        v19 = v24;
      }

      v22 = 0;
    }

    goto LABEL_16;
  }

  v24 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = v26;
  if (!*(v26 + 16) || (v16 = sub_1007C8514(v13), (v17 & 1) == 0))
  {
    (*(v11 + 8))(v13, v10);
    return swift_willThrow();
  }

  sub_100064288(*(v15 + 56) + 32 * v16, &v27);
  (*(v11 + 8))(v13, v10);
  if (!swift_dynamicCast() || (v32[0] & 1) == 0)
  {
    return swift_willThrow();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
LABEL_16:
  v23 = v25;
  *v25 = v18;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  *(v23 + 32) = v22;
  return result;
}

uint64_t sub_1007B71DC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v27 = a4;
  v28 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_1005B981C(&qword_101A00988);
  sub_1007CEF7C();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v23 = a3;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    if (v30)
    {
      v34[0] = v29;
      v34[1] = v30;
      v34[2] = v31;
      v34[3] = v32;
      v35 = v33 & 1;
      if (v23)
      {
        v26 = v31;
        result = v23(v34);
        v20 = v26;
      }
    }

    goto LABEL_13;
  }

  v26 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v28;
    if (*(v28 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v34);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v29 & 1) != 0)
      {

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_13:
        v24 = v27;
        *v27 = v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        *(v24 + 32) = v22;
        return result;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B7540(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v20 = a4;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1005B981C(&qword_101A00940);
  sub_1007CEED4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = a3;
    v19 = a2;
    a3 = v21;
    if (v22)
    {
      v25[0] = v21;
      v25[1] = v22;
      v25[2] = v23;
      v25[3] = v24;
      if (v18)
      {
        v18(v25);
      }
    }

    return a3;
  }

  v20 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (*(a2 + 16) && (v16 = sub_1007C8514(v14), (v17 & 1) != 0))
    {
      sub_100064288(*(a2 + 56) + 32 * v16, v25);
      (*(v12 + 8))(v14, v11);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    swift_willThrow();
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B7830(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v20 = a4;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1005B981C(&qword_101A00940);
  sub_1007CEE80();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = a3;
    v19 = a2;
    a3 = v21;
    if (v24)
    {
      v25[0] = v21;
      v25[1] = v22;
      v25[2] = v23;
      v25[3] = v24;
      if (v18)
      {
        v18(v25);
      }
    }

    return a3;
  }

  v20 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (*(a2 + 16) && (v16 = sub_1007C8514(v14), (v17 & 1) != 0))
    {
      sub_100064288(*(a2 + 56) + 32 * v16, v25);
      (*(v12 + 8))(v14, v11);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    swift_willThrow();
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B7BC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v31 = a6;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_1005B981C(a5);
  sub_1007CEE2C();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    if (v36)
    {
      v42[0] = v35;
      v42[1] = v36;
      v42[2] = v37;
      v42[3] = v38;
      v42[4] = v39;
      v42[5] = v40;
      v43 = v41 & 1;
      if (v32)
      {
        v28 = v38;
        v29 = v37;
        v30 = v35;
        result = v32(v42);
        v22 = v29;
        v20 = v30;
        v23 = v28;
      }
    }

    goto LABEL_13;
  }

  v33 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v34;
    if (*(v34 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v42);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v35 & 1) != 0)
      {

        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
LABEL_13:
        v27 = v31;
        *v31 = v20;
        v27[1] = v21;
        v27[2] = v22;
        v27[3] = v23;
        v27[4] = v24;
        v27[5] = v25;
        *(v27 + 48) = v26;
        return result;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B7EF8(char a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v4 = v3;
  v18 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1005B981C(&qword_101A008B8);
  sub_1007CED84();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      v21 = v19;
      if (a3)
      {
        a3(&v21);
      }
    }

    return v4;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v18;
    if (*(v18 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, &v19);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B81B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v29 = a4;
  v30 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_1005B981C(&qword_101A008B8);
  sub_1007CED30();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    if (v37)
    {
      v24 = 1;
    }

    else
    {
      v38[0] = v31;
      v38[1] = v32;
      v38[2] = v33;
      v38[3] = v34;
      v38[4] = v35;
      v38[5] = v36;
      if (a3)
      {
        v26 = v34;
        v27 = v33;
        v28 = v32;
        result = a3(v38);
        v20 = v27;
        v19 = v28;
        v21 = v26;
      }

      v24 = 0;
    }

    goto LABEL_16;
  }

  v28 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = v30;
  if (!*(v30 + 16) || (v16 = sub_1007C8514(v13), (v17 & 1) == 0))
  {
    (*(v11 + 8))(v13, v10);
    return swift_willThrow();
  }

  sub_100064288(*(v15 + 56) + 32 * v16, &v31);
  (*(v11 + 8))(v13, v10);
  if (!swift_dynamicCast() || (v38[0] & 1) == 0)
  {
    return swift_willThrow();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
LABEL_16:
  v25 = v29;
  *v29 = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  v25[4] = v22;
  v25[5] = v23;
  *(v25 + 48) = v24;
  return result;
}

uint64_t sub_1007B84E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v26 = a4;
  v27 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_1005B981C(&qword_101A008A0);
  sub_1007CECDC();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    if (v32 != 2)
    {
      v33[0] = v28;
      v33[1] = v29;
      v33[2] = v30;
      v33[3] = v31;
      v34 = v32 & 1;
      if (a3)
      {
        v24 = v30;
        v25 = v29;
        result = a3(v33);
        v20 = v24;
        v19 = v25;
      }
    }

    goto LABEL_14;
  }

  v25 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = v27;
  if (!*(v27 + 16) || (v16 = sub_1007C8514(v13), (v17 & 1) == 0))
  {
    (*(v11 + 8))(v13, v10);
    return swift_willThrow();
  }

  sub_100064288(*(v15 + 56) + 32 * v16, v33);
  (*(v11 + 8))(v13, v10);
  if (!swift_dynamicCast() || (v28 & 1) == 0)
  {
    return swift_willThrow();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 2;
LABEL_14:
  v23 = v26;
  *v26 = v18;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  *(v23 + 32) = v22;
  return result;
}

uint64_t sub_1007B881C(char a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v19 = a2;
  v6 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v13 = sub_1005B981C(&qword_101A00870);
  sub_1007CEBD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v13 = v22;
    if (v22 != 14)
    {
      v20[0] = v22;
      v21 = v23;
      if (a3)
      {
        a3(v20);
      }
    }

    return v13;
  }

  v18 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = v19;
    if (*(v19 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v20);
      (*(v10 + 8))(v12, v9);
      if (swift_dynamicCast() && (v22 & 1) != 0)
      {

        return 14;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }

    swift_willThrow();
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B8BDC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v27 = a4;
  v28 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_1005B981C(&qword_101A00848);
  sub_1007CEB80();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v23 = a3;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    if (v30)
    {
      v34[0] = v29;
      v34[1] = v30;
      v34[2] = v31;
      v34[3] = v32;
      v35 = v33;
      if (v23)
      {
        v26 = v31;
        result = v23(v34);
        v20 = v26;
      }
    }

    goto LABEL_13;
  }

  v26 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v28;
    if (*(v28 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v34);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v29 & 1) != 0)
      {

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_13:
        v24 = v27;
        *v27 = v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        *(v24 + 32) = v22;
        return result;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B8F14(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&unk_1019F4D80);
  sub_1005B981C(&qword_101A00808);
  sub_1007CEAC4(&qword_101A00828, &unk_1019F4D80);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B9200(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A00810);
  sub_1005B981C(&qword_101A00808);
  sub_1007CE1D8(&qword_101A00818, &qword_101A00810, &unk_10147C810, sub_1007CEA70);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B9520(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A00750);
  sub_1005B981C(&qword_101A00808);
  sub_1007CE1D8(&qword_101A00758, &qword_101A00750, &unk_10147C7E0, sub_1007CE65C);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007B98B8(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v21 = a4;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1005B981C(&qword_101A007D0);
  sub_1007CE9BC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v4)
  {
    v21 = 0;
    CodingUserInfoKey.init(rawValue:)();
    result = (*(v12 + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (*(a2 + 16) && (v16 = sub_1007C8514(v14), (v17 & 1) != 0))
      {
        sub_100064288(*(a2 + 56) + 32 * v16, v22);
        (*(v12 + 8))(v14, v11);
        if (swift_dynamicCast() && (v24 & 1) != 0)
        {

          return 0;
        }
      }

      else
      {
        (*(v12 + 8))(v14, v11);
      }

      return swift_willThrow();
    }
  }

  else
  {
    v20 = a2;
    result = v24;
    if (v27 != 255)
    {
      v22[0] = v24;
      v22[1] = v25;
      v22[2] = v26;
      v23 = v27;
      if (a3)
      {
        v19 = v24;
        a3(v22);
        return v19;
      }
    }
  }

  return result;
}

uint64_t sub_1007B9BE4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v26 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_1005B981C(&qword_101A007D0);
  sub_1007CE968();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    if (v31)
    {
      v22 = 1;
    }

    else
    {
      v32[0] = v27;
      v32[1] = v28;
      v32[2] = v29;
      v32[3] = v30;
      if (a3)
      {
        v24 = v28;
        result = a3(v32);
        v19 = v24;
      }

      v22 = 0;
    }

    goto LABEL_16;
  }

  v24 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = v26;
  if (!*(v26 + 16) || (v16 = sub_1007C8514(v13), (v17 & 1) == 0))
  {
    (*(v11 + 8))(v13, v10);
    return swift_willThrow();
  }

  sub_100064288(*(v15 + 56) + 32 * v16, &v27);
  (*(v11 + 8))(v13, v10);
  if (!swift_dynamicCast() || (v32[0] & 1) == 0)
  {
    return swift_willThrow();
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
LABEL_16:
  v23 = v25;
  *v25 = v18;
  v23[1] = v19;
  v23[2] = v20;
  v23[3] = v21;
  *(v23 + 32) = v22;
  return result;
}

uint64_t sub_1007BA0C0(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A00798);
  sub_1005B981C(&qword_101A00778);
  sub_1007CE1D8(&qword_101A007A0, &qword_101A00798, &unk_1014C9610, sub_1007CE7C4);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BA578@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(_OWORD *)@<X2>, _OWORD *a4@<X8>)
{
  v25 = a2;
  v24 = a4;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_1005B981C(&qword_101A00708);
  sub_1007CE588();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v28 = v33;
    v29 = v34;
    v19 = v35;
    v30 = v35;
    v27 = v32;
    v26 = v31;
    if (v35 != 255)
    {
      v36[2] = v33;
      v36[3] = v34;
      v37 = v35;
      v36[0] = v31;
      v36[1] = v32;
      if (a3)
      {
        result = a3(v36);
      }
    }

    v18 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    goto LABEL_14;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v25;
    if (*(v25 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v36);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v31 & 1) != 0)
      {

        v18 = 0uLL;
        v19 = -1;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
LABEL_14:
        v23 = v24;
        *v24 = v18;
        v23[1] = v20;
        v23[2] = v21;
        v23[3] = v22;
        *(v23 + 64) = v19;
        return result;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BA8E0(char a1, uint64_t a2, void (*a3)(int *), uint64_t a4)
{
  v20 = a4;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = v19 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v15 = sub_1005B981C(&qword_101A00708);
  sub_1007CE534();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v19[1] = a2;
    v15 = v24;
    if ((v26 & 0xFF00) != 0x300)
    {
      v21 = v24;
      v22 = v25;
      v23 = v26 & 0xFF01;
      if (a3)
      {
        a3(&v21);
      }
    }

    return v15;
  }

  v20 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (*(a2 + 16) && (v17 = sub_1007C8514(v14), (v18 & 1) != 0))
    {
      sub_100064288(*(a2 + 56) + 32 * v17, &v21);
      (*(v12 + 8))(v14, v11);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    swift_willThrow();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BABD0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, void *a4@<X8>)
{
  v28 = a4;
  v29 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1005B981C(&qword_101A00708);
  sub_1007CE4E0();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v24 = a3;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    if (v31)
    {
      v36[0] = v30;
      v36[1] = v31;
      v36[2] = v32;
      v37 = v33 & 1;
      v38 = v34;
      v39 = v35 & 1;
      if (v24)
      {
        v26 = v33;
        v27 = v32;
        result = v24(v36);
        v21 = v26;
        v20 = v27;
      }
    }

    goto LABEL_13;
  }

  v27 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v29;
    if (*(v29 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v36);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v30 & 1) != 0)
      {

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_13:
        v25 = v28;
        *v28 = v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v22;
        *(v25 + 40) = v23;
        return result;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BAEE0(char a1, uint64_t a2, void (*a3)(_DWORD *))
{
  v4 = v3;
  v19 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1005B981C(&qword_101A006F8);
  sub_1007CE48C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v4 = v21;
    if ((v21 & 0xFF00) != 0x300)
    {
      v20[0] = v21;
      if (a3)
      {
        a3(v20);
      }
    }

    return v4;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v19;
    if (*(v19 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v20);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 768;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BB340(char a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v10 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v26 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1005B981C(a5);
  a7();
  v16 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v16)
  {
    v17 = v29;
    if (v29 != 4)
    {
      v28[0] = v29;
      if (v23)
      {
        v23(v28);
      }
    }

    return v17;
  }

  CodingUserInfoKey.init(rawValue:)();
  v17 = v26;
  result = (*(v13 + 48))(v12, 1, v26);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v12, v17);
    v19 = v25;
    if (*(v25 + 16) && (v20 = sub_1007C8514(v15), (v21 & 1) != 0))
    {
      sub_100064288(*(v19 + 56) + 32 * v20, v28);
      (*(v13 + 8))(v15, v17);
      if (swift_dynamicCast() && (v29 & 1) != 0)
      {

        return 4;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v17);
    }

    swift_willThrow();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BB648(char a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = v3;
  v19 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1005B981C(&qword_101A00670);
  sub_1007CE350();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v4 = v21;
    if (v21 != 16)
    {
      v20[0] = v21;
      if (a3)
      {
        a3(v20);
      }
    }

    return v4;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v19;
    if (*(v19 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v20);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 16;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BBA48(char a1, uint64_t a2, void (*a3)(void *))
{
  v4 = v3;
  v19 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A00628);
  sub_1007CE184();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v4 = v20[0];
    if ((v22 & 1) == 0)
    {
      v23[0] = v20[0];
      v23[1] = v20[1];
      v24 = v21 & 1;
      if (a3)
      {
        a3(v23);
      }
    }

    return v4;
  }

  v18[1] = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = v19;
    if (*(v19 + 16) && (v16 = sub_1007C8514(v13), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v20);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v23[0] & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BBD28(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v19 = a4;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_1005B981C(&qword_101A00628);
  sub_1007CE130();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v18[1] = a2;
    a2 = v21;
    if (v22)
    {
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23;
      if (a3)
      {
        a3(v20);
      }
    }

    return a2;
  }

  v19 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (*(a2 + 16) && (v16 = sub_1007C8514(v14), (v17 & 1) != 0))
    {
      sub_100064288(*(a2 + 56) + 32 * v16, v20);
      (*(v12 + 8))(v14, v11);
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    swift_willThrow();
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BC034(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A00608);
  sub_1005B981C(&qword_101A00610);
  sub_1007CEAC4(&qword_101A00618, &qword_101A00608);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BC38C(char a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v10 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v26 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1005B981C(a5);
  a7();
  v16 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v16)
  {
    v17 = v29;
    if (v29 != 5)
    {
      v28[0] = v29;
      if (v23)
      {
        v23(v28);
      }
    }

    return v17;
  }

  CodingUserInfoKey.init(rawValue:)();
  v17 = v26;
  result = (*(v13 + 48))(v12, 1, v26);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v12, v17);
    v19 = v25;
    if (*(v25 + 16) && (v20 = sub_1007C8514(v15), (v21 & 1) != 0))
    {
      sub_100064288(*(v19 + 56) + 32 * v20, v28);
      (*(v13 + 8))(v15, v17);
      if (swift_dynamicCast() && (v29 & 1) != 0)
      {

        return 5;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v17);
    }

    swift_willThrow();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BC66C(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1005B981C(a5);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v7 = v25;
    if (v26)
    {
      v24[0] = v25;
      v24[1] = v26;
      if (v21)
      {
        v21(v24);
      }
    }

    return v7;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v23;
    if (*(v23 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v24);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v25 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    swift_willThrow();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BC974@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v28 = a6;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_1005B981C(a5);
  sub_1007CE070();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    if (v36 != 2)
    {
      v37[0] = v32;
      v37[1] = v33;
      v37[2] = v34;
      v37[3] = v35;
      v38 = v36 & 1;
      if (v29)
      {
        v27 = v32;
        result = v29(v37);
        v20 = v27;
      }
    }

    goto LABEL_14;
  }

  v30 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = v31;
  if (!*(v31 + 16) || (v18 = sub_1007C8514(v15), (v19 & 1) == 0))
  {
    (*(v13 + 8))(v15, v12);
    return swift_willThrow();
  }

  sub_100064288(*(v17 + 56) + 32 * v18, v37);
  (*(v13 + 8))(v15, v12);
  if (!swift_dynamicCast() || (v32 & 1) == 0)
  {
    return swift_willThrow();
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 2;
LABEL_14:
  v25 = v28;
  *v28 = v20;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  *(v25 + 32) = v24;
  return result;
}

uint64_t sub_1007BCC84(char a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v19 = a2;
  v6 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v13 = sub_1005B981C(&qword_101A005B8);
  sub_1007CE01C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v13 = v22;
    if (v22 != 6)
    {
      v20[0] = v22;
      v21 = v23;
      if (a3)
      {
        a3(v20);
      }
    }

    return v13;
  }

  v18 = 0;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = v19;
    if (*(v19 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v20);
      (*(v10 + 8))(v12, v9);
      if (swift_dynamicCast() && (v22 & 1) != 0)
      {

        return 6;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }

    swift_willThrow();
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BCF6C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v20[0] = a3;
  v20[1] = a4;
  v21 = a2;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(a5);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v7 = v22;
    if ((v23 & 1) == 0)
    {
      v24 = v22;
      if (v20[0])
      {
        (v20[0])(&v24);
      }
    }

    return v7;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v21;
    if (*(v21 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, &v22);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    swift_willThrow();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BD268(char a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v10 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v26 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  sub_1005B981C(a5);
  a7();
  v16 = v27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v16)
  {
    v17 = v29;
    if (v29 != 3)
    {
      v28[0] = v29;
      if (v23)
      {
        v23(v28);
      }
    }

    return v17;
  }

  CodingUserInfoKey.init(rawValue:)();
  v17 = v26;
  result = (*(v13 + 48))(v12, 1, v26);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v12, v17);
    v19 = v25;
    if (*(v25 + 16) && (v20 = sub_1007C8514(v15), (v21 & 1) != 0))
    {
      sub_100064288(*(v19 + 56) + 32 * v20, v28);
      (*(v13 + 8))(v15, v17);
      if (swift_dynamicCast() && (v29 & 1) != 0)
      {

        return 3;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v17);
    }

    swift_willThrow();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BD520(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v19 = a3;
  v20 = a4;
  v21 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v22 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(&qword_101A005B0);
  sub_1005B981C(&qword_101A005B8);
  sub_1007CE1D8(&qword_101A005C0, &qword_101A005B0, &unk_10147C730, sub_1007CDF74);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v5 = v24;
    if (v24)
    {
      v23[0] = v24;
      if (v19)
      {
        v19(v23);
      }
    }

    return v5;
  }

  CodingUserInfoKey.init(rawValue:)();
  v13 = v22;
  result = (*(v10 + 48))(v9, 1, v22);
  if (result != 1)
  {
    (*(v10 + 32))(v12, v9, v13);
    v15 = v21;
    if (*(v21 + 16) && (v16 = sub_1007C8514(v12), (v17 & 1) != 0))
    {
      sub_100064288(*(v15 + 56) + 32 * v16, v23);
      (*(v10 + 8))(v12, v13);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v13);
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BD840(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v20[0] = a3;
  v20[1] = a4;
  v21 = a2;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1005B981C(a5);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v7 = v22;
    if ((v23 & 1) == 0)
    {
      v24 = v22;
      if (v20[0])
      {
        (v20[0])(&v24);
      }
    }

    return v7;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v21;
    if (*(v21 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, &v22);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v24 & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    swift_willThrow();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BDB3C(char a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v27 = a7;
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v11 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CodingUserInfoKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_1005B981C(a5);
  v27();
  v18 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v18)
  {
    a8 = v29[0];
    if ((v30 & 1) == 0)
    {
      v31[0] = v29[0];
      v31[1] = v29[1];
      if (v24)
      {
        v24(v31);
      }
    }

    return a8;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v20 = v26;
    if (*(v26 + 16) && (v21 = sub_1007C8514(v17), (v22 & 1) != 0))
    {
      sub_100064288(*(v20 + 56) + 32 * v21, v29);
      (*(v15 + 8))(v17, v14);
      if (swift_dynamicCast() && (v31[0] & 1) != 0)
      {

        return 0;
      }
    }

    else
    {
      (*(v15 + 8))(v17, v14);
    }

    swift_willThrow();
    return a8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BDE30(char a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t *a5)
{
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1005B981C(a5);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
    CodingUserInfoKey.init(rawValue:)();
    result = (*(v12 + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v16 = v23;
      if (*(v23 + 16) && (v17 = sub_1007C8514(v14), (v18 & 1) != 0))
      {
        sub_100064288(*(v16 + 56) + 32 * v17, v24);
        (*(v12 + 8))(v14, v11);
        if (swift_dynamicCast() && (v25 & 1) != 0)
        {

          return 2;
        }
      }

      else
      {
        (*(v12 + 8))(v14, v11);
      }

      swift_willThrow();
      return 0;
    }
  }

  else
  {
    result = v25;
    if (v25 != 2)
    {
      v24[0] = v25 & 1;
      if (v21)
      {
        v19 = v25;
        v21(v24);
        return v19;
      }
    }
  }

  return result;
}

uint64_t sub_1007BE0E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a6;
  v68 = a5;
  v57 = a3;
  v58 = a4;
  v59 = a2;
  v8 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v8 - 8);
  v63 = v55 - v9;
  v60 = type metadata accessor for CodingUserInfoKey();
  v66 = *(v60 - 8);
  __chkstk_darwin(v60);
  v64 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A003E0);
  __chkstk_darwin(v11 - 8);
  v62 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v55 - v14;
  __chkstk_darwin(v16);
  v18 = v55 - v17;
  v19 = type metadata accessor for TSContentLanguage.Models.Text();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v65 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v55 - v23;
  v71 = a1;
  v25 = sub_1005B981C(&qword_101A003F0);
  sub_10003EA68(&qword_101A009C8, type metadata accessor for TSContentLanguage.Models.Text);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v20;
  if (v6)
  {
    v26 = v67;
  }

  else
  {
    v55[1] = v25;
    LODWORD(v56) = a1;
    v27 = *(v20 + 48);
    if (v27(v15, 1, v19) == 1)
    {
      sub_10000BE14(v68, v18, &qword_101A003E0);
      if (v27(v15, 1, v19) != 1)
      {
        sub_10000CAAC(v15, &qword_101A003E0);
      }
    }

    else
    {
      sub_1007B5304(v15, v18);
      (*(v20 + 56))(v18, 0, 1, v19);
    }

    v28 = v27(v18, 1, v19);
    v29 = v56;
    if (v28 != 1)
    {
      sub_1007B5304(v18, v24);
      v43 = v67;
      if (v57)
      {
        v57(v24);
      }

      return sub_1007B5304(v24, v43);
    }

    sub_10000CAAC(v18, &qword_101A003E0);
    v30 = sub_1007B5368(v29);
    v32 = v31;
    v33 = KeyedDecodingContainer.codingPath.getter();
    v34 = *(v33 + 16);
    if (v34)
    {
      v57 = v32;
      v58 = v30;
      v70 = _swiftEmptyArrayStorage;
      sub_100034080(0, v34, 0);
      v35 = v70;
      v56 = v33;
      v36 = v33 + 32;
      do
      {
        sub_10000630C(v36, v69);
        sub_100020E58(v69, v69[3]);
        v37 = dispatch thunk of CodingKey.stringValue.getter();
        v39 = v38;
        sub_100005070(v69);
        v70 = v35;
        v41 = v35[2];
        v40 = v35[3];
        if (v41 >= v40 >> 1)
        {
          sub_100034080((v40 > 1), v41 + 1, 1);
          v35 = v70;
        }

        v35[2] = v41 + 1;
        v42 = &v35[2 * v41];
        v42[4] = v37;
        v42[5] = v39;
        v36 += 40;
        --v34;
      }

      while (v34);

      v32 = v57;
      v30 = v58;
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v44 = v30;
    v44[1] = v32;
    v44[2] = v35;
    swift_willThrow();
    v26 = v67;
  }

  v45 = v64;
  v24 = v65;
  v47 = v62;
  v46 = v63;
  sub_10000BE14(v68, v62, &qword_101A003E0);
  v48 = (*(v61 + 48))(v47, 1, v19);
  v49 = v66;
  if (v48 == 1)
  {
    sub_10000CAAC(v47, &qword_101A003E0);
    return swift_willThrow();
  }

  sub_1007B5304(v47, v24);
  CodingUserInfoKey.init(rawValue:)();
  v50 = v60;
  result = (*(v49 + 48))(v46, 1, v60);
  if (result != 1)
  {
    (*(v49 + 32))(v45, v46, v50);
    v52 = v59;
    if (*(v59 + 16) && (v53 = sub_1007C8514(v45), (v54 & 1) != 0))
    {
      sub_100064288(*(v52 + 56) + 32 * v53, v69);
      (*(v49 + 8))(v45, v50);
      if (swift_dynamicCast() && (v70 & 1) != 0)
      {

        v43 = v26;
        return sub_1007B5304(v24, v43);
      }
    }

    else
    {
      (*(v49 + 8))(v45, v50);
    }

    sub_100048E24(v24, type metadata accessor for TSContentLanguage.Models.Text);
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BE804(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00998);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          v21 = 0xE500000000000000;
          v22 = 0x6563617073;
        }

        else
        {
          v21 = 0xE400000000000000;
          v22 = 1752457584;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BEC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v47 = a4;
  v48 = a3;
  v46 = a6;
  v10 = *a5;
  v9 = *(a5 + 8);
  v49 = a2;
  v50 = v9;
  v11 = *(a5 + 24);
  v53 = *(a5 + 16);
  v51 = v10;
  v52 = v11;
  LODWORD(v54) = *(a5 + 32);
  v12 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for CodingUserInfoKey();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_1005B981C(&qword_101A00988);
  sub_1007CE420();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v20 = v62;
    if (v62 == 255)
    {
      v20 = v54;
      if (v54 == 255)
      {
        v30 = sub_100B1D1B4(a1);
        v32 = v31;
        v33 = KeyedDecodingContainer.codingPath.getter();
        v34 = *(v33 + 16);
        if (v34)
        {
          v53 = v32;
          v54 = v30;
          v58 = _swiftEmptyArrayStorage;
          sub_100034080(0, v34, 0);
          v35 = v58;
          v36 = v33 + 32;
          do
          {
            sub_10000630C(v36, v55);
            sub_100020E58(v55, v56);
            v37 = dispatch thunk of CodingKey.stringValue.getter();
            v39 = v38;
            sub_100005070(v55);
            v58 = v35;
            v41 = v35[2];
            v40 = v35[3];
            if (v41 >= v40 >> 1)
            {
              sub_100034080((v40 > 1), v41 + 1, 1);
              v35 = v58;
            }

            v35[2] = v41 + 1;
            v42 = &v35[2 * v41];
            v42[4] = v37;
            v42[5] = v39;
            v36 += 40;
            --v34;
          }

          while (v34);

          v32 = v53;
          v30 = v54;
        }

        else
        {

          v35 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v43 = v30;
        v43[1] = v32;
        v43[2] = v35;
        swift_willThrow();
        return swift_willThrow();
      }

      v25 = v50;
      v28 = v51;
      result = sub_10067F0D8();
      v24 = v28;
      v26 = v52;
      v27 = v53;
    }

    else
    {
      v27 = v60;
      v26 = v61;
      v24 = v58;
      v25 = v59;
    }

    v55[0] = v24;
    v55[1] = v25;
    v55[2] = v27;
    v56 = v26;
    LOBYTE(v57) = v20 & 1;
    if (v48)
    {
      v44 = v27;
      v45 = v26;
      result = v48(v55);
      v27 = v44;
      v26 = v45;
    }

    goto LABEL_18;
  }

  v20 = v54;
  if (v54 == 255)
  {
    return swift_willThrow();
  }

  v48 = 0;
  sub_10067F0D8();
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    v21 = v49;
    if (*(v49 + 16) && (v22 = sub_1007C8514(v18), (v23 & 1) != 0))
    {
      sub_100064288(*(v21 + 56) + 32 * v22, v55);
      (*(v16 + 8))(v18, v15);
      if (swift_dynamicCast() && (v58 & 1) != 0)
      {

        v25 = v50;
        v24 = v51;
        v26 = v52;
        v27 = v53;
LABEL_18:
        v29 = v46;
        *v46 = v24;
        v29[1] = v25;
        v29[2] = v27;
        v29[3] = v26;
        *(v29 + 32) = v20 & 1;
        return result;
      }
    }

    else
    {
      (*(v16 + 8))(v18, v15);
    }

    sub_10000CAAC(a5, &qword_101A006E8);
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BF158(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00958);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else
        {
          v21 = 0xE400000000000000;
          if (a1)
          {
            v22 = 1702521203;
          }

          else
          {
            v22 = 1752457584;
          }
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BF5E8(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00938);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          v21 = 0xE800000000000000;
          v22 = 0x656D616E656C6966;
        }

        else
        {
          v21 = 0xEA00000000007265;
          v22 = 0x696669746E656469;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BFA90(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00930);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          v21 = 0xE800000000000000;
          v22 = 0x656D616E656C6966;
        }

        else
        {
          v21 = 0xE600000000000000;
          v22 = 0x676E69727473;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007BFF30(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v35 = a5;
  v32[0] = a3;
  v32[1] = a4;
  v33 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v36 = type metadata accessor for CodingUserInfoKey();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_1005B981C(&qword_101A008D0);
  sub_1005B981C(&qword_101A008D8);
  sub_1007CE1D8(&qword_101A008E0, &qword_101A008D0, &unk_10147C878, sub_1007CEDD8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v19 = v32[0];
    v13 = v38;
    if (!v38)
    {
      v13 = v35;
      if (!v35)
      {
        if (a1 <= 1u)
        {
          if (a1)
          {
            v20 = 0xE700000000000000;
            v21 = 0x7974696361706FLL;
          }

          else
          {
            v20 = 0xE500000000000000;
            v21 = 0x73706F7473;
          }
        }

        else if (a1 == 2)
        {
          v20 = 0xE600000000000000;
          v21 = 0x726F76616C66;
        }

        else if (a1 == 3)
        {
          v20 = 0xEF7265696669746ELL;
          v21 = 0x6564695F65707974;
        }

        else
        {
          v20 = 0xE700000000000000;
          v21 = 0x6E6F6973726576;
        }

        v22 = KeyedDecodingContainer.codingPath.getter();
        v13 = *(v22 + 16);
        if (v13)
        {
          v35 = v21;
          v36 = v20;
          v38 = _swiftEmptyArrayStorage;
          sub_100034080(0, v13, 0);
          v23 = v38;
          v24 = v22 + 32;
          do
          {
            sub_10000630C(v24, v37);
            sub_100020E58(v37, v37[3]);
            v25 = dispatch thunk of CodingKey.stringValue.getter();
            v27 = v26;
            sub_100005070(v37);
            v38 = v23;
            v29 = v23[2];
            v28 = v23[3];
            if (v29 >= v28 >> 1)
            {
              sub_100034080((v28 > 1), v29 + 1, 1);
              v23 = v38;
            }

            v23[2] = v29 + 1;
            v30 = &v23[2 * v29];
            v30[4] = v25;
            v30[5] = v27;
            v24 += 40;
            --v13;
          }

          while (v13);

          v21 = v35;
          v20 = v36;
        }

        else
        {

          v23 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v31 = v21;
        v31[1] = v20;
        v31[2] = v23;
        swift_willThrow();
        goto LABEL_16;
      }
    }

    v37[0] = v13;
    if (v19)
    {
      v19(v37);
    }

    return v13;
  }

  v12 = v36;
  v14 = v34;
  v13 = v35;
  if (!v35)
  {
LABEL_16:
    swift_willThrow();
    return v13;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v14 + 48))(v9, 1, v12);
  if (result != 1)
  {
    (*(v14 + 32))(v11, v9, v12);
    v16 = v33;
    if (*(v33 + 16) && (v17 = sub_1007C8514(v11), (v18 & 1) != 0))
    {
      sub_100064288(*(v16 + 56) + 32 * v17, v37);
      (*(v14 + 8))(v11, v12);
      if (swift_dynamicCast() && (v38 & 1) != 0)
      {

        return v13;
      }
    }

    else
    {
      (*(v14 + 8))(v11, v12);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C0420@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v45 = a4;
  v46 = a3;
  v47 = a2;
  v10 = *a5;
  v50 = *(a5 + 8);
  v51 = v10;
  v11 = *(a5 + 24);
  v49 = *(a5 + 16);
  v52 = v11;
  LODWORD(v53) = *(a5 + 32);
  v12 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for CodingUserInfoKey();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_1005B981C(&qword_101A008B0);
  sub_1007CE420();
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = a6;
  if (!v6)
  {
    v19 = v61;
    if (v61 == 255)
    {
      v19 = v53;
      if (v53 == 255)
      {
        if (a1 > 2u)
        {
          if (a1 == 3)
          {
            v30 = 0xEA0000000000726FLL;
            v31 = 0x6C6F635F746E6974;
          }

          else if (a1 == 4)
          {
            v30 = 0xEF7265696669746ELL;
            v31 = 0x6564695F65707974;
          }

          else
          {
            v30 = 0xE700000000000000;
            v31 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          if (a1 == 1)
          {
            v30 = 0xE900000000000065;
            v31 = 0x7571696E68636574;
          }

          else
          {
            v30 = 0xED0000746E656372;
            v31 = 0x65705F656C616373;
          }
        }

        else
        {
          v30 = 0xE800000000000000;
          v31 = 0x656372756F736572;
        }

        v32 = KeyedDecodingContainer.codingPath.getter();
        v33 = *(v32 + 16);
        if (v33)
        {
          v52 = v31;
          v53 = v30;
          v57 = _swiftEmptyArrayStorage;
          sub_100034080(0, v33, 0);
          v34 = v57;
          v35 = v32 + 32;
          do
          {
            sub_10000630C(v35, v54);
            sub_100020E58(v54, v55);
            v36 = dispatch thunk of CodingKey.stringValue.getter();
            v38 = v37;
            sub_100005070(v54);
            v57 = v34;
            v40 = v34[2];
            v39 = v34[3];
            if (v40 >= v39 >> 1)
            {
              sub_100034080((v39 > 1), v40 + 1, 1);
              v34 = v57;
            }

            v34[2] = v40 + 1;
            v41 = &v34[2 * v40];
            v41[4] = v36;
            v41[5] = v38;
            v35 += 40;
            --v33;
          }

          while (v33);

          v31 = v52;
          v30 = v53;
        }

        else
        {

          v34 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v42 = v31;
        v42[1] = v30;
        v42[2] = v34;
        swift_willThrow();
        return swift_willThrow();
      }

      v25 = v50;
      v28 = v51;
      v26 = v49;
      result = sub_10067F0D8();
      v24 = v28;
      v27 = v52;
    }

    else
    {
      v26 = v59;
      v27 = v60;
      v24 = v57;
      v25 = v58;
    }

    v54[0] = v24;
    v54[1] = v25;
    v54[2] = v26;
    v55 = v27;
    LOBYTE(v56) = v19 & 1;
    if (v46)
    {
      v43 = v27;
      result = v46(v54);
      v27 = v43;
    }

    goto LABEL_18;
  }

  v19 = v53;
  if (v53 == 255)
  {
    return swift_willThrow();
  }

  v46 = 0;
  sub_10067F0D8();
  CodingUserInfoKey.init(rawValue:)();
  v20 = v48;
  result = (*(v48 + 48))(v14, 1, v15);
  if (result != 1)
  {
    (*(v20 + 32))(v17, v14, v15);
    v21 = v47;
    if (*(v47 + 16) && (v22 = sub_1007C8514(v17), (v23 & 1) != 0))
    {
      sub_100064288(*(v21 + 56) + 32 * v22, v54);
      (*(v20 + 8))(v17, v15);
      if (swift_dynamicCast() && (v57 & 1) != 0)
      {

        v25 = v50;
        v24 = v51;
        v26 = v49;
        v27 = v52;
LABEL_18:
        v29 = v44;
        *v44 = v24;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
        *(v29 + 32) = v19 & 1;
        return result;
      }
    }

    else
    {
      (*(v20 + 8))(v17, v15);
    }

    sub_10000CAAC(a5, &qword_101A006E8);
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C09C0(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v33 = a2;
  v34 = a5;
  v32[0] = a3;
  v32[1] = a4;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_1005B981C(&qword_101A00880);
  sub_1005B981C(&qword_101A00888);
  sub_1007CEC28();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v19 = v32[0];
    v14 = v36;
    if (v36)
    {
      v35[0] = v36;
      if (!v32[0])
      {
        return v14;
      }
    }

    else
    {
      v14 = v34;
      if (!v34)
      {
        if (a1 <= 2u)
        {
          if (a1)
          {
            if (a1 == 1)
            {
              v20 = 0xE800000000000000;
              v21 = 0x797274656D6F6567;
            }

            else
            {
              v20 = 0x8000000101551A00;
              v21 = 0xD000000000000013;
            }
          }

          else
          {
            v20 = 0xEA00000000007265;
            v21 = 0x696669746E656469;
          }
        }

        else if (a1 > 4u)
        {
          if (a1 == 5)
          {
            v20 = 0xEF7265696669746ELL;
            v21 = 0x6564695F65707974;
          }

          else
          {
            v20 = 0xE700000000000000;
            v21 = 0x6E6F6973726576;
          }
        }

        else if (a1 == 3)
        {
          v20 = 0xEB000000006E6F69;
          v21 = 0x7470697263736564;
        }

        else
        {
          v20 = 0xE800000000000000;
          v21 = 0x6E6572646C696863;
        }

        v22 = KeyedDecodingContainer.codingPath.getter();
        v14 = *(v22 + 16);
        if (v14)
        {
          v33 = v21;
          v34 = v20;
          v36 = _swiftEmptyArrayStorage;
          sub_100034080(0, v14, 0);
          v23 = v36;
          v24 = v22 + 32;
          do
          {
            sub_10000630C(v24, v35);
            sub_100020E58(v35, v35[3]);
            v25 = dispatch thunk of CodingKey.stringValue.getter();
            v27 = v26;
            sub_100005070(v35);
            v36 = v23;
            v29 = v23[2];
            v28 = v23[3];
            if (v29 >= v28 >> 1)
            {
              sub_100034080((v28 > 1), v29 + 1, 1);
              v23 = v36;
            }

            v23[2] = v29 + 1;
            v30 = &v23[2 * v29];
            v30[4] = v25;
            v30[5] = v27;
            v24 += 40;
            --v14;
          }

          while (v14);

          v21 = v33;
          v20 = v34;
        }

        else
        {

          v23 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v31 = v21;
        v31[1] = v20;
        v31[2] = v23;
        swift_willThrow();
        goto LABEL_14;
      }

      v35[0] = v14;
      if (!v19)
      {
        return v14;
      }
    }

    v19(v35);
    return v14;
  }

  v14 = v34;
  if (!v34)
  {
LABEL_14:
    swift_willThrow();
    return v14;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = v33;
    if (*(v33 + 16) && (v17 = sub_1007C8514(v13), (v18 & 1) != 0))
    {
      sub_100064288(*(v16 + 56) + 32 * v17, v35);
      (*(v11 + 8))(v13, v10);
      if (swift_dynamicCast() && (v36 & 1) != 0)
      {

        return v14;
      }
    }

    else
    {
      (*(v11 + 8))(v13, v10);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C0ED4(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00840);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          v21 = 0xE600000000000000;
          v22 = 0x74656E67616DLL;
        }

        else
        {
          v21 = 0xE900000000000064;
          v22 = 0x695F7463656A626FLL;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C1378(int64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, int64_t a5, unint64_t a6)
{
  v36 = a2;
  v37 = a6;
  v34 = a5;
  v35 = a4;
  v9 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A007F0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v6)
  {
    v33 = a3;
    v20 = v40;
    if (v40)
    {
      a1 = v39;
    }

    else
    {
      v20 = v37;
      if (!v37)
      {
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v21 = 0xEF7265696669746ELL;
            v22 = 0x6564695F65707974;
          }

          else
          {
            v21 = 0xE700000000000000;
            v22 = 0x6E6F6973726576;
          }
        }

        else if (a1)
        {
          v21 = 0xE500000000000000;
          v22 = 0x656C797473;
        }

        else
        {
          v21 = 0xE600000000000000;
          v22 = 0x676E69727473;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        a1 = *(v23 + 16);
        if (a1)
        {
          v36 = v22;
          v37 = v21;
          v39 = _swiftEmptyArrayStorage;
          sub_100034080(0, a1, 0);
          v24 = v39;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v38);
            sub_100020E58(v38, v38[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v38);
            v39 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v39;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --a1;
          }

          while (a1);

          v22 = v36;
          v21 = v37;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_13;
      }

      a1 = v34;
    }

    v38[0] = a1;
    v38[1] = v20;
    if (v33)
    {
      v33(v38);
    }

    return a1;
  }

  if (!v37)
  {
LABEL_13:
    swift_willThrow();
    return a1;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v15), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v38);
      (*(v13 + 8))(v15, v12);
      if (swift_dynamicCast() && (v39 & 1) != 0)
      {

        return v34;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007C1814(unsigned __int8 a1, uint64_t a2, void (*a3)(void *), uint64_t a4, unint64_t a5)
{
  v38 = a5;
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v7 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for CodingUserInfoKey();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_1005B981C(&qword_101A00750);
  sub_1005B981C(&qword_101A00740);
  sub_1007CE1D8(&qword_101A00758, &qword_101A00750, &unk_10147C7E0, sub_1007CE65C);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v20 = v34;
    v14 = v40;
    if (v40)
    {
      v39[0] = v40;
      if (!v34)
      {
        return v14;
      }
    }

    else
    {
      v14 = v38;
      if (!v38)
      {
        if (a1 <= 3u)
        {
          if (a1 > 1u)
          {
            if (a1 == 2)
            {
              v21 = 0xEA00000000007472;
              v22 = 0x6174735F7473696CLL;
            }

            else
            {
              v21 = 0xEA00000000006C65;
              v22 = 0x76656C5F7473696CLL;
            }
          }

          else if (a1)
          {
            v22 = 0x7974735F7473696CLL;
            v21 = 0xEA0000000000656CLL;
          }

          else
          {
            v21 = 0xE500000000000000;
            v22 = 0x656C797473;
          }
        }

        else if (a1 <= 5u)
        {
          if (a1 == 4)
          {
            v21 = 0x80000001015525A0;
            v22 = 0xD000000000000011;
          }

          else
          {
            v21 = 0xE400000000000000;
            v22 = 1936618866;
          }
        }

        else if (a1 == 6)
        {
          v21 = 0xEA00000000006570;
          v22 = 0x79745F6B61657262;
        }

        else if (a1 == 7)
        {
          v21 = 0xEF7265696669746ELL;
          v22 = 0x6564695F65707974;
        }

        else
        {
          v21 = 0xE700000000000000;
          v22 = 0x6E6F6973726576;
        }

        v23 = KeyedDecodingContainer.codingPath.getter();
        v14 = *(v23 + 16);
        if (v14)
        {
          v37 = v22;
          v38 = v21;
          v40 = _swiftEmptyArrayStorage;
          sub_100034080(0, v14, 0);
          v24 = v40;
          v25 = v23 + 32;
          do
          {
            sub_10000630C(v25, v39);
            sub_100020E58(v39, v39[3]);
            v26 = dispatch thunk of CodingKey.stringValue.getter();
            v28 = v27;
            sub_100005070(v39);
            v40 = v24;
            v30 = v24[2];
            v29 = v24[3];
            if (v30 >= v29 >> 1)
            {
              sub_100034080((v29 > 1), v30 + 1, 1);
              v24 = v40;
            }

            v24[2] = v30 + 1;
            v31 = &v24[2 * v30];
            v31[4] = v26;
            v31[5] = v28;
            v25 += 40;
            --v14;
          }

          while (v14);

          v22 = v37;
          v21 = v38;
        }

        else
        {

          v24 = _swiftEmptyArrayStorage;
        }

        sub_1007CDECC();
        swift_allocError();
        *v32 = v22;
        v32[1] = v21;
        v32[2] = v24;
        swift_willThrow();
        goto LABEL_14;
      }

      v39[0] = v14;
      if (!v20)
      {
        return v14;
      }
    }

    v20(v39);
    return v14;
  }

  v13 = v10;
  v15 = v37;
  v14 = v38;
  if (!v38)
  {
LABEL_14:
    swift_willThrow();
    return v14;
  }

  CodingUserInfoKey.init(rawValue:)();
  result = (*(v15 + 48))(v9, 1, v13);
  if (result != 1)
  {
    (*(v15 + 32))(v12, v9, v13);
    v17 = v36;
    if (*(v36 + 16) && (v18 = sub_1007C8514(v12), (v19 & 1) != 0))
    {
      sub_100064288(*(v17 + 56) + 32 * v18, v39);
      (*(v15 + 8))(v12, v13);
      if (swift_dynamicCast() && (v40 & 1) != 0)
      {

        return v14;
      }
    }

    else
    {
      (*(v15 + 8))(v12, v13);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}