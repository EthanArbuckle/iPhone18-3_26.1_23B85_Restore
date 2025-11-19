void sub_100002590()
{
  v0 = -[NSURL pathExtension]([+[NSBundle mainBundle](NSBundle bundleURL], "pathExtension");
  if (v0 && [(NSString *)v0 isEqualToString:@"app"])
  {
    swift_getTypeByMangledNameInContext();

    objc_setHook_getImageName(sub_100002614, &off_100211AE0);
  }
}

uint64_t sub_100002614(unint64_t a1, char **a2)
{
  if ((atomic_load_explicit(qword_100211B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_100211B10))
  {
    sub_10000286C();
    __cxa_atexit(sub_10000293C, &xmmword_100211AE8, &dword_100000000);
    __cxa_guard_release(qword_100211B10);
  }

  if (!*(&xmmword_100211AE8 + 1))
  {
    goto LABEL_18;
  }

  v4 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = vcnt_s8(*(&xmmword_100211AE8 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *(&xmmword_100211AE8 + 1))
    {
      v8 = v6 % *(&xmmword_100211AE8 + 1);
    }
  }

  else
  {
    v8 = (*(&xmmword_100211AE8 + 1) - 1) & v6;
  }

  v9 = *(xmmword_100211AE8 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    v12 = off_100211AE0;

    return v12(a1, a2);
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v6)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *(&xmmword_100211AE8 + 1))
      {
        v11 %= *(&xmmword_100211AE8 + 1);
      }
    }

    else
    {
      v11 &= *(&xmmword_100211AE8 + 1) - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_11:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a1)
  {
    goto LABEL_11;
  }

  v14 = *(*(v10[3] + 8) + 8);
  if (v14)
  {
    *a2 = v14;
  }

  else
  {
    v15 = strdup(-[NSString fileSystemRepresentation]([+[NSURL URLWithString:relativeToURL:](NSURL path:+[NSString stringWithFormat:](NSString]);
    *(*(v10[3] + 8) + 8) = v15;
    *a2 = v15;
  }

  return 1;
}

void sub_10000286C()
{
  xmmword_100211AE8 = 0u;
  unk_100211AF8 = 0u;
  dword_100211B08 = 1065353216;
  sub_100002988(&xmmword_100211AE8, dword_100211AD0);
  if (dword_100211AD0)
  {
    v0 = 0;
    do
    {
      v1 = &off_1002114E0 + 2 * v0;
      sub_100002BFC(&xmmword_100211AE8, v1, &unk_100199280, &v1)[3] = v1;
      ++v0;
    }

    while (v0 != dword_100211AD0);
  }
}

uint64_t sub_10000293C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_100002988(uint64_t a1, unint64_t a2)
{
  prime = vcvtps_u32_f32(a2 / *(a1 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v3 = a1;
    prime = std::__next_prime(prime);
    a1 = v3;
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v8 = a1;
      v9 = prime;
      v10 = std::__next_prime(v5);
      prime = v9;
      v5 = v10;
      a1 = v8;
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100002A98(a1, prime);
    }
  }
}

void sub_100002A98(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      sub_100002BEC();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 16;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_19;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_19:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void *sub_100002BFC(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }
    }

    else
    {
      v4 = v9 & (v10 - 1);
    }

    v12 = *(*a1 + 8 * v4);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v9)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v14 >= v10)
            {
              v14 %= v10;
            }
          }

          else
          {
            v14 &= v10 - 1;
          }

          if (v14 != v4)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v9;
  i[2] = **a4;
  i[3] = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v10 || (v16 * v10) < v15)
  {
    v17 = 1;
    if (v10 >= 3)
    {
      v17 = (v10 & (v10 - 1)) != 0;
    }

    v18 = v17 | (2 * v10);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v10 = *(a1 + 8);
    }

    if (prime > v10)
    {
      goto LABEL_30;
    }

    if (prime < v10)
    {
      v21 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v10 < 3 || (v22 = vcnt_s8(v10), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
      {
        v21 = std::__next_prime(v21);
      }

      else
      {
        v23 = 1 << -__clz(v21 - 1);
        if (v21 >= 2)
        {
          v21 = v23;
        }
      }

      if (prime <= v21)
      {
        prime = v21;
      }

      if (prime < v10)
      {
LABEL_30:
        sub_100002A98(a1, prime);
      }
    }

    v10 = *(a1 + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v4 = v9 % v10;
      }

      else
      {
        v4 = v9;
      }
    }

    else
    {
      v4 = (v10 - 1) & v9;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 8 * v4);
  if (v25)
  {
    *i = *v25;
LABEL_55:
    *v25 = i;
    goto LABEL_56;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v24 + 8 * v4) = a1 + 16;
  if (*i)
  {
    v26 = *(*i + 8);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v26 >= v10)
      {
        v26 %= v10;
      }
    }

    else
    {
      v26 &= v10 - 1;
    }

    v25 = (*a1 + 8 * v26);
    goto LABEL_55;
  }

LABEL_56:
  ++*(a1 + 24);
  return i;
}

void sub_100002F44(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x100002F20);
}

uint64_t sub_100002F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = sub_100005804(&qword_1002064B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = v13;
  (*(v5 + 32))(v12 + v11, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v22 = v13;
  v23 = v3;
  sub_100005804(&qword_1002064A0);
  sub_100007888(&qword_1002064A8, &qword_1002064A0);
  Button.init(action:label:)();
  if (*(v3 + *(a1 + 36)))
  {
    v14 = *(v3 + 8) ^ 1;
  }

  else
  {
    v14 = 1;
  }

  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14 & 1;
  v17 = v21;
  (*(v8 + 32))(v21, v10, v7);
  result = sub_100005804(&qword_1002064B0);
  v19 = (v17 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_100007928;
  v19[2] = v16;
  return result;
}

uint64_t sub_100003228(void *a1, uint64_t a2)
{
  v23[1] = a2;
  v24 = a1;
  v2 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v2 - 8);
  v23[0] = v23 - v3;
  v4 = sub_100005804(&qword_1002064C0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for PreviewActionSpec(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreviewTelemetryAction();
  Description = v11[-1].Description;
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v23[2] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for MenuActionItem();
  v16 = (v24 + *(v15 + 36));
  if (*v16)
  {
    (*v16)(*v24);
  }

  sub_10015C110(v10);
  sub_100164588(v6);
  (*(v8 + 8))(v10, v7);
  if ((Description[6])(v6, 1, v11) == 1)
  {
    sub_100007710(v6, &qword_1002064C0);
  }

  else
  {
    Description[4](v14, v6, v11);
    type metadata accessor for PreviewTelemetryLogger();
    v17 = *(v15 + 32);
    v18 = type metadata accessor for UTType();
    v19 = *(v18 - 8);
    v20 = v24 + v17;
    v21 = v23[0];
    (*(v19 + 16))(v23[0], v20, v18);
    (*(v19 + 56))(v21, 0, 1, v18);
    sub_100143D70(v14, v21);
    sub_100007710(v21, &qword_10020A0C0);
    (Description[1])(v14, v11);
  }
}

uint64_t sub_1000035F8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  Label.init(title:icon:)();
}

uint64_t sub_10000372C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreviewActionSpec(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v8);
  sub_1001647EC(v4);
  (*(v6 + 8))(v8, v5);
  v9 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1000038EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewActionSpec(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v5);
  sub_100164878();
  (*(v3 + 8))(v5, v2);
  v6 = Image.init(_internalSystemName:)();

  *a1 = v6;
  return result;
}

uint64_t sub_100003A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v12 = HIBYTE(a4) & 1;
  v13 = (a4 & 0x100) == 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = v7 & 1;
  *(v14 + 49) = v12;

  sub_100005804(&qword_1002064A0);
  sub_100007888(&qword_1002064A8, &qword_1002064A0);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  result = sub_100005804(&qword_1002064B0);
  v18 = (a6 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_1000072E4;
  v18[2] = v16;
  return result;
}

uint64_t sub_100003C1C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  j___s7SwiftUI7BindingV12wrappedValuexvs();
}

uint64_t sub_100003D38()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  Label.init(title:icon:)();
}

uint64_t sub_100003EA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a2;
  v6 = type metadata accessor for PreviewActionSpec(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v10 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v9);
  v25 = a1;
  v26 = v23;
  v27 = v22 & 1;
  sub_100005804(&unk_100209B50);
  j___s7SwiftUI7BindingV12wrappedValuexvg();
  sub_100164A44(v24, v12);
  (*(v7 + 8))(v9, v6);
  v13 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  *a4 = v13;
  *(a4 + 8) = v15;
  *(a4 + 16) = v17 & 1;
  *(a4 + 24) = v19;
  return result;
}

uint64_t sub_1000040B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewActionSpec(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015C110(v5);
  sub_100164878();
  (*(v3 + 8))(v5, v2);
  v6 = Image.init(_internalSystemName:)();

  *a1 = v6;
  return result;
}

uint64_t sub_100004214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100003A78(*v2, *(v2 + 8), *(v2 + 16), v3 | *(v2 + 24), *(a1 + 16), a2);
}

uint64_t sub_100004240(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for MenuPlaceholderItem() + 24));
  if (v2)
  {
    v2();
  }
}

uint64_t sub_1000042FC()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  Label.init(title:icon:)();
}

uint64_t sub_10000442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_100004588@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MenuPlaceholderItem();

  v2 = Image.init(_internalSystemName:)();

  *a1 = v2;
  return result;
}

uint64_t sub_10000464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_100007334(v2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10000749C(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v14 = v2;
  sub_100005804(&qword_1002064A0);
  sub_100007888(&qword_1002064A8, &qword_1002064A0);
  Button.init(action:label:)();
  LOBYTE(v5) = *(v2 + *(v4 + 32)) == 0;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  result = sub_100005804(&qword_1002064B0);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = sub_100007928;
  v12[2] = v10;
  return result;
}

uint64_t sub_100004830()
{
  if (sub_100191D74(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return j___s7SwiftUI15ModifiedContentVMa();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    j___s7SwiftUI15ModifiedContentVMa();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return j___s7SwiftUI15ModifiedContentVMa();
  }
}

uint64_t sub_100004994()
{
  if (sub_100191D74(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    j___s7SwiftUI15ModifiedContentVMa();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    j___s7SwiftUI15ModifiedContentVMa();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    j___s7SwiftUI15ModifiedContentVMa();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100004B94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TagTraitWritingModifier();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  (*(v8 + 32))(v15, v10, a4);
  v15[*(v11 + 36)] = a2;
  j___s7SwiftUI4ViewPAAE8modifieryAA15ModifiedContentVyxqd__Gqd__lF();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100004D84()
{
  sub_100005804(&qword_1002060C8);
  sub_10000585C();
  return EntityProperty<>.init()();
}

void *sub_100004E24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004E54(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004ECC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004F4C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004F94(uint64_t a1)
{
  v2 = sub_100005B94(&qword_1002061B0, type metadata accessor for CreationIntent);
  v3 = sub_100005B94(&qword_1002061B8, type metadata accessor for CreationIntent);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005054@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005080(uint64_t a1)
{
  v2 = sub_100005B94(&qword_1002062C8, type metadata accessor for PDFDocumentWriteOption);
  v3 = sub_100005B94(&qword_1002062D0, type metadata accessor for PDFDocumentWriteOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000513C(uint64_t a1)
{
  v2 = sub_100005B94(&qword_1002062B0, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100005B94(&qword_1002062B8, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000051F8(uint64_t a1)
{
  v2 = sub_100005B94(&qword_1002062D8, type metadata accessor for ActivityType);
  v3 = sub_100005B94(&qword_1002062E0, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000052B4(uint64_t a1)
{
  v2 = sub_100005B94(&qword_1002062E8, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100005B94(&qword_1002062F0, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005370@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000053B8(uint64_t a1)
{
  v2 = sub_100005B94(&unk_10020A0E0, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100005B94(&qword_1002062C0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100005474()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000054B0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100005504()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100005578()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_100005600(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002061E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005804(&qword_1002061F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100006600(v9, v5, &qword_1002061E8);
      result = sub_10008BD28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FileEntityIdentifier();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 56 * v13;
      v17 = *v8;
      v18 = *(v8 + 1);
      v19 = *(v8 + 2);
      *(v16 + 48) = *(v8 + 6);
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *v16 = v17;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005804(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000584C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000585C()
{
  result = qword_1002060D0;
  if (!qword_1002060D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002060D0);
  }

  return result;
}

uint64_t sub_1000059D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005A1C()
{
  result = qword_100206100;
  if (!qword_100206100)
  {
    sub_1000059D4(&qword_1002060F8);
    sub_100005B94(&qword_100206108, type metadata accessor for DocumentShareSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100206100);
  }

  return result;
}

unint64_t sub_100005AD8()
{
  result = qword_100206130;
  if (!qword_100206130)
  {
    sub_1000059D4(&qword_100206128);
    sub_100005B94(&qword_100206138, type metadata accessor for GoToPopoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100206130);
  }

  return result;
}

uint64_t sub_100005B94(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100005BDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005C00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005C20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_100005D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_1002061C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006600(v4, &v11, &qword_1002061C8);
      v5 = v11;
      result = sub_10008D02C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000065F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005E98(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002061D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005804(&qword_1002061E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100006600(v9, v5, &qword_1002061D8);
      v11 = *v5;
      result = sub_10008BDC4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_1002061D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_10008BE60(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100006170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_1002061A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006600(v4, v13, &qword_1002061A8);
      result = sub_10008BECC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000065F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000062AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_100206190);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006600(v4, &v11, &qword_100206198);
      v5 = v11;
      result = sub_10008D02C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000065F0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000063D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_1002062A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10008D02C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000064C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005804(&qword_100206180);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006600(v4, &v13, &qword_100206188);
      v5 = v13;
      v6 = v14;
      result = sub_10008BFA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000065F0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000065F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006600(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005804(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000066F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100006B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100006C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MenuPlaceholderItem()
{
  result = qword_100206350;
  if (!qword_100206350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006D68()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    sub_100006DF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100006DF4()
{
  if (!qword_100206360)
  {
    sub_1000059D4(&unk_100206368);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100206360);
    }
  }
}

uint64_t sub_100006E58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100006EA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100006EB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100006EFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100006F60()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v1 <= 0x3F)
    {
      sub_100006DF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000701C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UTType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000070DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UTType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000723C()
{

  return swift_deallocObject();
}

uint64_t sub_1000072EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100003EA8(*(v1 + 32), *(v1 + 40), v2 | *(v1 + 48), a1);
}

uint64_t sub_100007334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuPlaceholderItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007398()
{
  v1 = (type metadata accessor for MenuPlaceholderItem() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for LocalizedStringResource();
  (*(*(v3 - 8) + 8))(v2, v3);

  if (*(v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10000749C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuPlaceholderItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007500()
{
  v1 = *(type metadata accessor for MenuPlaceholderItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100004240(v2);
}

uint64_t sub_100007578()
{
  v1 = (type metadata accessor for MenuActionItem() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  if (*(v2 + v1[11]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100007684()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MenuActionItem() - 8);
  v3 = (v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));

  return sub_100003228(v3, v1);
}

uint64_t sub_100007710(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100005804(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000077A4()
{
  result = qword_1002064C8;
  if (!qword_1002064C8)
  {
    sub_1000059D4(&qword_1002064B0);
    sub_100007888(&qword_1002064D0, &qword_1002064B8);
    sub_100007888(&qword_1002064D8, &qword_1002064E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002064C8);
  }

  return result;
}

uint64_t sub_100007888(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000059D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000792C()
{
  v3[4] = sub_100007C64;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100007C68;
  v3[3] = &unk_1001EED28;
  v1 = j___Block_copy(v3);

  [v0 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v1];
  j___Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100007A18(unint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {

LABEL_18:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v8 = v7;
      v9 = v5;
      [v8 action];
      LOBYTE(v8) = static Selector.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_7:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return &_swiftEmptyArrayStorage;
}

Class sub_100007C68(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000085D8(0, &qword_1002064F8);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_100007D00()
{
  v1 = sub_100005804(&unk_100209F80);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for OpenWindowAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Preview11AppDelegate_createNewDocumentOpenWindowFallback;
  swift_beginAccess();
  sub_100006600(v0 + v8, v3, &unk_100209F80);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100007710(v3, &unk_100209F80);
  }

  (*(v5 + 32))(v7, v3, v4);
  type metadata accessor for NewDocumentAction(0);
  v10 = sub_10015DA98();
  sub_10005D46C(v10, v7);

  return (*(v5 + 8))(v7, v4);
}

id sub_100007FD8(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    if (*&v2[OBJC_IVAR____TtC7Preview11AppDelegate_menuViewModel])
    {

      v5 = sub_100163A68();

      return (v5 & 1);
    }

    return 0;
  }

  else
  {
    sub_100006600(a2, v16, &qword_100206500);
    v7 = v17;
    if (v17)
    {
      v8 = sub_100008638(v16, v17);
      v9 = *(v7 - 8);
      __chkstk_darwin(v8);
      v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v11);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v11, v7);
      sub_10000867C(v16);
    }

    else
    {
      v12 = 0;
    }

    v14 = type metadata accessor for AppDelegate(0);
    v15.receiver = v2;
    v15.super_class = v14;
    v13 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v12);
    swift_unknownObjectRelease();
  }

  return v13;
}

uint64_t sub_1000082A4()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v18 - v5;
  v7 = type metadata accessor for PreviewActionSpec(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewAction(0);
  sub_10015DA98();
  sub_10015C110(v10);

  sub_1000085D8(0, &qword_1002064E8);
  sub_1001647EC(v6);
  (*(v1 + 16))(v3, v6, v0);
  String.init(localized:)();
  (*(v1 + 8))(v6, v0);
  sub_100164878();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() systemImageNamed:v11];

  v19 = 0u;
  v20 = 0u;
  v13 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100005804(&qword_1002064F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10019A160;
  *(v14 + 32) = v13;
  sub_1000085D8(0, &qword_1002064F8);
  v15 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18[1] insertElements:isa atStartOfMenuForIdentifier:UIMenuNewItem];

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000085D8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100008638(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000867C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000086C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B6361745376616ELL;
  }

  else
  {
    v3 = 0x65695674696C7073;
  }

  if (v2)
  {
    v4 = 0xE900000000000077;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B6361745376616ELL;
  }

  else
  {
    v5 = 0x65695674696C7073;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000077;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100008774()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000087FC()
{
  String.hash(into:)();
}

Swift::Int sub_100008870()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000088F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001EE758, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100008954(uint64_t *a1@<X8>)
{
  v2 = 0x65695674696C7073;
  if (*v1)
  {
    v2 = 0x6B6361745376616ELL;
  }

  v3 = 0xE900000000000077;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000089A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100008A04()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100008AB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100008B68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_100008CDC()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_100008D80(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100008E90()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_100008F3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_100008FF8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000085D8(0, qword_100206A68);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_10000918C()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100009258@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  swift_beginAccess();
  return sub_10000C9A8(v5 + v3, a1);
}

uint64_t sub_100009324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  swift_beginAccess();
  return sub_10000C9A8(v3 + v4, a2);
}

uint64_t sub_1000093F0(uint64_t a1)
{
  v2 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000C9A8(a1, &v6 - v3);
  return sub_100009484(v4);
}

uint64_t sub_100009484(uint64_t a1)
{
  v3 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  swift_beginAccess();
  sub_10000C9A8(v1 + v6, v5);
  v7 = sub_10000BF50(v5, a1);
  sub_100007710(v5, &qword_10020A4B0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_10000C9A8(a1, v5);
    swift_beginAccess();
    sub_10000CBB0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100007710(a1, &qword_10020A4B0);
}

uint64_t sub_100009678(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  swift_beginAccess();
  sub_10000CC3C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000096E4()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100009794(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__exportSheetViewModel) = a2;
}

uint64_t sub_1000097D8()
{
  swift_getKeyPath();
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  sub_10000BDBC(v1);
  return v1;
}

uint64_t sub_10000989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  v4 = *(a1 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  *v3 = a2;
  v3[1] = a3;
  sub_10000BDBC(a2);
  return sub_10000BDCC(v4);
}

id sub_100009B2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100009BD0(void *a1)
{
  v2 = v1;
  v86 = type metadata accessor for URL();
  v4 = *(v86 - 8);
  v5 = __chkstk_darwin(v86 - 8);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v6;
  __chkstk_darwin(v5);
  v76 = &v74 - v7;
  v82 = sub_100005804(&qword_100206A50);
  __chkstk_darwin(v82);
  v83 = &v74 - v8;
  v9 = sub_100005804(&qword_10020A4B0);
  v10 = __chkstk_darwin(v9 - 8);
  v77 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v74 - v13;
  __chkstk_darwin(v12);
  v16 = &v74 - v15;
  v17 = [a1 title];
  v87 = v4;
  v85 = v16;
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model___observationRegistrar;
  aBlock = v2;
  v23 = sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = v2[3];
  if (!v21)
  {
    v25 = v86;
    if (!v24)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v24)
  {

    v25 = v86;
LABEL_13:
    swift_getKeyPath();
    aBlock = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2[3])
    {

      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }

    [a1 setTitle:v27];

    goto LABEL_17;
  }

  v25 = v86;
  if (v19 == v2[2] && v21 == v24)
  {

    goto LABEL_17;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v28 = [a1 largeTitleDisplayMode];
  swift_getKeyPath();
  aBlock = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v28 != v2[4])
  {
    swift_getKeyPath();
    aBlock = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [a1 setLargeTitleDisplayMode:v2[4]];
  }

  v29 = [a1 backAction];
  swift_getKeyPath();
  aBlock = v2;
  v88 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v2[5];
  if (v29)
  {
    if (v30)
    {
      sub_1000085D8(0, qword_100206A68);
      v31 = v30;
      v32 = static NSObject.== infix(_:_:)();

      if (v32)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    swift_getKeyPath();
    aBlock = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [a1 setBackAction:v2[5]];
    goto LABEL_27;
  }

  if (v30)
  {
    goto LABEL_26;
  }

LABEL_27:
  v33 = UINavigationItem.renameDelegate.getter();
  swift_getKeyPath();
  aBlock = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v89 = v23;
  v79 = v14;
  if (v33)
  {
    if (Strong)
    {
      v35 = Strong;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v36 = v85;
      if (v35 == v33)
      {
        goto LABEL_36;
      }

LABEL_35:
      swift_getKeyPath();
      aBlock = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_unknownObjectWeakLoadStrong();
      UINavigationItem.renameDelegate.setter();
      goto LABEL_36;
    }

    v36 = v85;
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v36 = v85;
  if (Strong)
  {
    goto LABEL_34;
  }

LABEL_36:
  v37 = [a1 documentProperties];
  v84 = a1;
  if (v37)
  {
    v38 = v37;
    type metadata accessor for DocumentViewToolbarAdaptor.Model.DocumentProperties(0);
    v39 = swift_dynamicCastClass();
    v40 = v39;
    if (v39)
    {
      v41 = v87;
      v42 = v25;
      (*(v87 + 16))(v36, v39 + OBJC_IVAR____TtCCC7Preview26DocumentViewToolbarAdaptor5Model18DocumentProperties_url, v25);
      v43 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v40 = 0;
  }

  v43 = 1;
  v42 = v25;
  v41 = v87;
LABEL_42:
  v44 = *(v41 + 56);
  v80 = v43;
  v44(v36);
  swift_getKeyPath();
  aBlock = v2;
  v81 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  swift_beginAccess();
  v46 = v83;
  v47 = *(v82 + 48);
  sub_10000C9A8(v36, v83);
  sub_10000C9A8(v2 + v45, v46 + v47);
  v48 = *(v41 + 48);
  if (v48(v46, 1, v42) != 1)
  {
    v49 = v79;
    sub_10000C9A8(v46, v79);
    if (v48(v46 + v47, 1, v42) != 1)
    {
      v64 = v76;
      (*(v87 + 32))(v76, v46 + v47, v42);
      sub_10000CB60(&qword_100206A60, 255, &type metadata accessor for URL);
      LODWORD(v82) = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = v46;
      v66 = *(v87 + 8);
      v66(v64, v42);
      sub_100007710(v85, &qword_10020A4B0);
      v66(v79, v42);
      sub_100007710(v65, &qword_10020A4B0);
      if (v82)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    sub_100007710(v36, &qword_10020A4B0);
    (*(v87 + 8))(v49, v42);
LABEL_47:
    sub_100007710(v46, &qword_100206A50);
LABEL_48:
    swift_getKeyPath();
    aBlock = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v77;
    sub_10000C9A8(v2 + v45, v77);
    v50 = v86;
    if (v48(v46, 1, v86) != 1)
    {
      v51 = v78;
      v52 = v87;
      v53 = *(v87 + 32);
      v53(v78, v46, v50);
      v54 = objc_allocWithZone(type metadata accessor for DocumentViewToolbarAdaptor.Model.DocumentProperties(0));
      URL._bridgeToObjectiveC()(v55);
      v57 = v56;
      v85 = [v54 initWithURL:v56];

      v58 = v76;
      (*(v52 + 16))(v76, v51, v50);
      v59 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v53((v61 + v59), v58, v50);
      *(v61 + v60) = v2;
      v94 = sub_10000CAD4;
      v95 = v61;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_10000A9D0;
      v93 = &unk_1001EEEE8;
      v62 = j___Block_copy(&aBlock);
      v40 = v85;

      [v40 setActivityViewControllerProvider:v62];
      v63 = v81;

      j___Block_release(v62);
      (*(v52 + 8))(v78, v50);
      goto LABEL_52;
    }

    goto LABEL_44;
  }

  sub_100007710(v36, &qword_10020A4B0);
  if (v48(v46 + v47, 1, v42) != 1)
  {
    goto LABEL_47;
  }

LABEL_44:
  sub_100007710(v46, &qword_10020A4B0);
LABEL_51:
  v63 = v81;
LABEL_52:
  v67 = v84;
  if (v80)
  {
    if (!v40)
    {
      goto LABEL_60;
    }

    v68 = v40;
    goto LABEL_59;
  }

  if (!v40)
  {
    v68 = 0;
    goto LABEL_59;
  }

  type metadata accessor for DocumentViewToolbarAdaptor.Model.DocumentProperties(0);
  v69 = v63;
  v68 = v40;
  v70 = static NSObject.== infix(_:_:)();

  if ((v70 & 1) == 0)
  {
LABEL_59:
    [v67 setDocumentProperties:v68];
  }

LABEL_60:
  swift_getKeyPath();
  aBlock = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v71 = *(v2 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  if (v71)
  {
    v72 = *(v2 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider + 8);
    v94 = v71;
    v95 = v72;
    aBlock = _NSConcreteStackBlock;
    v91 = 1107296256;
    v92 = sub_10000AA20;
    v93 = &unk_1001EEE98;
    v73 = j___Block_copy(&aBlock);
  }

  else
  {
    v73 = 0;
  }

  [v67 setTitleMenuProvider:v73];

  j___Block_release(v73);
}

id sub_10000A848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12[1] = a2;
  sub_10000CB60(&qword_100206A58, 255, type metadata accessor for DocumentViewToolbarAdaptor.Model);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a2 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__exportSheetViewModel);
  (*(v5 + 16))(v7, a1, v4);
  v9 = objc_allocWithZone(type metadata accessor for DocumentShareSheetViewController(0));

  v10 = sub_10006BC00(v7, v8);

  return v10;
}

id sub_10000A9D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_10000AA20(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000085D8(0, &qword_1002064F8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_10000AAB0()
{

  sub_10000CD30(v0 + 48);
  sub_100007710(v0 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL, &qword_10020A4B0);

  sub_10000BDCC(*(v0 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider));
  v1 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10000ABD0()
{
  sub_10000D21C(319, &unk_100206618, 255, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000AD2C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AD64()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000ADF4()
{
  *(v0 + 56) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__documentURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__exportSheetViewModel) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC7Preview26DocumentViewToolbarAdaptor5Model__titleMenuProvider);
  *v3 = 0;
  v3[1] = 0;
  ObservationRegistrar.init()();
  return v0;
}

void sub_10000AEA0(void *a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
  if (a1)
  {
    if (v3 == a1)
    {
LABEL_3:
      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  v6 = a1;
  sub_10000AF18();

  v4 = v6;
LABEL_6:
}

void sub_10000AF18()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (v6 && *(v0 + 56) == 1)
  {
    v20 = v3;
    v7 = v6;
    sub_1001450D4(v5);
    v8 = v7;

    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (j__os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v12 = 136315394;
      if (*(v0 + 16))
      {
        v13 = 0x6B6361745376616ELL;
      }

      else
      {
        v13 = 0x65695674696C7073;
      }

      if (*(v0 + 16))
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE900000000000077;
      }

      v15 = sub_10008B044(v13, v14, &v21);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v8;
      v16 = v18;
      *v18 = v6;
      v17 = v8;
      j___os_log_impl(&dword_100000000, v10, v11, "Active toolbarAdaptor item now (%s): %@", v12, 0x16u);
      sub_100007710(v16, &unk_1002093E0);

      sub_10000867C(v19);
    }

    (*(v2 + 8))(v5, v20);
    (*(v9 + 32))(v8);
  }
}

uint64_t sub_10000B194()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10000B270(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100009BD0(a1);
  v2 = a1;
  sub_10000AEA0(a1);
}

uint64_t sub_10000B338(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100009BD0(a1);
  v2 = a1;
  sub_10000AEA0(a1);
}

void sub_10000B418()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000C85C();
}

uint64_t sub_10000B4D8(uint64_t a1)
{
  v3 = v1;

  return a1;
}

uint64_t sub_10000B500(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ToolbarAdaptorContextWrapperView.ViewController();
  result = objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v5 = *&v2[qword_1002069A0];
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }

LABEL_8:
        type metadata accessor for MainActor();
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v10 = *(v8 + 16);
        v11 = *(v10 + 56);
        *(v10 + 56) = 0;
        if (v11 == 1)
        {

          sub_10000AF18();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_17;
        }
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      result = _CocoaArrayWrapper.endIndex.getter();
      v6 = result;
    }

    while (result);
  }

LABEL_17:
  v12 = *(*&v2[qword_100206998] + 16);
  v13 = *(v12 + 56);
  *(v12 + 56) = 1;
  if ((v13 & 1) == 0)
  {

    sub_10000AF18();
  }

  return result;
}

void sub_10000B720(void *a1, uint64_t a2, char a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  sub_10000B500(a3);
}

uint64_t sub_10000B7EC()
{
}

id sub_10000B82C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolbarAdaptorContextWrapperView.ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B8A8()
{
}

uint64_t getEnumTagSinglePayload for DocumentViewToolbarAdaptor.ViewContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DocumentViewToolbarAdaptor.ViewContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BAAC()
{
  result = qword_100206A38;
  if (!qword_100206A38)
  {
    sub_1000059D4(&qword_100206A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100206A38);
  }

  return result;
}

unint64_t sub_10000BB14()
{
  result = qword_100206A48;
  if (!qword_100206A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100206A48);
  }

  return result;
}

uint64_t sub_10000BB70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100080ABC(a1, a2, WitnessTable);
}

uint64_t sub_10000BBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100080AD0(a1, a2, a3, WitnessTable);
}

uint64_t sub_10000BC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10000BD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_10000BD7C()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10000BDBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BDCC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_10000BDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for DocumentViewToolbarAdaptorImpl();
  v6 = swift_allocObject();
  *(v6 + 56) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = 0;
  type metadata accessor for DocumentViewToolbarAdaptor();
  *(swift_allocObject() + 16) = v6;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v7 = swift_allocObject();
  *(v7 + 56) = 0;
  *(v7 + 16) = 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 48) = 0;
  *(swift_allocObject() + 16) = v7;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000BF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100005804(&qword_100206A50);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000C9A8(a1, &v21 - v13);
  sub_10000C9A8(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000C9A8(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_10000CB60(&qword_100206A60, 255, &type metadata accessor for URL);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100007710(v14, &qword_10020A4B0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007710(v14, &qword_100206A50);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007710(v14, &qword_10020A4B0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10000C244(char a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v42 = a3;
  v8 = ((swift_isaMask & *v5) + qword_1002069A8);
  v9 = *v8;
  v10 = type metadata accessor for DocumentViewToolbarAdaptor();
  v11 = v8[1];
  v13 = sub_10000CB60(&qword_100206AF8, v12, type metadata accessor for DocumentViewToolbarAdaptor);
  v46 = v9;
  v47 = v10;
  v41 = v10;
  v48 = v11;
  v49 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = __chkstk_darwin(OpaqueTypeMetadata2);
  *(v5 + qword_1002069A0) = a2;
  *(v5 + qword_100206990) = a1 & 1;
  v39 = v11;
  v40 = v9;
  v37[1] = v15;
  v38 = v13;
  v37[0] = v37 - v16;
  if (a2 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    type metadata accessor for MainActor();
    v43 = v5;
    if ((a2 & 0xC000000000000001) != 0)
    {

      if (i)
      {
        v17 = 0;
        if (a1)
        {
          v18 = 0x6B6361745376616ELL;
        }

        else
        {
          v18 = 0x65695674696C7073;
        }

        if (a1)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE900000000000077;
        }

        while (1)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v5 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v4 = v20;
          a1 = static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          if (*(*(v4 + 16) + 16))
          {
            v21 = 0x6B6361745376616ELL;
          }

          else
          {
            v21 = 0x65695674696C7073;
          }

          if (*(*(v4 + 16) + 16))
          {
            v22 = 0xE800000000000000;
          }

          else
          {
            v22 = 0xE900000000000077;
          }

          if (v21 == v18 && v22 == v19)
          {
            goto LABEL_50;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_53;
          }

          swift_unknownObjectRelease();
          ++v17;
          if (v5 == i)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_55;
      }

LABEL_26:
      __break(1u);
    }

    if (!i)
    {
      break;
    }

    v25 = 0;
    v44 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a1)
    {
      v26 = 0x6B6361745376616ELL;
    }

    else
    {
      v26 = 0x65695674696C7073;
    }

    v5 = 0xE800000000000000;
    if (a1)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v27 = 0xE900000000000077;
    }

    while (v25 < *(v44 + 16))
    {
      v4 = *(a2 + 8 * v25 + 32);

      a1 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (*(*(v4 + 16) + 16))
      {
        v28 = 0x6B6361745376616ELL;
      }

      else
      {
        v28 = 0x65695674696C7073;
      }

      if (*(*(v4 + 16) + 16))
      {
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xE900000000000077;
      }

      if (v28 == v26 && v29 == v27)
      {

        goto LABEL_53;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_53;
      }

      ++v25;

      if (i == v25)
      {
        goto LABEL_49;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_49:
  __break(1u);
LABEL_50:

LABEL_53:

  *(v43 + qword_100206998) = v4;
  v46 = v4;
  v32 = swift_checkMetadataState();
  v34 = v39;
  v33 = v40;
  v35 = v38;
  View.navigationItemAdaptor<A>(_:)();
  v46 = v33;
  v47 = v32;
  v48 = v34;
  v49 = v35;
  swift_getOpaqueTypeConformance2();
  v46 = j___s7SwiftUI7AnyViewVyACxcAA0D0RzlufC();
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10000C7F4(uint64_t a1)
{
  type metadata accessor for ToolbarAdaptorContextWrapperView.ViewController();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 40);

  return sub_10000C794(v3, v4, v1 + v5);
}

uint64_t sub_10000C91C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100008B68(v1, v2);
}

void sub_10000C968(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100008FF8(v1);
}

uint64_t sub_10000C9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CA38()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_10000CAD4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000A848(v0 + v2, v3);
}

uint64_t sub_10000CB60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A4B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10000CCAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_10000CCF0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

void sub_10000CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000D21C(319, &qword_100206AF0, a3, type metadata accessor for DocumentViewToolbarAdaptor, &type metadata accessor for Array);
  if (v3 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10000CE28(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10000CFB0(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        j__bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      j__bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 16) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *(v19 + 8) = v20;
  }
}

void sub_10000D21C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10000D29C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

NSString sub_10000D2F8()
{
  result = String._bridgeToObjectiveC()();
  qword_1002223C8 = result;
  return result;
}

NSString sub_10000D348()
{
  result = String._bridgeToObjectiveC()();
  qword_1002223D8 = result;
  return result;
}

id sub_10000D380(void *a1)
{
  v3 = OBJC_IVAR____TtC7Preview24DocumentLaunchController_scannerPresentationModel;
  type metadata accessor for ScannerPresentationModel();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  ObservationRegistrar.init()();
  *&v1[v3] = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DocumentLaunchController();
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_10000D5BC(a1);

  return v5;
}

void sub_10000D440()
{
  sub_10015DD64(&v6);
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_100205FF8 != -1)
      {
        swift_once();
      }

      v0 = &qword_1002223D0;
    }

    else
    {
      if (qword_100206000 != -1)
      {
        swift_once();
      }

      v0 = &qword_1002223D8;
    }
  }

  else
  {
    if (qword_100205FF0 != -1)
    {
      swift_once();
    }

    v0 = &qword_1002223C8;
  }

  v1 = *v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong launchOptions];

    v5 = [v4 browserViewController];
    [v5 _initiateDocumentCreationWithIntent:v1];

    v1 = v5;
  }
}

void sub_10000D5BC(void *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  *&v107 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v106 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v101 - v11;
  v103 = type metadata accessor for PreviewActionSpec(0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v115 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v101 - v16;
  v117 = a1;
  v18 = [a1 launchOptions];
  v19 = [objc_allocWithZone(type metadata accessor for DocumentLaunchCardViews()) init];
  [v18 setBackgroundAccessoryView:v19];

  v116 = v18;
  v114 = [v18 browserViewController];
  sub_10016F100(v17);
  v20 = objc_opt_self();
  if (qword_100206000 != -1)
  {
    swift_once();
  }

  v21 = [v20 createDocumentActionWithIntent:qword_1002223D8];
  sub_1001647EC(v12);
  v110 = *(v7 + 16);
  v111 = v7 + 16;
  v110(v9, v12, v6);
  String.init(localized:)();
  v23 = *(v7 + 8);
  v22 = v7 + 8;
  v113 = v6;
  v109 = v23;
  v23(v12, v6);
  v24 = String._bridgeToObjectiveC()();

  [v21 setTitle:v24];

  v108 = v17;
  sub_100164878();
  v25 = String._bridgeToObjectiveC()();

  v26 = objc_opt_self();
  v27 = [v26 systemImageNamed:v25];

  v105 = v21;
  [v21 setImage:v27];

  if (qword_100205FF8 != -1)
  {
    swift_once();
  }

  v112 = v22;
  v28 = [v20 createDocumentActionWithIntent:qword_1002223D0];
  sub_10016E6D0(v115);
  if (qword_100205FF0 != -1)
  {
    swift_once();
  }

  v29 = [v20 createDocumentActionWithIntent:qword_1002223C8];
  sub_1001647EC(v12);
  v30 = v113;
  v110(v9, v12, v113);
  String.init(localized:)();
  v109(v12, v30);
  v31 = String._bridgeToObjectiveC()();

  [v29 setTitle:v31];

  sub_100164878();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v26 systemImageNamed:v32];

  [v29 setImage:v33];
  String.LocalizationValue.init(stringLiteral:)();
  v34 = [objc_opt_self() mainBundle];
  static Locale.current.getter();
  v35 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v36;
  v38 = String._bridgeToObjectiveC()();
  v39 = [v26 __systemImageNamedSwift:v38];

  if (!v39)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000085D8(0, &unk_100206E20);
  sub_100005804(&qword_1002064F0);
  v40 = swift_allocObject();
  v107 = xmmword_10019A6B0;
  *(v40 + 16) = xmmword_10019A6B0;
  *(v40 + 32) = v29;
  *(v40 + 40) = v28;
  v106 = v29;
  v101 = v28;
  v41._countAndFlagsBits = v35;
  v41._object = v37;
  v119.value.super.isa = v39;
  v119.is_nil = 0;
  v42.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v119, 0, 0xFFFFFFFFFFFFFFFFLL, v40, v99).super.super.isa;
  v43 = v105;
  sub_10000E29C(v42.super.super.isa, v105);
  v44 = objc_opt_self();
  v45 = [v44 standardUserDefaults];
  v46 = sub_100069CD4(0xD000000000000028, 0x80000001001B0220, 1u);

  if (v46)
  {
    v47 = [v44 standardUserDefaults];
    v48 = sub_100069CD4(0xD000000000000031, 0x80000001001B0250, 1u);

    v49 = objc_allocWithZone(type metadata accessor for LoupeContainerView());
    v50 = sub_100035478(v48 & 1, 0.0, 0.0, 0.0, 0.0);
    v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v50 setPreservesSuperviewLayoutMargins:1];
    [v51 bounds];
    [v50 setFrame:?];
    [v50 setAutoresizingMask:18];
    [v51 addSubview:v50];
    [v116 setForegroundAccessoryView:v51];
  }

  v52 = qword_100206020;
  v53 = v43;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = MobileGestalt_get_current_device();
  v55 = v117;
  if (!v54)
  {
    goto LABEL_24;
  }

  v56 = v54;
  greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

  isa = v53;
  if (greenTeaDeviceCapability)
  {
    sub_1001647EC(v12);
    v59 = v113;
    v110(v9, v12, v113);
    v60 = String.init(localized:)();
    v62 = v61;
    v109(v12, v59);
    v63 = [(objc_class *)v53 image];
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10019A160;
    *(v64 + 32) = v53;
    v98 = v64;
    v65._countAndFlagsBits = v60;
    v65._object = v62;
    v120.value.super.isa = v63;
    v120.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v65, 0, v120, 0, 0xFFFFFFFFFFFFFFFFLL, v98, v100.super.super.isa).super.super.isa;
  }

  v66 = swift_allocObject();
  *(v66 + 16) = v107;
  *(v66 + 32) = v42;
  *(v66 + 40) = isa;
  v67 = v42.super.super.isa;
  v68 = isa;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v121.value.super.isa = 0;
  v121.is_nil = 0;
  v70 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v69, 0, v121, 0, 0xFFFFFFFFFFFFFFFFLL, v66, v100.super.super.isa).super.super.isa;
  v71 = v114;
  [v114 setBrowserHostedCreateDocumentsMenu:v70];

  v72 = v104;
  [v71 setDelegate:v104];
  v73 = [v71 presentationController];
  if (v73)
  {
    v74 = v73;
    [v73 setDelegate:v72];
  }

  v118 = *(v72 + OBJC_IVAR____TtC7Preview24DocumentLaunchController_scannerPresentationModel);
  type metadata accessor for ScannerPresentationModel();

  j___s7SwiftUI5StateV12wrappedValueACyxGx_tcfC();
  v75 = objc_allocWithZone(sub_100005804(&unk_100206E30));

  v76 = UIHostingController.init(rootView:)();
  [v76 willMoveToParentViewController:v55];
  v77 = [v76 view];
  if (!v77)
  {
    goto LABEL_25;
  }

  v78 = v77;
  v79 = [v55 view];
  if (!v79)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v80 = v79;
  [v79 bounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;

  [v78 setFrame:{v82, v84, v86, v88}];
  v89 = [v76 view];
  if (!v89)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v90 = v89;
  [v89 setAutoresizingMask:18];

  v91 = v117;
  [v117 addChildViewController:v76];
  v92 = [v91 view];
  if (!v92)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v93 = v92;
  v94 = [v76 view];
  if (v94)
  {
    v95 = v94;
    [v93 addSubview:v94];

    [v76 didMoveToParentViewController:v117];

    v96 = *(v102 + 8);
    v97 = v103;
    v96(v115, v103);
    v96(v108, v97);
    return;
  }

LABEL_29:
  __break(1u);
}

id sub_10000E29C(uint64_t a1, void *a2)
{
  [v2 setPrimaryAction:0];
  [v2 _setPrimaryMenu:a1];
  [a2 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000085D8(0, qword_100206A68);
  swift_dynamicCast();
  [v6 setImage:0];
  [v2 setSecondaryAction:v6];

  return [v2 _setTintColor:0];
}

uint64_t sub_10000E398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a1;
  v6 = sub_100005804(&qword_100206DE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014522C(v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v7;
    *v16 = 0;
    j___os_log_impl(&dword_100000000, v14, v15, "documentBrowser:didRequestDocumentCreationWithHandler:", v16, 2u);
    v7 = v22;
  }

  (*(v11 + 8))(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  *(v17 + 24) = a3;
  v25[0] = sub_100013008;
  v25[1] = v17;

  v18 = sub_100005804(&qword_100206DE8);
  sub_1001523B0(v25, v18, v9);
  v19 = type metadata accessor for MainActor();
  __chkstk_darwin(v19);
  v20 = v24;
  *(&v22 - 4) = v9;
  *(&v22 - 3) = v20;
  *(&v22 - 2) = v4;
  sub_10005DA00(sub_100013034, (&v22 - 6));
  return (*(v7 + 8))(v9, v6);
}

id sub_10000E670(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a3;
  v4 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_100005804(&qword_100206DE0);
  sub_10015237C(v8, &v28);
  v9 = swift_allocObject();
  *(v9 + 16) = v28;
  v10 = [a2 activeDocumentCreationIntent];
  if (!v10)
  {
    v10 = UIDocumentCreationIntentDefault;
  }

  result = [a2 view];
  if (result)
  {
    v12 = result;
    v13 = [result window];

    if (v13)
    {
      [v13 frame];
      v15 = v14;
      v17 = v16;

      v18 = v15;
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v20 = v13 == 0;
    type metadata accessor for DocumentLaunchController.CreateDocumentRequest();
    v21 = swift_allocObject();

    v22 = v10;
    sub_100010470(v22, v18, v19, v20, sub_100013054, v9);
    v23 = *(v29 + OBJC_IVAR____TtC7Preview24DocumentLaunchController_scannerPresentationModel);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v21;
    v26[5] = v23;
    sub_10005DB88(0, 0, v6, &unk_10019A7D0, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_100006600(a1, &v14 - v7, &qword_10020A4B0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, v12, a2);
}

uint64_t sub_10000EB84(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v35 = type metadata accessor for PreviewTelemetryAction();
  Description = v35[-1].Description;
  __chkstk_darwin(v35);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_10020A0C0);
  v9 = __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v34 = &v27 - v16;
  type metadata accessor for MainActor();
  v36 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 16);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = a1;
  v21 = v19;
  if (v17)
  {
    v29 = v20;
    v30 = v2;
    v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100007710(v12, &qword_10020A0C0);
    }

    else
    {
      v22 = v34;
      (*(v14 + 32))(v34, v12, v13);
      v27 = type metadata accessor for PreviewTelemetryLogger();
      v24 = v32;
      v23 = Description;
      Description[13](v32, 6, v35);
      v25 = v31;
      (*(v14 + 16))(v31, v22, v13);
      (*(v14 + 56))(v25, 0, 1, v13);
      sub_100143D70(v24, v25);
      sub_100007710(v25, &qword_10020A0C0);
      (v23[1])(v24, v35);
      (*(v14 + 8))(v34, v13);
    }

    (*(v21 + 16))(v6, v29 + v28, v18);
    (*(v21 + 56))(v6, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v6, 1, 1, v18);
  }

  sub_10000F4FC(v6, 0x6B636950646964, 0xE700000000000000);
  sub_100007710(v6, &qword_10020A4B0);
}

uint64_t sub_10000F0E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10000F4FC(v5, 0x726F706D49646964, 0xE900000000000074);
  sub_100007710(v5, &qword_10020A4B0);
}

uint64_t sub_10000F4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005804(&qword_10020A4B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  sub_100006600(a1, &v38 - v16, &qword_10020A4B0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100007710(v17, &qword_10020A4B0);
  }

  else
  {
    URL.startAccessingSecurityScopedResource()();
    (*(v19 + 8))(v17, v18);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong launchOptions];

    v23 = [v22 browserViewController];
    v24 = [v23 activeDocumentCreationIntent];
  }

  else
  {
    v24 = 0;
  }

  sub_1000085D8(0, &qword_100206DB0);
  v25 = static OS_dispatch_queue.main.getter();
  sub_100006600(a1, v15, &qword_10020A4B0);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_100012DE4(v15, v29 + v26);
  v30 = (v29 + v27);
  v31 = v39;
  *v30 = v38;
  v30[1] = v31;
  *(v29 + v28) = v4;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_100012E54;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001EF000;
  v32 = j___Block_copy(aBlock);
  v33 = v24;

  v34 = v4;
  static DispatchQoS.unspecified.getter();
  v45 = &_swiftEmptyArrayStorage;
  sub_10001345C(&qword_100208000, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005804(&unk_100206DC0);
  sub_100012F08();
  v35 = v40;
  v36 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  j___Block_release(v32);

  (*(v43 + 8))(v35, v36);
  (*(v41 + 8))(v10, v42);
}

uint64_t sub_10000FA0C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v65 = a4;
  v66 = a2;
  v64 = type metadata accessor for DocumentOpeningOptions();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v60 = &v60 - v13;
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for URL();
  v71 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v67 = &v60 - v26;
  type metadata accessor for MainActor();
  v70 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006600(a1, v18, &qword_10020A4B0);
  v27 = v71;
  if ((*(v71 + 48))(v18, 1, v19) == 1)
  {
    sub_100007710(v18, &qword_10020A4B0);
    sub_1001450D4(v11);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (j__os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v73[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10008B044(v66, a3, v73);
      j___os_log_impl(&dword_100000000, v28, v29, "handleOpenBrowserURL(%s) Unable to open file (no URL)", v30, 0xCu);
      sub_10000867C(v31);
    }

    (*(v68 + 8))(v11, v69);
  }

  else
  {
    v32 = v67;
    (*(v27 + 32))(v67, v18, v19);
    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = (v27 + 16);
    if (Strong)
    {
      v35 = Strong;
      sub_1001450D4(v15);
      (*v34)(v25, v32, v19);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (j__os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v73[0] = swift_slowAlloc();
        *v38 = 136315394;
        *(v38 + 4) = sub_10008B044(v66, a3, v73);
        *(v38 + 12) = 2080;
        sub_10001345C(&qword_100206DD0, &type metadata accessor for URL);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        v42 = v25;
        v43 = *(v71 + 8);
        v43(v42, v19);
        v44 = sub_10008B044(v39, v41, v73);

        *(v38 + 14) = v44;
        j___os_log_impl(&dword_100000000, v36, v37, "handleOpenBrowserURL(%s) Will open file at url: %s", v38, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v54 = v25;
        v43 = *(v27 + 8);
        v43(v54, v19);
      }

      (*(v68 + 8))(v15, v69);
      v55 = v62;
      sub_10001038C(v61, v62);
      v56 = OBJC_IVAR____TtC7Preview22DocumentViewController_delegate;
      swift_beginAccess();
      sub_100006600(v35 + v56, v73, &qword_100206DD8);
      v57 = v67;
      if (v73[3])
      {
        sub_100012F6C(v73, v72);
        sub_100007710(v73, &qword_100206DD8);
        sub_100008638(v72, v72[3]);
        sub_1000220E0(v57, v55);
        sub_10000867C(v72);
      }

      else
      {
        sub_100007710(v73, &qword_100206DD8);
      }

      URL.stopAccessingSecurityScopedResource()();

      (*(v63 + 8))(v55, v64);
      v43(v57, v19);
    }

    else
    {
      v45 = v60;
      sub_1001450D4(v60);
      (*v34)(v22, v32, v19);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (j__os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v73[0] = swift_slowAlloc();
        *v48 = 136315394;
        *(v48 + 4) = sub_10008B044(v66, a3, v73);
        *(v48 + 12) = 2080;
        sub_10001345C(&qword_100206DD0, &type metadata accessor for URL);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v52 = *(v27 + 8);
        v52(v22, v19);
        v53 = sub_10008B044(v49, v51, v73);

        *(v48 + 14) = v53;
        j___os_log_impl(&dword_100000000, v46, v47, "handleOpenBrowserURL(%s) Unable to open file (no docVC) at url: %s", v48, 0x16u);
        swift_arrayDestroy();

        (*(v68 + 8))(v60, v69);
        v52(v67, v19);
      }

      else
      {

        v58 = *(v27 + 8);
        v58(v22, v19);
        (*(v68 + 8))(v45, v69);
        v58(v32, v19);
      }
    }
  }
}

uint64_t sub_10001038C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_100138E84(a2);
  if (qword_100205FF0 == -1)
  {
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = swift_once();
    if (!a1)
    {
      return result;
    }
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  return sub_10011564C(1);
}

void sub_100010470(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6[4] = 0;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = a1;
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (qword_100205FF8 != -1)
  {
    swift_once();
  }

  v19 = qword_1002223D0;
LABEL_11:
  v20 = v19;
  v21 = v6[4];
  v6[4] = v19;

  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    sub_1000085D8(0, &qword_100206E18);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v23 = String._bridgeToObjectiveC()();
    v24 = [ObjCClassFromMetadata valueForKey:v23];

    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000065F0(&v30, &v31);
      swift_dynamicCast();
      [v29 bounds];
      v26 = v25;
      v28 = v27;

      v6[5] = v26;
      v6[6] = v28;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6[5] = a2;
    v6[6] = a3;
  }
}

uint64_t sub_100010698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100005804(&qword_10020A4B0);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100010770, v7, v6);
}

uint64_t sub_100010770()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10001087C;
  v7 = v0[4];
  v6 = v0[5];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v3, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001001B01A0, sub_100013288, v4, v7);
}

uint64_t sub_10001087C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100010A7C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000109EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000109EC()
{

  v1 = *(v0 + 40);
  sub_100011390(v1);
  sub_100007710(v1, &qword_10020A4B0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010A7C()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 40);
  sub_100011390(v3);
  sub_100007710(v3, &qword_10020A4B0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100010B50(uint64_t a1, double *a2, uint64_t a3)
{
  v59 = a3;
  v5 = sub_100005804(&qword_10020A4B0);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v7 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for PreviewTelemetryAction();
  Description = v10[-1].Description;
  v58 = v10;
  __chkstk_darwin(v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v55 = *(v13 - 8);
  v56 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005804(&qword_100206E00);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a2[5];
  v20 = a2[6];
  v21 = sub_100005804(&qword_100206E08);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v18, a1, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  type metadata accessor for URLDocumentCreationContext();
  swift_allocObject();
  v23 = sub_100176B90(v18, v19, v20);
  v24 = *(a2 + 4);
  v25 = qword_100205FF0;
  v26 = v24;
  if (v25 == -1)
  {
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_once();
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v29 != v30)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_9;
    }

LABEL_11:
    v32 = qword_100205FF8;
    v33 = v26;
    if (v32 == -1)
    {
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    else
    {
      swift_once();
      if (!v24)
      {
        goto LABEL_20;
      }
    }

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

LABEL_17:

      sub_10008159C();
      goto LABEL_18;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_17;
    }

LABEL_20:
    if (qword_100206000 == -1)
    {
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    else
    {
      swift_once();
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
    if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
    {

LABEL_26:
      v44 = v59;
      if (v59)
      {
        type metadata accessor for PreviewTelemetryLogger();
        v46 = Description;
        v45 = v58;
        Description[13](v12, 7, v58);

        static UTType.pdf.getter();
        v47 = type metadata accessor for UTType();
        (*(*(v47 - 8) + 56))(v9, 0, 1, v47);
        sub_100143D70(v12, v9);
        sub_100007710(v9, &qword_10020A0C0);
        (v46[1])(v12, v45);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v55 - 2) = v44;
        *(&v55 - 1) = v23;
        v61 = v44;
        sub_10001345C(&qword_100206E10, type metadata accessor for ScannerPresentationModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_1001450D4(v15);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.fault.getter();
      if (j__os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        j___os_log_impl(&dword_100000000, v50, v51, "ERROR: No launchSceneViewModel provided, will be unable to create new scanned document", v52, 2u);
      }

      (*(v55 + 8))(v15, v56);
      goto LABEL_31;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_26;
    }

LABEL_31:
    v53 = type metadata accessor for URL();
    v54 = v60;
    (*(*(v53 - 8) + 56))(v60, 1, 1, v53);
    sub_1001780C8();

    sub_100007710(v54, &qword_10020A4B0);
  }

LABEL_9:

  sub_100080E74();
LABEL_18:
}

uint64_t sub_100011390(uint64_t a1)
{
  v3 = sub_100005804(&qword_10020A4B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006600(a1, v8, &qword_10020A4B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007710(v8, &qword_10020A4B0);
    v13 = *(v1 + 16);
    (*(v10 + 56))(v6, 1, 1, v9);
    v13(v6, 0);
    return sub_100007710(v6, &qword_10020A4B0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = *(v1 + 16);
    (*(v10 + 16))(v6, v12, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v15(v6, 2);
    sub_100007710(v6, &qword_10020A4B0);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100011610()
{

  return swift_deallocClassInstance();
}

id sub_1000116DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentLaunchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000117A4(void *a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ([a1 isCancelled])
  {

    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_6:

    return;
  }

  v3 = Strong;
  v4 = [Strong document];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (*&v3[OBJC_IVAR____TtC7Preview22DocumentViewController_documentViewModel])
    {
      sub_100070E4C();
    }
  }
}

uint64_t sub_1000119EC()
{
  swift_getKeyPath();
  sub_10001345C(&qword_100206E10, type metadata accessor for ScannerPresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100011A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001345C(&qword_100206E10, type metadata accessor for ScannerPresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100011B3C()
{
  swift_getKeyPath();
  sub_10001345C(&qword_100206E10, type metadata accessor for ScannerPresentationModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100011C08()
{

  v1 = OBJC_IVAR____TtC7Preview24ScannerPresentationModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScannerPresentationModel()
{
  result = qword_100206D10;
  if (!qword_100206D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011D00()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011D9C(uint64_t a1, uint64_t a2)
{
  sub_100005804(&qword_100206E48);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  swift_getKeyPath();
  sub_100005804(&qword_100206E50);
  Binding.subscript.getter();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for URLDocumentCreationContext();
  sub_10001345C(&qword_100206E58, type metadata accessor for URLDocumentCreationContext);
  sub_1000134A4();

  View.fullScreenCover<A, B>(item:onDismiss:content:)();
}

__n128 sub_100011F70@<Q0>(unint64_t a1@<X1>, unint64_t a2@<X2>, __n128 *a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.n128_u64[0] = a1;
  v7.n128_u64[1] = a2;
  sub_100005804(&qword_100206E48);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  swift_getKeyPath();
  sub_100005804(&qword_100206E50);
  Binding.subscript.getter();

  result = v7;
  *a3 = v7;
  a3[1].n128_u64[0] = v8;
  return result;
}

uint64_t sub_1000120C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014522C(v7);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (j__os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for URL();
    v13 = Array.description.getter();
    v15 = sub_10008B044(v13, v14, &v20);

    *(v11 + 4) = v15;
    j___os_log_impl(&dword_100000000, v8, v9, "documentBrowser:didPickDocumentsAt: %s", v11, 0xCu);
    sub_10000867C(v12);

    v2 = v19;
  }

  (*(v5 + 8))(v7, v4);
  v16 = type metadata accessor for MainActor();
  __chkstk_darwin(v16);
  *(&v18 - 2) = a1;
  *(&v18 - 1) = v2;
  return sub_10005DA00(sub_100013308, (&v18 - 4));
}

uint64_t sub_1000122FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Logger();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014522C(v15);
  v16 = *(v7 + 16);
  v16(v12, a1, v6);
  v16(v10, a2, v6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (j__os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v3;
    v20 = v19;
    v37 = swift_slowAlloc();
    v42[0] = v37;
    *v20 = 136315394;
    sub_10001345C(&qword_100206DD0, &type metadata accessor for URL);
    v36 = v18;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v17;
    v23 = v22;
    v39 = a2;
    v24 = *(v7 + 8);
    v24(v12, v6);
    v25 = sub_10008B044(v21, v23, v42);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v24(v10, v6);
    a2 = v39;
    v29 = sub_10008B044(v26, v28, v42);

    *(v20 + 14) = v29;
    v30 = v35;
    j___os_log_impl(&dword_100000000, v35, v36, "documentBrowser:didImportDocumentAt: %s toDestinationURL: %s", v20, 0x16u);
    swift_arrayDestroy();

    v3 = v38;
  }

  else
  {

    v31 = *(v7 + 8);
    v31(v10, v6);
    v31(v12, v6);
  }

  (*(v40 + 8))(v15, v41);
  v32 = type metadata accessor for MainActor();
  __chkstk_darwin(v32);
  *(&v34 - 2) = v3;
  *(&v34 - 1) = a2;
  return sub_10005DA00(sub_1000132EC, (&v34 - 4));
}

uint64_t sub_100012700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014522C(v11);
  (*(v5 + 16))(v7, a1, v4);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (j__os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v9;
    v15 = v14;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v15 = 136315394;
    sub_10001345C(&qword_100206DD0, &type metadata accessor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v8;
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_10008B044(v16, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v28 = a2;
    swift_errorRetain();
    sub_100005804(&qword_100206E40);
    v20 = String.init<A>(describing:)();
    v22 = sub_10008B044(v20, v21, &v29);

    *(v15 + 14) = v22;
    j___os_log_impl(&dword_100000000, v12, v13, "Error: failed to import document at url: %s with error: %s", v15, 0x16u);
    swift_arrayDestroy();

    return (*(v27 + 8))(v11, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_100012A5C(void *a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong launchOptions];

    v12 = [v6 browserViewController];
    if (v12)
    {
      sub_1000085D8(0, &unk_100206DA0);
      v7 = [a1 presentedViewController];
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) != 0 && a2)
      {
        v9 = swift_allocObject();
        v10 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        aBlock[4] = sub_100012C74;
        aBlock[5] = v9;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100016E58;
        aBlock[3] = &unk_1001EEFB0;
        v11 = j___Block_copy(aBlock);

        [a2 animateAlongsideTransition:0 completion:v11];

        j___Block_release(v11);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100012C3C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100012C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012C94()
{
  v1 = *(sub_100005804(&qword_10020A4B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_100012DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_10020A4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012E54()
{
  v1 = *(sub_100005804(&qword_10020A4B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  return sub_10000FA0C(v0 + v2, v8, v9, v6, v7);
}

unint64_t sub_100012F08()
{
  result = qword_100208010;
  if (!qword_100208010)
  {
    sub_1000059D4(&unk_100206DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208010);
  }

  return result;
}

uint64_t sub_100012F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012FD0()
{

  return swift_deallocObject();
}

uint64_t sub_100013054(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_10001308C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000130D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_100010698(a1, v4, v5, v7, v6);
}

uint64_t sub_100013194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000132B0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_100013324()
{
  j___Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100013364(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000133AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013414()
{

  return swift_deallocObject();
}

uint64_t sub_10001345C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000134A4()
{
  result = qword_100206E60;
  if (!qword_100206E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100206E60);
  }

  return result;
}

uint64_t sub_1000134F8()
{
  type metadata accessor for URLDocumentCreationContext();
  sub_10001345C(&qword_100206E58, type metadata accessor for URLDocumentCreationContext);
  sub_1000134A4();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000135CC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EncryptionState();
  Description = v4[-1].Description;
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = v1 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController;
  v12 = *(v1 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController);
  if (v12)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v47 = v12;
    v15 = sub_1000A250C(ObjectType, v13);
    v16 = sub_1000291D8(ObjectType, v13);
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    v46 = v16;
    v45 = Description;
    v17 = (v2 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent);
    v19 = v17[3];
    v18 = v17[4];
    sub_100008638(v17, v19);
    (*(v18 + 24))(v19, v18);
    v21 = v20;
    v22 = swift_getObjectType();
    LODWORD(v21) = sub_100142BF4(v22, v21) & 1;
    swift_unknownObjectRelease();
    if ((v15 & 1) != v21)
    {
      v23 = v17[3];
      v24 = v17[4];
      sub_100008638(v17, v23);
      (*(v24 + 24))(v23, v24);
      v26 = v25;
      v27 = swift_getObjectType();
      v28 = sub_1000A250C(ObjectType, v13);
      sub_100142C08(v28 & 1, v27, v26);
      swift_unknownObjectRelease();
    }

    if (v46)
    {
      v29 = v17[3];
      v30 = v17[4];
      sub_100008638(v17, v29);
      (*(v30 + 24))(v29, v30);
      v32 = v31;
      v33 = swift_getObjectType();
      sub_100142B68(v33, v32);
      swift_unknownObjectRelease();
      v34 = v45;
      v35 = v45[13];
      v35(v8, 2, v4);
      sub_100016DB0(&qword_100207028, type metadata accessor for EncryptionState);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = v34[1];
      v37(v8, v4);
      v37(v10, v4);
      if (v36)
      {
      }

      else
      {
        v39 = v17[3];
        v40 = v17[4];
        sub_100008638(v17, v39);
        (*(v40 + 24))(v39, v40);
        v42 = v41;
        v43 = swift_getObjectType();
        v35(v10, 1, v4);
        sub_100142B7C(v10, v43, v42);

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_8:
      v38 = v47;
    }
  }
}

void sub_1000139A8()
{
  v1 = v0;
  v2 = sub_100005804(&qword_100207020);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = &v0[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController];
  v6 = *&v0[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController];
  if (v6)
  {
    v7 = *(v5 + 1);
    v8 = v6;
    sub_100030D2C();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
    swift_beginAccess();
    sub_100016A90(v4, &v1[v10]);
    swift_endAccess();
    sub_100014070();
    v11 = *v5;
    *v5 = 0;
    *(v5 + 1) = 0;

    v12 = &v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent];
    v13 = *&v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24];
    v14 = *&v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32];
    sub_100008638(&v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent], v13);
    (*(v14 + 24))(v13, v14);
    v16 = v15;
    ObjectType = swift_getObjectType();
    v18 = sub_100142A28(ObjectType, v16);
    swift_unknownObjectRelease();
    if (v18)
    {
      swift_unknownObjectRelease();
      if (v18 == v1)
      {
        v19 = *(v12 + 3);
        v20 = *(v12 + 4);
        sub_100008638(v12, v19);
        (*(v20 + 24))(v19, v20);
        v22 = v21;
        v23 = swift_getObjectType();
        sub_100142A3C(0, 0, v23, v22);
        swift_unknownObjectRelease();
      }
    }

    v24 = swift_getObjectType();
    v25 = (*(v7 + 32))(v24, v7);
    if (v25)
    {
      v26 = v25;

      if (v26 == v1)
      {
        (*(v7 + 40))(0, v24, v7);
      }
    }
  }
}

uint64_t sub_100013C10()
{
  v1 = v0;
  v2 = sub_100005804(&qword_100207020);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v39 - v10;
  result = __chkstk_darwin(v9);
  v14 = &v39 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController);
  if (v15)
  {
    v41 = *(v0 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController + 8);
    v16 = v15;
    UUID.init()();
    v43 = v6;
    v17 = *(v6 + 16);
    v17(v4, v14, v5);
    (*(v43 + 56))(v4, 0, 1, v5);
    v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
    swift_beginAccess();
    sub_100016A90(v4, v1 + v18);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v20 = *(v41 + 7);
    v40 = v16;
    v21 = v20(ObjectType);
    v22 = swift_allocObject();
    v23 = v42;
    swift_unknownObjectWeakInit();
    v41 = v14;
    v17(v11, v14, v5);
    v17(v23, v11, v5);
    v24 = v21;
    v25 = v43;
    v26 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    (*(v25 + 32))(v27 + v26, v11, v5);
    v28 = *(v24 + 24);

    if (v28(v29))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        sub_100015888(v23);
      }

      else
      {
      }
    }

    else
    {
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100016B3C;
      *(v32 + 24) = v27;
      swift_beginAccess();
      v33 = *(v24 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 16) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_10004E658(0, v33[2] + 1, 1, v33);
        *(v24 + 16) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_10004E658((v35 > 1), v36 + 1, 1, v33);
      }

      v33[2] = v36 + 1;
      v37 = &v33[2 * v36];
      v37[4] = sub_100016BD8;
      v37[5] = v32;
      *(v24 + 16) = v33;
      swift_endAccess();

      v23 = v42;
    }

    v38 = *(v25 + 8);
    v38(v41, v5);

    v38(v23, v5);
  }

  return result;
}

void sub_100014070()
{
  v1 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures;
  v2 = *(v0 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = v1;
      v3 = *&v2[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures];
      if (v3 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v10 = v2;

        if (!i)
        {
          break;
        }

        v5 = 0;
        v2 = (v3 & 0xC000000000000001);
        while (1)
        {
          if (v2)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          type metadata accessor for MainActor();
          static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          [Strong removeGestureRecognizer:{v7, v10}];

          ++v5;
          if (v8 == i)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

LABEL_15:

      v1 = v11;
    }
  }

  v9 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_100014234()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures;
  v3 = *&v0[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentGestures];
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *&v3[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures];
      if (v4 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v13 = v3;

        if (!i)
        {
          break;
        }

        v6 = 0;
        v3 = (v4 & 0xC000000000000001);
        while (1)
        {
          if (v3)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          type metadata accessor for MainActor();
          static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          [Strong removeGestureRecognizer:{v8, v13}];

          ++v6;
          if (v9 == i)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_15:

      v1 = v0;
    }
  }

  v10 = *&v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController];
  if (v10)
  {
    v11 = *&v1[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController + 8];
    v12 = objc_allocWithZone(type metadata accessor for DocumentContentCoordinator.DocumentGestures());
    *&v1[v2] = sub_100014828(v1, v10, v11);

    _objc_release_x1();
  }
}

uint64_t sub_100014460()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000144F8, v3, v2);
}

uint64_t sub_1000144F8()
{
  v1 = v0[2] + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_documentContentViewController;
  v2 = *v1;
  v0[6] = *v1;
  if (v2)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 88);
    v2;
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_100014688;

    return v9(ObjectType, v3);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100014688()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_1000147C8, v4, v3);
}

uint64_t sub_1000147C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100014828(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v9 = &v3[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_gestureTargetContentController];
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_singleTap] = 0;
  *&v4[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_doubleTap] = 0;
  *&v4[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures] = &_swiftEmptyArrayStorage;
  v38 = a1;
  swift_unknownObjectWeakAssign();
  *(v9 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v10 = swift_getObjectType();
  v39 = a2;
  v11 = (*(a3 + 64))(v10, a3);
  swift_unknownObjectWeakAssign();

  v40.receiver = v4;
  v40.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v40, "init");
  v13 = objc_allocWithZone(UITapGestureRecognizer);
  v14 = v12;
  v15 = [v13 initWithTarget:v14 action:"didSingleTapCanvasScrollView:"];
  v16 = OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_singleTap;
  v17 = *&v14[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_singleTap];
  *&v14[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_singleTap] = v15;

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v14 action:"didDoubleTapCanvasScrollView:"];
  v19 = OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_doubleTap;
  v20 = *&v14[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_doubleTap];
  *&v14[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_doubleTap] = v18;
  v21 = v18;

  [v21 setNumberOfTapsRequired:2];
  result = *&v14[v16];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!*&v14[v19])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [result requireGestureRecognizerToFail:?];
  sub_100005804(&qword_1002064F0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10019A6B0;
  v23 = *&v14[v16];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(result + 32) = v23;
  v24 = *&v14[v19];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  *(result + 40) = v24;
  v25 = OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures;
  *&v14[OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures] = result;
  v26 = v23;
  v27 = v24;

  v28 = *&v14[v25];
  if (v28 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v30 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v32 setDelegate:{v14, v38}];
      [v32 setCancelsTouchesInView:0];
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10019A6B0;
      *(v34 + 32) = Int._bridgeToObjectiveC()();
      *(v34 + 40) = Int._bridgeToObjectiveC()();
      sub_1000085D8(0, &qword_100206FF0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v32 setAllowedTouchTypes:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        [Strong addGestureRecognizer:v32];
      }

      else
      {
      }

      ++v30;
      if (v33 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_20:

  return v14;
}

void sub_100014CA4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
  v5 = *(Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
  v6 = Strong;
  sub_100008638((Strong + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v4);
  (*(v5 + 24))(v4, v5);
  v8 = v7;

  ObjectType = swift_getObjectType();
  if (sub_10013B720(ObjectType, v8))
  {
    sub_10013B7FC(0, ObjectType, v8);
    goto LABEL_15;
  }

  v10 = v1 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_gestureTargetContentController;
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v22 = [v11 navigationController], v12, !v22))
  {
LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  if ((sub_100142BF4(ObjectType, v8) & 1) == 0 && [a1 state] == 3)
  {
    v13 = [v22 isNavigationBarHidden];
    [v22 setNavigationBarHidden:v13 ^ 1 animated:1];
    [v22 setToolbarHidden:v13 ^ 1 animated:1];
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = *(v10 + 8);
      v16 = v14;
      v17 = swift_getObjectType();
      v18 = (*(v15 + 24))(v17, v15);
      v20 = v19;

      if (v18)
      {
        v21 = swift_getObjectType();
        (*(v20 + 8))(v13 ^ 1, 1, v21, v20);
      }
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100014F14(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
    v4 = *(result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
    v5 = result;
    sub_100008638((result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v3);
    (*(v4 + 24))(v3, v4);
    v7 = v6;

    if ([a1 state] == 3)
    {
      ObjectType = swift_getObjectType();
      sub_100142ADC(ObjectType, v7);
      type metadata accessor for PreviewAction(0);
      v9 = sub_10015C73C();
      sub_100122EC8(v9, 1);
      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100015070(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

uint64_t sub_10001515C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures);
  v14 = a1;
  v13[2] = &v14;

  v5 = sub_100016824(sub_100016E3C, v13, v4);

  if ((v5 & 1) != 0 && (v6 = v2 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_gestureTargetContentController, (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v8 = Strong;
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 72))(a2, ObjectType, v9);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_10001530C(uint64_t a1)
{
  v3 = type metadata accessor for ToolbarViewModel.FormFillingState();
  Description = v3[-1].Description;
  __chkstk_darwin(v3);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_allGestures);
  v40 = a1;
  v39 = &v40;

  v8 = sub_100016824(sub_100016A0C, v38, v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    return v11 & 1;
  }

  v10 = *(v1 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_singleTap);
  if (!v10 || v10 != a1)
  {

LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  v12 = Strong;
  v13 = v1 + OBJC_IVAR____TtCC7Preview26DocumentContentCoordinatorP33_F63FA0AC95A695999149BA1EDC42A5CB16DocumentGestures_gestureTargetContentController;
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14 && (v15 = v14, v16 = *(v13 + 8), v17 = swift_getObjectType(), v18 = (*(v16 + 80))(v17, v16), v15, v18) && (v19 = [v18 isDecelerating], v18, v19) || (v20 = &v12[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent], v21 = *&v12[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24], v22 = *&v12[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32], sub_100008638(&v12[OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent], v21), (*(v22 + 24))(v21, v22), v24 = v23, v25 = swift_getObjectType(), LOBYTE(v24) = sub_100142BB8(v25, v24), swift_unknownObjectRelease(), (v24 & 1) != 0) || (v26 = *(v20 + 3), v27 = *(v20 + 4), sub_100008638(v20, v26), (*(v27 + 24))(v26, v27), v29 = v28, v30 = swift_getObjectType(), LOBYTE(v29) = sub_100142BF4(v30, v29), swift_unknownObjectRelease(), (v29 & 1) != 0))
  {

    v11 = 0;
  }

  else
  {
    v31 = *(v20 + 3);
    v32 = *(v20 + 4);
    sub_100008638(v20, v31);
    (*(v32 + 24))(v31, v32);
    v34 = v33;
    ObjectType = swift_getObjectType();
    sub_100142D5C(ObjectType, v34);
    swift_unknownObjectRelease();
    v36 = sub_100115644();

    Description[1](v6, v3);
    v11 = v36 ^ 1;
  }

  return v11 & 1;
}

void sub_10001582C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100015888(a2);
  }
}

uint64_t sub_100015888(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v6;
  v33 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005804(&qword_100207030);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v28[-v9];
  v11 = sub_100005804(&qword_100207020);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v28[-v15];
  v17 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
  swift_beginAccess();
  v18 = *(v5 + 16);
  v32 = a1;
  v30 = v18;
  v18(v16, a1, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_100016C00(v2 + v17, v10);
  sub_100016C00(v16, &v10[v19]);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) != 1)
  {
    sub_100016C00(v10, v14);
    if (v20(&v10[v19], 1, v4) != 1)
    {
      v23 = &v10[v19];
      v22 = v33;
      (*(v5 + 32))(v33, v23, v4);
      sub_100016DB0(&qword_100207038, &type metadata accessor for UUID);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v22, v4);
      sub_100007710(v16, &qword_100207020);
      v24(v14, v4);
      result = sub_100007710(v10, &qword_100207020);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_100007710(v16, &qword_100207020);
    (*(v5 + 8))(v14, v4);
    return sub_100007710(v10, &qword_100207030);
  }

  sub_100007710(v16, &qword_100207020);
  if (v20(&v10[v19], 1, v4) != 1)
  {
    return sub_100007710(v10, &qword_100207030);
  }

  result = sub_100007710(v10, &qword_100207020);
  v22 = v33;
LABEL_8:
  __chkstk_darwin(result);
  *&v28[-16] = v2;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30(v22, v32, v4);
  v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v5 + 32))(v27 + v26, v22, v4);

  withObservationTracking<A>(_:didSet:)();
}

uint64_t sub_100015D74(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v4[2] = a1;
  sub_10005DA00(sub_100016E18, v4);
}

uint64_t sub_100015E70()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000135CC(0);
}

uint64_t sub_100015F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  return sub_10005DA00(sub_100016DF8, v7);
}

void sub_100015F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_100207030);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_100005804(&qword_100207020);
  v10 = __chkstk_darwin(v9 - 8);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  type metadata accessor for MainActor();
  v26 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ObservationTracking.cancel()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v15 = Strong;
  v16 = OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_activePropertiesTrackingID;
  swift_beginAccess();
  (*(v4 + 16))(v13, v25, v3);
  (*(v4 + 56))(v13, 0, 1, v3);
  v17 = *(v6 + 48);
  sub_100016C00(v15 + v16, v8);
  sub_100016C00(v13, &v8[v17]);
  v18 = *(v4 + 48);
  if (v18(v8, 1, v3) == 1)
  {
    sub_100007710(v13, &qword_100207020);
    if (v18(&v8[v17], 1, v3) == 1)
    {
      sub_100007710(v8, &qword_100207020);
LABEL_13:
      sub_1000135CC(1);
      sub_100015888(v25);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v19 = v24;
  sub_100016C00(v8, v24);
  if (v18(&v8[v17], 1, v3) == 1)
  {

    sub_100007710(v13, &qword_100207020);
    (*(v4 + 8))(v19, v3);
LABEL_10:
    sub_100007710(v8, &qword_100207030);
LABEL_11:

    return;
  }

  v20 = v23;
  (*(v4 + 32))(v23, &v8[v17], v3);
  sub_100016DB0(&qword_100207038, &type metadata accessor for UUID);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v4 + 8);
  v22(v20, v3);
  sub_100007710(v13, &qword_100207020);
  v22(v19, v3);
  sub_100007710(v8, &qword_100207020);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_100016454()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DocumentContentCoordinator()
{
  result = qword_100206F70;
  if (!qword_100206F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000165F8()
{
  sub_100016720(319, &qword_100206F80, type metadata accessor for BannerViewModel.Configuration);
  if (v0 <= 0x3F)
  {
    sub_100016720(319, &qword_100206F88, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016720(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100016798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100013194;

  return sub_100014460();
}

uint64_t sub_100016824(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

BOOL sub_10001694C(void *a1)
{
  sub_1000085D8(0, &qword_100206FF8);
  result = 0;
  if (([a1 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
  {
    sub_1000085D8(0, &qword_100207000);
    if (([a1 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2 || [v2 numberOfTapsRequired] <= 1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100016A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016B00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100016B3C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10001582C(v2, v3);
}

uint64_t sub_100016BA0()
{

  return swift_deallocObject();
}

uint64_t sub_100016C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100207020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016C78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100016D3C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100015F18(a1, v4, v5);
}

uint64_t sub_100016DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016E58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100016EB8()
{

  return swift_deallocClassInstance();
}

void sub_100016F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v5 = type metadata accessor for ToolbarViewModel.FormFillingState();
  Description = v5[-1].Description;
  __chkstk_darwin(v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_100005804(&unk_100207010);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_100005804(&qword_100207328);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v41 = *(a1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v41)
  {
    v37 = v41;
    sub_100005804(&qword_100207248);
    v38 = v2;
    Bindable.wrappedValue.getter();
    v17 = type metadata accessor for PDFDocumentViewModel();
    sub_1001331EC(v17, &off_1001F8908, v13);

    v18 = type metadata accessor for BannerViewModel.Configuration(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) == 1)
    {
      sub_100007710(v13, &unk_100207010);
      v20 = 1;
    }

    else
    {
      sub_100082668(v16);
      (*(v19 + 8))(v13, v18);
      v20 = 0;
    }

    v21 = type metadata accessor for BannerViewConfiguration();
    (*(*(v21 - 8) + 56))(v16, v20, 1, v21);
    v22 = v37;
    dispatch thunk of PaperDocumentViewController.bannerViewConfiguration.setter();

    v3 = v38;
  }

  v23 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_formFillingState;
  swift_beginAccess();
  Description[2](v10, a1 + v23, v5);
  sub_100005804(&qword_100207248);
  Bindable.wrappedValue.getter();
  v24 = type metadata accessor for PDFDocumentViewModel();
  v25 = v40;
  sub_100136294(&off_1001F8908, v40);

  sub_10001C718(&qword_100207330, type metadata accessor for ToolbarViewModel.FormFillingState);
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = Description[1];
  (v26)(v25, v5);
  v27 = (v26)(v10, v5);
  if ((v23 & 1) == 0)
  {
    __chkstk_darwin(v27);
    *(&v36 - 2) = a1;
    *(&v36 - 1) = v3;
    sub_100005804(&qword_100207338);
    UIViewControllerRepresentableContext.animate(changes:completion:)();
  }

  v28 = *(a1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled);
  Bindable.wrappedValue.getter();
  v29 = sub_10013534C(v24, &off_1001F8908) & 1;

  if (v28 != v29)
  {
    Bindable.wrappedValue.getter();
    v30 = sub_10013534C(v24, &off_1001F8908);

    sub_100017CFC(v30 & 1);
  }

  v31 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isSearchActive;
  v32 = *(a1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isSearchActive);
  Bindable.wrappedValue.getter();
  v33 = sub_10013595C(v24, &off_1001F8908) & 1;

  if (v32 != v33)
  {
    Bindable.wrappedValue.getter();
    v34 = sub_10013595C(v24, &off_1001F8908);

    v35 = *(a1 + v31);
    *(a1 + v31) = v34 & 1;
    sub_100017E54(v35);
  }
}

uint64_t sub_10001748C(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarViewModel.FormFillingState();
  Description = v2[-1].Description;
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100207248);
  Bindable.wrappedValue.getter();
  type metadata accessor for PDFDocumentViewModel();
  sub_100136294(&off_1001F8908, v5);

  v6 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_formFillingState;
  swift_beginAccess();
  Description[3](a1 + v6, v5, v2);
  swift_endAccess();
  sub_100017F94();
  (Description[1])(v5, v2);
}

uint64_t sub_100017654()
{
  sub_100005804(&qword_100207248);
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000176AC(uint64_t a1)
{
  sub_10006699C(a1);
  type metadata accessor for PDFDocumentContentViewController(0);

  return swift_dynamicCastClassUnconditional();
}

id sub_100017700@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(type metadata accessor for DocumentContentCoordinator());
  sub_10001D760(v2, v5);
  result = sub_100068814(v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_100017794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C718(&qword_1002072F0, type metadata accessor for PDFDocumentViewRepresentable);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C718(&qword_1002072F0, type metadata accessor for PDFDocumentViewRepresentable);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000178BC()
{
  sub_10001C718(&qword_1002072F0, type metadata accessor for PDFDocumentViewRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_100017914(uint64_t a1)
{
  v3 = sub_100005804(&qword_1002071C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController] = 0;
  v6 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_formFillingState;
  v7 = type metadata accessor for ToolbarViewModel.FormFillingState.ActivationSource();
  (*(v7[-1].Description + 7))(v5, 1, 1, v7);
  sub_100115634(0, v5, &v1[v6]);
  v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled] = 0;
  v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isSearchActive] = 0;
  *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher] = 0;
  *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_pdfUpdatesCancellable] = 0;
  v8 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_findSessionDidEndObservationToken;
  v9 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isInSizeTransition] = 0;
  *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_viewModel] = a1;
  type metadata accessor for SidebarThumbnailViewController();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v11 = [v10 init];
  *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperThumbnailViewController] = v11;
  v12 = type metadata accessor for PDFDocumentContentViewController(0);
  v16.receiver = v1;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "init");
  sub_10001C718(&qword_1002071C8, type metadata accessor for PDFDocumentContentViewController);
  v14 = v13;

  sub_100158138();

  return v14;
}

void sub_100017CFC(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled;
  v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled] = a1;
  v3 = *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
    if (v6)
    {
      v7 = v6;
      v8 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (!v8)
      {
        __break(1u);
        return;
      }

      [v8 setAllowsDarkAppearanceContent:v4[v2]];
    }

    v9 = [v4 traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (v10 == 2 && v4[v2] == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    [v5 setOverrideUserInterfaceStyle:v11];
    v12 = v5;
    v13 = dispatch thunk of PaperDocumentViewController.toolPicker.getter();

    [v13 setColorUserInterfaceStyle:v11];
  }
}

void sub_100017E54(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isSearchActive) == (a1 & 1))
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (!*(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isSearchActive))
  {
    if (!v2)
    {
      return;
    }

    v6 = v2;
    v7 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

    if (!v7)
    {
      return;
    }

    v8 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v8)
    {
      v9 = [v8 findInteraction];

      [v9 dismissFindNavigator];
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

  if (!v4)
  {
    return;
  }

  v5 = dispatch thunk of PaperDocumentView.pdfView.getter();

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = [v5 findInteraction];

  [v9 presentFindNavigatorShowingReplace:0];
LABEL_11:
}

uint64_t sub_100017F94()
{
  v1 = v0;
  v2 = type metadata accessor for ToolbarViewModel.FormFillingState.ActivationSource();
  Description = v2[-1].Description;
  __chkstk_darwin(v2);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100005804(&qword_1002071F0);
  __chkstk_darwin(v60);
  v61 = &v52 - v4;
  v5 = sub_100005804(&qword_1002071C0);
  v6 = __chkstk_darwin(v5 - 8);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v62 = &v52 - v9;
  __chkstk_darwin(v8);
  v63 = &v52 - v10;
  v11 = type metadata accessor for ToolbarViewModel.FormFillingState();
  v12 = v11[-1].Description;
  v13 = __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = type metadata accessor for CanvasEditingMode();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v66 = &v52 - v24;
  result = __chkstk_darwin(v23);
  v27 = &v52 - v26;
  v28 = *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v28)
  {
    v65 = v28;
    if ([v1 isEditing])
    {
      (*(v19 + 104))(v27, enum case for CanvasEditingMode.allowsAll(_:), v18);
      v29 = v65;
      v30 = v66;
      goto LABEL_14;
    }

    v53 = v2;
    v54 = v22;
    v56 = v18;
    v57 = v27;
    v31 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_formFillingState;
    swift_beginAccess();
    v52 = v12[2];
    v52(v17, &v1[v31], v11);
    v32 = sub_100115644();
    v33 = v12[1];
    v33(v17, v11);
    v55 = v19;
    v34 = *(v19 + 104);
    if (v32)
    {
      v34(v57, enum case for CanvasEditingMode.formFilling(_:), v56);
      v52(v15, &v1[v31], v11);
      v35 = v63;
      sub_100115674(v63);
      v33(v15, v11);
      v36 = Description;
      v37 = v62;
      v38 = v53;
      Description[13](v62, 1, v53);
      (v36[7])(v37, 0, 1, v38);
      v39 = v61;
      v40 = *(v60 + 48);
      sub_10001D130(v35, v61);
      sub_10001D130(v37, v39 + v40);
      v41 = v36[6];
      if ((v41)(v39, 1, v38) == 1)
      {
        sub_100007710(v37, &qword_1002071C0);
        sub_100007710(v35, &qword_1002071C0);
        v42 = (v41)(v39 + v40, 1, v38);
        v18 = v56;
        v27 = v57;
        v19 = v55;
        v29 = v65;
        v30 = v66;
        if (v42 == 1)
        {
          sub_100007710(v39, &qword_1002071C0);
LABEL_13:
          v22 = v54;
LABEL_14:
          dispatch thunk of PaperDocumentViewController.editingMode.getter();
          sub_10001C718(&qword_1002071F8, &type metadata accessor for CanvasEditingMode);
          if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            (*(v19 + 16))(v22, v27, v18);
            v48 = (*(v19 + 88))(v22, v18);
            if (v48 != enum case for CanvasEditingMode.allowsPencilDrawingOnly(_:) && v48 != enum case for CanvasEditingMode.allowsAll(_:))
            {
              v49 = v22;
              v50 = *(v19 + 8);
              v50(v30, v18);
              v51 = v49;
LABEL_20:
              v50(v51, v18);
              dispatch thunk of PaperDocumentViewController.setEditingMode(_:didUseBanner:)();

              return (v50)(v27, v18);
            }

            [v29 becomeFirstResponder];
          }

          v50 = *(v19 + 8);
          v51 = v30;
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v59;
        sub_10001D130(v39, v59);
        v44 = (v41)(v39 + v40, 1, v38);
        v19 = v55;
        v29 = v65;
        v30 = v66;
        if (v44 != 1)
        {
          v45 = Description;
          v46 = v58;
          Description[4](v58, v39 + v40, v38);
          sub_10001C718(&qword_100207200, type metadata accessor for ToolbarViewModel.FormFillingState.ActivationSource);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v47 = v45[1];
          (v47)(v46, v38);
          sub_100007710(v62, &qword_1002071C0);
          sub_100007710(v63, &qword_1002071C0);
          (v47)(v59, v38);
          sub_100007710(v39, &qword_1002071C0);
          v18 = v56;
          v27 = v57;
          goto LABEL_13;
        }

        sub_100007710(v62, &qword_1002071C0);
        sub_100007710(v63, &qword_1002071C0);
        (Description[1])(v43, v38);
        v18 = v56;
        v27 = v57;
      }

      sub_100007710(v39, &qword_1002071F0);
      goto LABEL_13;
    }

    v18 = v56;
    v27 = v57;
    v34(v57, enum case for CanvasEditingMode.allowsPencilDrawingOnly(_:), v56);
    v19 = v55;
    v29 = v65;
    v30 = v66;
    goto LABEL_13;
  }

  return result;
}

void sub_1000187F0()
{
  v1 = *&v0[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
    if (v4)
    {
      v5 = v4;
      v6 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 setAllowsDarkAppearanceContent:v2[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled]];
    }

    v7 = [v2 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == 2 && (v2[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isDarkModeSupportEnabled] & 1) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [v3 setOverrideUserInterfaceStyle:v9];
    v10 = v3;
    v11 = dispatch thunk of PaperDocumentViewController.toolPicker.getter();

    [v11 setColorUserInterfaceStyle:v9];
  }
}

id sub_100018944()
{
  v1 = v0;
  swift_getObjectType();
  type metadata accessor for Logger();
  v2 = sub_100005804(&qword_100207220);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v6 = sub_100005804(&qword_1002071D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for PDFDocumentContentViewController(0);
  v31.receiver = v0;
  v31.super_class = v9;
  objc_msgSendSuper2(&v31, "viewDidLoad");
  v10 = sub_100019A50();
  dispatch thunk of PaperDocumentViewController.pageLabelShowsSidebarIconInRegularWidth.setter();
  dispatch thunk of PaperDocumentViewController.isThumbnailViewCollapsed.setter();
  sub_10001A5B4();
  sub_100005804(&qword_100207228);
  v11 = swift_allocObject();
  v30 = xmmword_10019A9F0;
  *(v11 + 16) = xmmword_10019A9F0;
  *(v11 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v11 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v12 = swift_allocObject();
  *(v12 + 16) = v30;
  *(v12 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v12 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  [v10 willMoveToParentViewController:v0];
  result = [v10 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v14 setFrame:{v17, v19, v21, v23}];
  result = [v10 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = result;
  *&v30 = v3;
  [result setAutoresizingMask:18];

  [v1 addChildViewController:v10];
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  result = [v10 view];
  if (result)
  {
    v26 = result;
    [v25 addSubview:result];

    [v10 didMoveToParentViewController:v1];
    v27 = [objc_opt_self() defaultCenter];
    sub_10001D220();
    sub_10001D26C();
    NSNotificationCenter.BaseMessageIdentifier.init<A>()();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100007888(&qword_100207240, &qword_100207220);
    NSNotificationCenter.addObserver<A, B>(of:for:using:)();

    (*(v30 + 8))(v5, v2);
    v28 = type metadata accessor for NSNotificationCenter.ObservationToken();
    (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
    v29 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_findSessionDidEndObservationToken;
    swift_beginAccess();
    sub_10001D2C8(v8, v1 + v29);
    return swift_endAccess();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100018E7C(void **a1)
{
  v1 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v4;
    v6 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v7)
    {
      v8 = [v7 findInteraction];

      v9 = [v8 activeFindSession];
      if (v9)
      {

        if (v1 == v9)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *(v10 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
            v12 = *(v10 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
            v13 = v10;
            sub_100008638((v10 + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v11);
            v14 = *(v12 + 24);
            v15 = v3;
            v14(v11, v12);
            v17 = v16;
            ObjectType = swift_getObjectType();
            sub_100142D34(0, ObjectType, v17);

            swift_unknownObjectRelease();
            return;
          }
        }
      }

LABEL_9:

      return;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_10001913C(char a1)
{
  v3 = sub_100005804(&qword_100207208);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-1] - v4;
  v6 = sub_100005804(&qword_100207210);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-1] - v7;
  v9 = type metadata accessor for FileEntityIdentifier();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23[-1] - v14;
  v16 = type metadata accessor for PDFDocumentContentViewController(0);
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1);
  if (qword_100206040 != -1)
  {
    swift_once();
  }

  v17 = *&v1[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_viewModel];
  v23[3] = v16;
  v23[4] = &off_1001EF220;
  v23[0] = v1;
  v18 = v1;
  sub_10004D0D4(v17, &off_1001F8908, v23, v8);
  sub_10000867C(v23);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*(v10 + 32))(v15, v8, v9);
  v19 = [v18 view];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for DocumentEntity();
    (*(v10 + 16))(v13, v15, v9);
    sub_10001C718(&qword_100207218, type metadata accessor for DocumentEntity);
    EntityIdentifier.init<A>(for:identifier:)();
    v21 = type metadata accessor for EntityIdentifier();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    UIView.appEntityIdentifier.setter();

    (*(v10 + 8))(v15, v9);
    sub_10001A728();
  }

  else
  {
    __break(1u);
  }
}

id sub_100019518(char a1)
{
  v2 = v1;
  v4 = sub_100005804(&qword_100207208);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  result = [v2 view];
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for EntityIdentifier();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    UIView.appEntityIdentifier.setter();

    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004D42C(*&v2[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_viewModel], &off_1001F8908);
    v10 = type metadata accessor for PDFDocumentContentViewController(0);
    v12.receiver = v2;
    v12.super_class = v10;
    return objc_msgSendSuper2(&v12, "viewDidDisappear:", a1 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000196AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void *sub_10001978C()
{
  v1 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher;
  if (*(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController____lazy_storage___underlyingCanvasObservabilityWatcher);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ObservabilityWatcher();
    v2 = swift_allocObject();
    v2[2] = &_swiftEmptyArrayStorage;
    v2[3] = sub_10001D120;
    v2[4] = v3;
    v4 = objc_opt_self();
    v5 = PDFViewVisiblePagesChangedNotification;

    v6 = [v4 defaultCenter];
    v11[4] = sub_10001D128;
    v11[5] = v2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10005E19C;
    v11[3] = &unk_1001EF358;
    v7 = j___Block_copy(v11);
    v8 = v5;

    v9 = [v6 addObserverForName:v8 object:0 queue:0 usingBlock:v7];
    j___Block_release(v7);

    swift_unknownObjectRelease();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100019978()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
    if (!v2 || (v3 = v2, v4 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter(), v3, !v4))
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (!v5)
    {
LABEL_9:

      return v5;
    }

    v6 = [v5 documentView];

    if (v6)
    {
      v5 = 1;
      v1 = v6;
      goto LABEL_9;
    }
  }

  return 0;
}

id sub_100019A50()
{
  v1 = v0;
  v2 = sub_10015B48C();
  sub_10015B4EC();
  type metadata accessor for PaperDocumentViewController();
  v3 = v2;
  v4 = PaperDocumentViewController.__allocating_init(context:data:)();
  sub_10001C718(&qword_1002071D8, type metadata accessor for PDFDocumentContentViewController);
  swift_unknownObjectRetain();
  dispatch thunk of PaperDocumentViewController.delegate.setter();
  v5 = *(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  *(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController) = v4;
  v6 = v4;

  sub_100017F94();
  dispatch thunk of PaperDocumentViewController.publisher.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005804(&qword_1002071E0);
  sub_100007888(&qword_1002071E8, &qword_1002071E0);
  v7 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_pdfUpdatesCancellable) = v7;

  return v6;
}

uint64_t sub_100019C20(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002071B0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v19[-1] - v3);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100145164(v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (j__os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    j___os_log_impl(&dword_100000000, v9, v10, "PDFDocumentContentViewController: paperDocumentViewController did update paper document", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    v14 = sub_100005804(&qword_1002071B8);
    v20 = v14;
    v15 = sub_10001CF38(v19);
    (*(*(v14 - 8) + 16))(v15, a1, v14);
    sub_1001781A8(v19, v4);
    v16 = type metadata accessor for CapsuleWrapper();
    (*(v16[-1].Description + 7))(v4, 0, 1, v16);
    sub_100159B68(v4);
  }
}

void sub_100019F14()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

    if (v3)
    {
      v4 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v4)
      {
        [v4 documentScrollView];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100019F9C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (!v2)
  {
    return 1;
  }

  v4 = v2;
  v5 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

  if (!v5)
  {
    return 1;
  }

  v6 = dispatch thunk of PaperDocumentView.pdfView.getter();

  if (!v6)
  {
    return 1;
  }

  v7 = [v6 acceptSingleTouch:a1];

  return v7 ^ 1;
}

id sub_10001A028(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for ThumbnailViewerType();
  Description = v8[-1].Description;
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isInSizeTransition) = 1;
  sub_10015A1F4();
  Description[13](v11, 0, v8);
  sub_10018F54C(v11);

  v12 = [v3 traitCollection];
  v13 = [v12 horizontalSizeClass];

  sub_1001901CC(0xD00000000000001FLL, 0x80000001001B0810);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v13;
  v27 = sub_10001D1D8;
  v28 = v14;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100016E58;
  v26 = &unk_1001EF3A8;
  v15 = j___Block_copy(&aBlock);
  v16 = v4;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v27 = sub_10001D218;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100016E58;
  v26 = &unk_1001EF3F8;
  v18 = j___Block_copy(&aBlock);
  v19 = v16;

  [a1 animateAlongsideTransition:v15 completion:v18];
  j___Block_release(v18);
  j___Block_release(v15);
  v20 = type metadata accessor for PDFDocumentContentViewController(0);
  v22.receiver = v19;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

uint64_t sub_10001A2F8(uint64_t a1, void *a2, id a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [a2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 != a3)
  {
    sub_1001901CC(0xD00000000000002FLL, 0x80000001001B0850);
    sub_10001A728();
  }
}

uint64_t sub_10001A3F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001A5B4();
  *(a2 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isInSizeTransition) = 0;
  sub_1001901CC(0xD000000000000019, 0x80000001001B0830);
}

uint64_t sub_10001A5B4()
{
  v1 = type metadata accessor for ThumbnailViewerType();
  Description = v1[-1].Description;
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015A1F4();
  sub_10015A1F4();
  v5 = sub_10018F75C();

  if (v5)
  {
    v6 = [v0 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      v8 = &dword_1001AA23C;
    }

    else
    {
      v8 = &dword_1001AA238;
    }

    Description[13](v4, *v8, v1);
  }

  else
  {
    Description[13](v4, 0, v1);
  }

  sub_10018F54C(v4);
}

void sub_10001A728()
{
  v1 = *&v0[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v1)
  {
    v5 = v1;
    sub_10015A1F4();
    v2 = sub_10018F75C();

    if (v2)
    {
      v3 = [v0 traitCollection];
      v4 = [v3 horizontalSizeClass];

      if (v4 == 1)
      {
        sub_10015A1F4();
        sub_10018FB30();
      }
    }

    dispatch thunk of PaperDocumentViewController.isThumbnailViewCollapsed.setter();
    dispatch thunk of PaperDocumentViewController.allowsUserInteractionToToggleThumbnailViewVisibility.setter();
  }
}

uint64_t sub_10001A8D0()
{

  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_formFillingState;
  v2 = type metadata accessor for ToolbarViewModel.FormFillingState();
  (*(v2[-1].Description + 1))(v0 + v1, v2);

  return sub_100007710(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_findSessionDidEndObservationToken, &qword_1002071D0);
}

void sub_10001AACC()
{
  type metadata accessor for ToolbarViewModel.FormFillingState();
  if (v0 <= 0x3F)
  {
    sub_10001D5B4(319, &qword_100207160, &type metadata accessor for NSNotificationCenter.ObservationToken, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_10001AC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  v2 = v1;
  return v1;
}

void sub_10001AC98(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_10001ACEC()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AD80, v2, v1);
}

uint64_t sub_10001AD80()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10001ADE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController];
  if (v10 && (v11 = v10, v12 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter(), v11, v12))
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = v12;
    v14[4] = v3;
    v14[5] = a1;
    aBlock[4] = sub_10001CE20;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000834C4;
    aBlock[3] = &unk_1001EF2E0;
    v15 = j___Block_copy(aBlock);

    v16 = v12;
    v17 = v3;

    [v13 animateWithDuration:v15 animations:0.2];
    j___Block_release(v15);
  }

  else
  {
    sub_100145164(v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      j___os_log_impl(&dword_100000000, v18, v19, "Could not find PDFView when performing Zoom", v20, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10001B044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10003D858(a3, WitnessTable);
}

uint64_t sub_10001B098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D554(a3, WitnessTable);
}

uint64_t sub_10001B0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D588(a3, WitnessTable);
}

uint64_t sub_10001B140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D5BC(a3, WitnessTable);
}

uint64_t sub_10001B194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10002D5F0(a3, WitnessTable);
}

double sub_10001B1F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10001B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000315B8(a2, a3, WitnessTable);
}

void sub_10001B274(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for EncryptionState();
  Description = v55[-1].Description;
  v9 = __chkstk_darwin(v55);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_100005804(&qword_1002071B0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v50 - v15);
  v17 = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v52 = v6;
  [v17 setFindInteractionEnabled:1];

  v19 = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (!v19)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 documentScrollView];

  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
    [v21 setAccessibilityIdentifier:v22];
  }

  v54 = v13;
  v51 = v5;
  dispatch thunk of PaperDocumentView.automaticallyAdjustScaleFactor.setter();
  v23 = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v23;
  [v23 setAutoScales:1];

  v25 = *(*(v3 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperThumbnailViewController) + OBJC_IVAR____TtC7PreviewP33_23F84ACC7A87AFB741EE96320BC42BEA30SidebarThumbnailViewController_paperDocumentThumbnailView);
  v26 = a2;
  dispatch thunk of PaperDocumentThumbnailView.documentView.setter();

  v27 = *(v3 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_viewModel);
  v57 = sub_100005804(&qword_1002071B8);
  sub_10001CF38(&v56);
  dispatch thunk of PaperDocumentViewController.paperDocument.getter();
  sub_1001781A8(&v56, v16);
  v28 = type metadata accessor for CapsuleWrapper();
  (*(v28[-1].Description + 7))(v16, 0, 1, v28);
  sub_100159B68(v16);
  v29 = type metadata accessor for PDFDocumentViewModel();
  v30 = v54;
  v50 = v27;
  sub_100132600(&off_1001F8908, v54);
  v31 = v3;
  v32 = Description[13];
  v33 = v55;
  v32(v11, 3, v55);
  v34 = sub_1000FF284(v30, v11);
  v35 = Description[1];
  v35(v11, v33);
  v35(v30, v33);
  if (v34)
  {
    v32(v30, 4, v33);
    v36 = v30;
    v37 = v29;
LABEL_8:
    sub_1001326E8(v36, v37, &off_1001F8908);
    goto LABEL_16;
  }

  v38 = *(v31 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v38)
  {
    v39 = v38;
    v40 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();
    if (!v40)
    {
      goto LABEL_15;
    }

    v41 = v40;
    v42 = dispatch thunk of PaperDocumentView.pdfView.getter();

    if (v42)
    {
      v43 = [v42 document];

      if (v43)
      {
        v44 = [v43 isEncrypted];

        if ((v44 & 1) == 0)
        {
          v45 = v54;
          v32(v54, 1, v55);
          v36 = v45;
          v37 = v29;
          goto LABEL_8;
        }

        goto LABEL_16;
      }

LABEL_15:

      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_16:
  sub_1000187F0();
  static os_signpost_type_t.end.getter();
  v46 = sub_1001454D8();
  sub_100115224();
  v47 = v53;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v52 + 8))(v47, v51);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    sub_100014234();
  }
}

uint64_t sub_10001B818()
{
  v1 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_10005DB88(0, 0, v3, &unk_10019ACD0, v7);
}

uint64_t sub_10001B948(uint64_t a1, char a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 24);
    v7 = *(result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent + 32);
    v8 = result;
    sub_100008638((result + OBJC_IVAR____TtC7Preview26DocumentContentCoordinator_parent), v6);
    (*(v7 + 24))(v6, v7);
    v10 = v9;
    ObjectType = swift_getObjectType();
    sub_100142DAC(a2 & 1, ObjectType, v10);
    sub_100142B04(ObjectType, v10);
    sub_100148B50(a3 & 1);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for EncryptionState();
  v4[3] = v5;
  v4[4] = v5[-1].Description;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001BB70, v7, v6);
}

uint64_t sub_10001BB70()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 104))(v1, 3, v2);
  v4 = type metadata accessor for PDFDocumentViewModel();
  sub_1001326E8(v1, v4, &off_1001F8908);

  v5 = v0[1];

  return v5();
}

id sub_10001C004(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10001C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10015DD64(&v18);
  if (v18 <= 1u)
  {
    if (v18)
    {
      dispatch thunk of PaperDocumentView.zoomOut()();
    }

    else
    {
      dispatch thunk of PaperDocumentView.zoomIn()();
    }

    goto LABEL_16;
  }

  if (v18 == 2)
  {
    v7 = dispatch thunk of PaperDocumentView.pdfView.getter();
    if (v7)
    {
      v8 = v7;
      v9 = dispatch thunk of PaperDocumentView.pdfView.getter();
      if (v9)
      {
        v10 = v9;
        [v9 scaleFactorForSizeToFit];
        v12 = v11;

        [v8 setScaleFactor:v12];

        return;
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v18 == 3)
  {
    v5 = dispatch thunk of PaperDocumentView.pdfView.getter();
    if (v5)
    {
      v6 = v5;
      [v5 setScaleFactor:1.0];

      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = dispatch thunk of PaperDocumentView.pdfView.getter();
  if (v13)
  {
    v14 = v13;
    [v13 scaleFactor];
    v16 = v15;

    type metadata accessor for ZoomAction(0);
    v17 = sub_10015E5DC(v16);
    sub_10001ADE4(a4, v17);

LABEL_16:

    return;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_10001C25C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 session];

        if (v5)
        {
          v6 = [objc_allocWithZone(UIWindowSceneDestructionRequestOptions) init];
          [v6 setWindowDismissalAnimation:1];
          v7 = [objc_opt_self() sharedApplication];
          [v7 requestSceneSessionDestruction:v5 options:v6 errorHandler:0];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10001C3A0(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = sub_100005804(&qword_10020A0C0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for PreviewTelemetryAction();
  Description = v6[-1].Description;
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewTelemetryLogger();
  Description[13](v9, 29, v6);
  sub_10015A4E4();
  sub_1001193FC(v5);

  v10 = type metadata accessor for UTType();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_100143D70(v9, v5);
  sub_100007710(v5, &qword_10020A0C0);
  (Description[1])(v9, v6);
  v11 = *(v2 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v11)
  {
    v12 = v11;
    v13 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

    if (v13)
    {
      v14 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v14)
      {
        v15 = [v14 findInteraction];

        if (v15)
        {
          [v15 presentFindNavigatorShowingReplace:0];
          v16 = String._bridgeToObjectiveC()();
          [v15 setSearchText:v16];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10001C6C0(uint64_t a1)
{
  result = sub_10001C718(&qword_1002071A0, type metadata accessor for PDFDocumentContentViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001C718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C760(void *a1, void *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a2 horizontalSizeClass];
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v4 != v6 && (*(a1 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_isInSizeTransition) & 1) == 0)
  {
    sub_10001A5B4();
    sub_10001A728();
  }
}

uint64_t sub_10001C868(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 traitCollection];
  v5 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:a2];

  if (v5)
  {
    sub_1000187F0();
  }
}

void sub_10001C94C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v27 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v8 && (v9 = v8, v10 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter(), v9, v10) && (v11 = dispatch thunk of PaperDocumentView.pdfView.getter(), v10, v11))
  {
    sub_10015DD64(&v30);
    v12 = v30;
    v13 = v31;
    if (v32 == 1)
    {
      if (v30 | v31)
      {
        [v11 goToNextPage:0];
      }

      else
      {
        [v11 goToPreviousPage:0];
      }
    }

    else
    {
      if ((v31 & 1) == 0)
      {
        v17 = [v11 document];
        if (v17)
        {
          if (__OFSUB__(v12, 1))
          {
            __break(1u);
            return;
          }

          v18 = v17;
          v19 = [v17 pageAtIndex:v12 - 1];

          if (v19)
          {
            [v11 goToPage:v19];

            return;
          }
        }
      }

      sub_100145164(v7);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (j__os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29 = v23;
        *v22 = 136315138;
        v27[1] = v12;
        v28 = v13 & 1;
        sub_100005804(&qword_1002071A8);
        v24 = String.init<A>(describing:)();
        v26 = sub_10008B044(v24, v25, &v29);

        *(v22 + 4) = v26;
        j___os_log_impl(&dword_100000000, v20, v21, "Invalid page number for Go To: %s", v22, 0xCu);
        sub_10000867C(v23);
      }

      (*(v2 + 8))(v7, v1);
    }
  }

  else
  {
    sub_100145164(v5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (j__os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      j___os_log_impl(&dword_100000000, v14, v15, "Could not find PDFView when performing Go To", v16, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_10001CCBC()
{
  sub_10015DD64(&v3);
  v1 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of PaperDocumentViewController.rotateCurrentPage(left:)();
  }
}

void sub_10001CD18()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of PaperDocumentViewController.paperDocumentView.getter();

    if (v3)
    {
      v4 = dispatch thunk of PaperDocumentView.pdfView.getter();

      if (v4)
      {
        v5 = [v4 findInteraction];

        [v5 dismissFindNavigator];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10001CDD0()
{

  return swift_deallocObject();
}

uint64_t sub_10001CE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CE44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10001CE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013194;

  return sub_10001BA7C(a1, v4, v5, v6);
}

uint64_t *sub_10001CF38(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001CF9C()
{
  v1 = type metadata accessor for ThumbnailViewerType();
  Description = v1[-1].Description;
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Preview32PDFDocumentContentViewController_paperDocumentViewController);
  if (v5)
  {
    v6 = v5;
    v7 = dispatch thunk of PaperDocumentViewController.isThumbnailViewCollapsed.getter();

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  sub_10015A1F4();
  Description[13](v4, 2, v1);
  sub_100190A30(v8 & 1, v4);

  return (Description[1])(v4, v1);
}

uint64_t sub_10001D0E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10001D130(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_1002071C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D1A0()
{

  return swift_deallocObject();
}

uint64_t sub_10001D1E0()
{

  return swift_deallocObject();
}

unint64_t sub_10001D220()
{
  result = qword_100207230;
  if (!qword_100207230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100207230);
  }

  return result;
}

unint64_t sub_10001D26C()
{
  result = qword_100207238;
  if (!qword_100207238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100207238);
  }

  return result;
}

uint64_t sub_10001D2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_1002071D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}