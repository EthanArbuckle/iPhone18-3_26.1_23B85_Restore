_OWORD *IPC::Decoder::decode<std::unique_ptr<WebCore::TransformationMatrix>>(_OWORD *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      if (v6)
      {
        (*(*v13 + 16))(v13);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v14 = *(a2 + 3);
    if (v14)
    {
      if (v6)
      {
        (*(*v14 + 16))(v14, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15 && v6)
    {
      (*(*v15 + 16))(v15, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    *result = 0;
    goto LABEL_8;
  }

  IPC::Decoder::decode<WebCore::TransformationMatrix>(v18, a2);
  if (v19 == 1)
  {
    result = WebCore::TransformationMatrix::operator new(0x80, v8);
    v9 = v18[5];
    result[4] = v18[4];
    result[5] = v9;
    v10 = v18[7];
    result[6] = v18[6];
    result[7] = v10;
    v11 = v18[1];
    *result = v18[0];
    result[1] = v11;
    v12 = v18[3];
    result[2] = v18[2];
    result[3] = v12;
    *v3 = result;
LABEL_8:
    *(v3 + 8) = 1;
    return result;
  }

LABEL_16:
  *v3 = 0;
  *(v3 + 8) = 0;
  v16 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WindRule>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::LockBackForwardList,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = result;
    IPC::Decoder::markInvalid(a1);
    return v3;
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::BufferSetBackendHandle,void>::encode(IPC::Encoder *a1, unint64_t a2)
{
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 96);
  IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 120);

  return IPC::ArgumentCoder<std::optional<WebKit::BufferAndBackendInfo>,void>::encode<IPC::Encoder,std::optional<WebKit::BufferAndBackendInfo>>(a1, a2 + 144);
}

WTF::MachSendRight *IPC::ArgumentCoder<WebKit::BufferSetBackendHandle,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(a1, v21);
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v18, a1);
  IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v15, a1);
  result = IPC::Decoder::decode<std::optional<WebKit::BufferAndBackendInfo>>(&v12, a1);
  if (!*a1)
  {
    goto LABEL_13;
  }

  if ((v22 & 1) == 0 || (result = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](v7, v21), (v20 & 1) == 0) || (v8 = v18, v9[0] = v19, (v17 & 1) == 0) || (*&v9[8] = v15, v9[24] = v16, (v14 & 1) == 0))
  {
    __break(1u);
LABEL_13:
    *a2 = 0;
    *(a2 + 168) = 0;
    goto LABEL_8;
  }

  v10 = v12;
  v11 = v13;
  result = std::__optional_move_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__optional_move_base[abi:sn200100](a2, v7);
  v5 = v10;
  *(a2 + 128) = *&v9[16];
  *(a2 + 144) = v5;
  *(a2 + 160) = v11;
  v6 = *v9;
  *(a2 + 96) = v8;
  *(a2 + 112) = v6;
  *(a2 + 168) = 1;
  if (v7[88] == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v7);
  }

LABEL_8:
  if (v22 == 1 && v21[88] == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v21);
  }

  return result;
}

void sub_19D7975FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a20 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(&a9);
  }

  if (*(v20 - 40) == 1 && *(v20 - 48) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor((v20 - 136));
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteScrollingCoordinatorTransaction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::unique_ptr<WebCore::ScrollingStateTree>,void>::encode<IPC::Encoder,std::unique_ptr<WebCore::ScrollingStateTree> const&>(a1, a2);
  LOBYTE(v6) = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  v4 = *(a2 + 16) != 0;
  v6 = *(a2 + 16);
  v7 = v4;
  return IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v6);
}

void IPC::ArgumentCoder<WebKit::RemoteScrollingCoordinatorTransaction,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v33 = a1[3];
    if (v33)
    {
      if (v4)
      {
        (*(*v33 + 16))(v33);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_70;
  }

  v7 = v5 + 1;
  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_70:
    *a1 = 0;
    a1[1] = 0;
    v34 = a1[3];
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_73;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_73:
    *a1 = 0;
    a1[1] = 0;
    v35 = a1[3];
    if (v35 && v4)
    {
      (*(*v35 + 16))(v35, v6);
    }

    goto LABEL_58;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_73;
  }

  if (!*v5)
  {
    v55 = 0;
    v13 = 1;
    v56 = 1;
    goto LABEL_36;
  }

  if (v4 <= v7 - v6)
  {
    v39 = 0;
    v40 = 0;
    *a1 = 0;
    a1[1] = 0;
    v41 = a1[3];
    if (v41)
    {
      (*(*v41 + 16))(v41);
      v40 = *a1;
      v39 = a1[1];
    }

    goto LABEL_85;
  }

  v8 = v5 + 2;
  a1[2] = (v5 + 2);
  if (v5 == -1)
  {
    v39 = v4;
    v40 = v6;
LABEL_85:
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (v42 && v39)
    {
      (*(*v42 + 16))(v42, v40, v39);
      v6 = *a1;
      v4 = a1[1];
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    goto LABEL_87;
  }

  if (*v7 < 2u)
  {
    v9 = 1;
    goto LABEL_9;
  }

LABEL_87:
  *a1 = 0;
  a1[1] = 0;
  v43 = a1[3];
  if (!v43 || !v4)
  {
    v9 = 0;
    v44 = 0;
    v6 = 0;
LABEL_89:
    *a1 = 0;
    a1[1] = 0;
    v45 = a1[3];
    if (v45 && v44)
    {
      (*(*v45 + 16))(v45, v6, v44);
      v11 = 0;
      v6 = *a1;
      v4 = a1[1];
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v11 = 0;
    }

    goto LABEL_91;
  }

  (*(*v43 + 16))(v43, v6);
  v9 = 0;
  v6 = *a1;
  v4 = a1[1];
  v8 = a1[2];
LABEL_9:
  if (v4 <= v8 - v6)
  {
    v44 = 0;
    v51 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v4 && v51)
    {
      (*(*v51 + 16))(v51);
      v6 = *a1;
      v44 = a1[1];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_89;
  }

  v10 = v8 + 1;
  a1[2] = (v8 + 1);
  if (!v8)
  {
    v44 = v4;
    goto LABEL_89;
  }

  v11 = *v8;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_13;
  }

LABEL_91:
  *a1 = 0;
  a1[1] = 0;
  v46 = a1[3];
  if (!v46)
  {
    v13 = 0;
    LOBYTE(v12) = 0;
    v4 = 0;
LABEL_93:
    v6 = 0;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_94;
  }

  if (!v4)
  {
    v13 = 0;
    LOBYTE(v12) = 0;
    goto LABEL_93;
  }

  (*(*v46 + 16))(v46, v6);
  v12 = 0;
  v6 = *a1;
  v4 = a1[1];
  v10 = a1[2];
LABEL_13:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v4 <= v10 - v6)
  {
    v52 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v52)
    {
      if (v4)
      {
        (*(*v52 + 16))(v52);
        v6 = *a1;
        v4 = a1[1];
LABEL_94:
        *a1 = 0;
        a1[1] = 0;
        v47 = a1[3];
        if (v47)
        {
          if (v4)
          {
            (*(*v47 + 16))(v47, v6);
            v6 = *a1;
            v4 = a1[1];
LABEL_97:
            *a1 = 0;
            a1[1] = 0;
            v48 = a1[3];
            if (v48 && v4)
            {
              (*(*v48 + 16))(v48, v6);
            }

            LOBYTE(v61) = 0;
            v62 = 0;
            goto LABEL_99;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_97;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_94;
  }

  a1[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_94;
  }

  v14 = *v10;
  if (v14 >= 2)
  {
    goto LABEL_97;
  }

  if (!v14)
  {
    v61 = 0;
    goto LABEL_24;
  }

  IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::decode(&v53, a1);
  LOBYTE(v61) = 0;
  v62 = 0;
  if (v54 == 1)
  {
    v61 = v53;
LABEL_24:
    v15 = 1;
    v62 = 1;
    goto LABEL_25;
  }

LABEL_99:
  v6 = *a1;
  v49 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v50 = a1[3];
  if (v50 && v49)
  {
    (*(*v50 + 16))(v50, v6);
  }

  v15 = 0;
LABEL_25:
  if (!*a1)
  {
    LOBYTE(v57) = 0;
    v60 = 0;
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if ((v9 & 1) == 0 || (v12 & 1) == 0 || (v15 & 1) == 0)
  {
    goto LABEL_52;
  }

  WebCore::ScrollingStateTree::createAfterReconstruction();
  if (v62)
  {
LABEL_30:
    v16 = v61;
    v61 = 0;
    if (v16)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref(v16 + 1, v6);
    }
  }

LABEL_32:
  if ((v60 & 1) == 0)
  {
    v24 = *a1;
    v25 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (!v26 || !v25 || ((*(*v26 + 16))(v26, v24), (v60 & 1) == 0))
    {
LABEL_58:
      LOBYTE(v55) = 0;
      v56 = 0;
      v27 = *a1;
      v28 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v29 = a1[3];
      if (v29 && v28)
      {
        (*(*v29 + 16))(v29, v27);
      }

      v13 = 0;
      goto LABEL_36;
    }
  }

  v17 = WebCore::ScrollingStateTree::operator new(0x48, v6);
  WebCore::ScrollingStateTree::ScrollingStateTree();
  v55 = v17;
  v56 = 1;
  if (v60)
  {
    MEMORY[0x19EB08010](&v57);
  }

  v13 = 1;
LABEL_36:
  v18 = a1[1];
  v19 = a1[2];
  v20 = *a1;
  if (v18 <= &v19[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v36 = a1[3];
    if (v36)
    {
      if (v18)
      {
        (*(*v36 + 16))(v36);
        v18 = a1[1];
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_78:
    *a1 = 0;
    a1[1] = 0;
    v37 = a1[3];
    if (v37)
    {
      if (v18)
      {
        (*(*v37 + 16))(v37);
        v21 = 0;
        v20 = *a1;
        v18 = a1[1];
        goto LABEL_81;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
    v21 = 0;
    goto LABEL_81;
  }

  a1[2] = (v19 + 1);
  if (!v19)
  {
    goto LABEL_78;
  }

  v21 = *v19;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_40;
  }

LABEL_81:
  *a1 = 0;
  a1[1] = 0;
  v38 = a1[3];
  if (v38 && v18)
  {
    (*(*v38 + 16))(v38, v20);
  }

  v22 = 0;
LABEL_40:
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v57);
  if ((v59 & 1) == 0)
  {
    v30 = *a1;
    v31 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v32 = a1[3];
    if (v32)
    {
      if (v31)
      {
        (*(*v32 + 16))(v32, v30);
      }
    }
  }

  if (!*a1)
  {
LABEL_53:
    *a2 = 0;
    *(a2 + 24) = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_49;
  }

  if ((v13 & 1) == 0 || (v22 & 1) == 0 || (v59 & 1) == 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  WebKit::RemoteScrollingCoordinatorTransaction::RemoteScrollingCoordinatorTransaction(&v53, &v55, v23, v57, v58, 1);
  *a2 = v53;
  *(a2 + 8) = v54;
  *(a2 + 24) = 1;
  if ((v56 & 1) == 0)
  {
    return;
  }

LABEL_49:
  if (v55)
  {
    WebCore::ScrollingStateTree::operator delete();
  }
}

void sub_19D797EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    if (a13)
    {
      WebCore::ScrollingStateTree::operator delete();
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar **IPC::ArgumentCoder<WebCore::ScrollingStateTree,void>::encode(IPC::Encoder *a1, WebCore::ScrollingStateTree *a2)
{
  v9 = *(a2 + 65);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = *(a2 + 64);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  WebCore::ScrollingStateTree::rootStateNode(&v7, a2);
  result = IPC::ArgumentCoder<WTF::RefPtr<WebCore::ScrollingStateFrameScrollingNode,WTF::RawPtrTraits<WebCore::ScrollingStateFrameScrollingNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateFrameScrollingNode>>,void>::encode<IPC::Encoder,WebCore::ScrollingStateFrameScrollingNode>(a1, &v7);
  v6 = v7;
  v7 = 0;
  if (v6)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref(v6 + 1, v5);
  }

  return result;
}

void sub_19D797FA4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((a9 + 8), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, uint64_t *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v30 = a2[3];
    if (v30)
    {
      if (v6)
      {
        (*(*v30 + 16))(v30);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_40;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_40:
    *a2 = 0;
    a2[1] = 0;
    v31 = a2[3];
    if (v31 && v6)
    {
      (*(*v31 + 16))(v31, v5);
    }

    *a1 = 0;
    *(a1 + 16) = 0;
LABEL_28:
    v27 = *a2;
    v28 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v28)
      {
        return (*(*result + 16))(result, v27);
      }
    }

    return result;
  }

  a2[2] = (v4 + 8);
  if (!v4)
  {
    goto LABEL_40;
  }

  v8 = *v4;
  v34 = 0;
  v35 = 0;
  if (v8 < 0x20000)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    LODWORD(v35) = v8;
    v34 = WTF::fastMalloc((8 * v8));
    while (1)
    {
      IPC::Decoder::decode<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>>(&v32, a2);
      if ((v33 & 1) == 0)
      {
        goto LABEL_27;
      }

      v9 = HIDWORD(v35);
      if (HIDWORD(v35) != v35)
      {
        break;
      }

      v10 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v32);
      v11 = HIDWORD(v35);
      v12 = HIDWORD(v35) + 1;
      v13 = v34;
      v14 = *v10;
      *v10 = 0;
      *(v13 + v11) = v14;
      HIDWORD(v35) = v12;
      if (v33)
      {
        goto LABEL_15;
      }

LABEL_17:
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    v15 = v32;
    v32 = 0;
    *(v34 + HIDWORD(v35)) = v15;
    HIDWORD(v35) = v9 + 1;
LABEL_15:
    v16 = v32;
    v32 = 0;
    if (v16)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v16 + 8), v5);
    }

    goto LABEL_17;
  }

  do
  {
    IPC::Decoder::decode<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>>(&v32, a2);
    if ((v33 & 1) == 0)
    {
LABEL_27:
      *a1 = 0;
      *(a1 + 16) = 0;
      WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
      goto LABEL_28;
    }

    v19 = HIDWORD(v35);
    if (HIDWORD(v35) == v35)
    {
      v20 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v34, HIDWORD(v35) + 1, &v32);
      v21 = HIDWORD(v35);
      v22 = HIDWORD(v35) + 1;
      v23 = v34;
      v24 = *v20;
      *v20 = 0;
      *(v23 + v21) = v24;
      HIDWORD(v35) = v22;
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v25 = v32;
      v32 = 0;
      *(v34 + HIDWORD(v35)) = v25;
      HIDWORD(v35) = v19 + 1;
    }

    v26 = v32;
    v32 = 0;
    if (v26)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((v26 + 8), v5);
    }

LABEL_25:
    --v8;
  }

  while (v8);
  if (v35 > HIDWORD(v35))
  {
    v29 = v34;
    if (HIDWORD(v35))
    {
      LODWORD(v35) = HIDWORD(v35);
      v34 = WTF::fastRealloc(v34, (8 * HIDWORD(v35)));
    }

    else if (v34)
    {
      v34 = 0;
      LODWORD(v35) = 0;
      WTF::fastFree(v29, v5);
    }
  }

LABEL_18:
  *a1 = v34;
  v17 = v35;
  v34 = 0;
  v35 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = 1;
  return WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v5);
}

void sub_19D79829C(_Unwind_Exception *a1, void *a2, uint64_t a3, char a4, ...)
{
  va_start(va, a4);
  if (a4 == 1)
  {
    if (a3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingStateNode,(WTF::DestructionThread)0>::deref((a3 + 8), a2);
    }
  }

  WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 7)
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v8 = *v2;
      if ((v8 & 0xFFFBC00000000000) == 0)
      {
        return v8;
      }

      goto LABEL_8;
    }

    v13 = a1;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v11 = a1[3];
    if (!v11)
    {
      v1 = 0;
LABEL_15:
      v3 = 0;
      goto LABEL_16;
    }

    if (!v1)
    {
      goto LABEL_15;
    }

    (*(*v11 + 16))(v11);
    v3 = *v13;
    v1 = v13[1];
  }

LABEL_16:
  *v13 = 0;
  v13[1] = 0;
  v12 = v13[3];
  if (!v12)
  {
    v1 = 0;
LABEL_18:
    a1 = v13;
    goto LABEL_8;
  }

  if (!v1)
  {
    goto LABEL_18;
  }

  (*(*v12 + 16))(v12, v3);
  a1 = v13;
  v1 = v13[1];
LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  v9 = a1[3];
  if (v9 && v1)
  {
    (*(*v9 + 16))(v9);
  }

  return 0;
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::encode(IPC::Encoder *a1, WebCore::ScrollingStateFrameScrollingNode *this)
{
  LOBYTE(v30) = WebCore::ScrollingStateFrameScrollingNode::isMainFrame(this);
  IPC::Encoder::operator<<<BOOL>(a1, &v30);
  v4 = *(this + 4);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(this + 3));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, this + 72);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(this + 5));
  v6 = *(this + 5);
  if (v6)
  {
    if (*(this + 13))
    {
      v30 = *(this + 104);
      v15 = 1;
    }

    else
    {
      v15 = 0;
      LOBYTE(v30) = 0;
    }

    v31 = v15;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 2) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 32));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 33));
    v6 = *(this + 5);
  }

  if ((v6 & 4) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 34));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 35));
    v6 = *(this + 5);
  }

  if ((v6 & 8) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 36));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 37));
    v6 = *(this + 5);
  }

  if ((v6 & 0x10) != 0)
  {
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 38));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 39));
    v6 = *(this + 5);
  }

  if ((v6 & 0x20) != 0)
  {
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(this + 40));
    result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(this + 41));
    v6 = *(this + 5);
  }

  if ((v6 & 0x40) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::ScrollableAreaParameters,void>::encode(a1, this + 438);
    v6 = *(this + 5);
  }

  if ((v6 & 0x80) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::RequestedScrollData,void>::encode(a1, this + 452);
    v6 = *(this + 5);
  }

  if ((v6 & 0x100) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>,void>::encode(a1, this + 168);
    v6 = *(this + 5);
  }

  if ((v6 & 0x200) != 0)
  {
    v25 = *(this + 30);
    LODWORD(v30) = v25;
    BYTE4(v30) = BYTE4(v25);
    result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x400) != 0)
  {
    v26 = *(this + 31);
    LODWORD(v30) = v26;
    BYTE4(v30) = BYTE4(v26);
    result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x800) != 0)
  {
    LOBYTE(v30) = *(this + 535);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x1000) != 0)
  {
    v16 = *(this + 34);
    if (v16)
    {
      v30 = *(this + 17);
      LOBYTE(v16) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v16;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x2000) != 0)
  {
    v17 = *(this + 39);
    if (v17)
    {
      v30 = *(this + 312);
      LOBYTE(v17) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v17;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x4000) != 0)
  {
    v18 = *(this + 44);
    if (v18)
    {
      v30 = *(this + 22);
      LOBYTE(v18) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v18;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x8000) != 0)
  {
    v19 = *(this + 49);
    if (v19)
    {
      v30 = *(this + 392);
      LOBYTE(v19) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v19;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x10000) != 0)
  {
    LOBYTE(v30) = *(this + 536);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x20000) != 0)
  {
    result = IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(a1, this + 105);
    v6 = *(this + 5);
  }

  if ((v6 & 0x40000) != 0)
  {
    LOWORD(v30) = *(this + 208);
    IPC::Encoder::operator<<<BOOL>(a1, &v30);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30 + 1);
    v6 = *(this + 5);
  }

  if ((v6 & 0x80000) != 0)
  {
    LOWORD(v30) = *(this + 218);
    IPC::Encoder::operator<<<BOOL>(a1, &v30);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30 + 1);
    v6 = *(this + 5);
  }

  if ((v6 & 0x100000) != 0)
  {
    LOBYTE(v30) = *(this + 532);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x200000) != 0)
  {
    result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(this + 533));
    v6 = *(this + 5);
  }

  if ((v6 & 0x400000) != 0)
  {
    LOBYTE(v30) = *(this + 534);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x800000) != 0)
  {
    result = IPC::Encoder::operator<<<WebCore::RequestedKeyboardScrollData const&>(a1, this + 496);
    v6 = *(this + 5);
  }

  if ((v6 & 0x1000000) != 0)
  {
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 215));
    v6 = *(this + 5);
  }

  if ((v6 & 0x2000000) != 0)
  {
    IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, this + 784);
    v7 = *(this + 101);
    if (v7)
    {
      v8 = *(v7 - 12);
    }

    else
    {
      v8 = 0;
    }

    result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v8);
    v9 = *(this + 101);
    if (v9)
    {
      v11 = *(v9 - 4);
      v10 = (v9 + 32 * v11);
      if (*(v9 - 12))
      {
        if (!v11)
        {
          v24 = 0;
          v12 = *(this + 101);
          goto LABEL_125;
        }

        v23 = 32 * v11;
        v12 = *(this + 101);
        while (*v12 >= 0xFEu)
        {
          v12 += 32;
          v23 -= 32;
          if (!v23)
          {
            v12 = v10;
            break;
          }
        }

LABEL_83:
        if (!v9)
        {
          v13 = 0;
LABEL_129:
          while (v12 != v13)
          {
            IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *v12);
            result = IPC::ArgumentCoder<WebCore::Region,void>::encode(a1, (v12 + 8));
            for (v12 += 32; v12 != v10; v12 += 32)
            {
              if (*v12 < 0xFEu)
              {
                break;
              }
            }
          }

          v6 = *(this + 5);
          goto LABEL_47;
        }

        v24 = *(v9 - 4);
LABEL_125:
        v13 = (v9 + 32 * v24);
        goto LABEL_129;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = v10;
    v10 = (v9 + 32 * v11);
    goto LABEL_83;
  }

LABEL_47:
  if ((v6 & 0x4000000) != 0)
  {
    v20 = *(this + 70);
    if (v20)
    {
      v30 = *(this + 35);
      LOBYTE(v20) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v20;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x8000000) != 0)
  {
    v21 = *(this + 75);
    if (v21)
    {
      v30 = *(this + 600);
      LOBYTE(v21) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v21;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x10000000) != 0)
  {
    v22 = *(this + 80);
    if (v22)
    {
      v30 = *(this + 40);
      LOBYTE(v22) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v22;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x20000000) != 0)
  {
    v27 = *(this + 85);
    if (v27)
    {
      v30 = *(this + 680);
      LOBYTE(v27) = 1;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    v31 = v27;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x40000000) != 0)
  {
    result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(this + 220));
    v6 = *(this + 5);
  }

  if ((v6 & 0x80000000) != 0)
  {
    result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(this + 221));
    v6 = *(this + 5);
  }

  if ((v6 & 0x100000000) != 0)
  {
    LOBYTE(v30) = *(this + 888);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x200000000) != 0)
  {
    v30 = *(this + 54);
    result = IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x400000000) != 0)
  {
    LOBYTE(v30) = *(this + 889);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x800000000) != 0)
  {
    LOBYTE(v30) = *(this + 890);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x1000000000) != 0)
  {
    LOBYTE(v30) = *(this + 891);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x2000000000) != 0)
  {
    LOBYTE(v30) = *(this + 892);
    result = IPC::Encoder::operator<<<BOOL>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x4000000000) != 0)
  {
    v30 = *(this + 51);
    result = IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x8000000000) != 0)
  {
    v28 = *(this + 209);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 208));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v28);
    v6 = *(this + 5);
  }

  if ((v6 & 0x10000000000) != 0)
  {
    v14 = *(this + 211);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(this + 210));
    result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v14);
    v6 = *(this + 5);
  }

  if ((v6 & 0x20000000000) != 0)
  {
    v29 = *(this + 214);
    *&v30 = *(this + 106);
    BYTE8(v30) = v29;
    result = IPC::ArgumentCoder<std::optional<WebCore::FloatSize>,void>::encode<IPC::Encoder,std::optional<WebCore::FloatSize>>(a1, &v30);
    v6 = *(this + 5);
  }

  if ((v6 & 0x40000000000) != 0)
  {
    LOBYTE(v30) = *(this + 893);
    return IPC::Encoder::operator<<<BOOL>(a1, &v30);
  }

  return result;
}

IPC::Encoder *IPC::Encoder::operator<<<WebCore::RequestedKeyboardScrollData const&>(IPC::Encoder *a1, char *a2)
{
  v3 = (a2 + 4);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WebCore::KeyboardScroll>,void>::encode<IPC::Encoder,std::optional<WebCore::KeyboardScroll> const&>(a1, v3);
  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollingStateFrameScrollingNode,void>::decode(_BYTE *a1, uint64_t *a2)
{
  v225[2] = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    a2[1] = 0;
    v93 = a2[3];
    if (v93)
    {
      if (v6)
      {
        (*(*v93 + 16))(v93);
        v5 = *a2;
        v6 = a2[1];
LABEL_263:
        *a2 = 0;
        a2[1] = 0;
        v94 = a2[3];
        if (v94)
        {
          if (v6)
          {
            (*(*v94 + 16))(v94, v5);
            v5 = *a2;
            v6 = a2[1];
            goto LABEL_266;
          }
        }

        else
        {
          v6 = 0;
        }

        v5 = 0;
        goto LABEL_266;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_263;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_263;
  }

  if (*v4 < 2u)
  {
    v7 = 1;
    goto LABEL_5;
  }

LABEL_266:
  *a2 = 0;
  a2[1] = 0;
  v95 = a2[3];
  if (v95 && v6)
  {
    (*(*v95 + 16))(v95, v5);
  }

  v7 = 0;
LABEL_5:
  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v182);
  IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v180, a2);
  result = IPC::Decoder::decode<WTF::OptionSet<WebCore::ScrollingStateNodeProperty>>(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_33;
  }

  v10 = result;
  if (result)
  {
    result = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
    if (v162[24] != 1)
    {
      goto LABEL_33;
    }

    v225[0] = *&v162[1];
    v11 = v220;
    *(v225 + 7) = *&v162[8];
    v12 = v162[0];
    v13 = v162[16];
  }

  else
  {
    v11 = v220;
    v12 = 0;
    v13 = 0;
  }

  if ((v10 & 2) != 0)
  {
    result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((v10 & 4) != 0)
  {
    result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((v10 & 8) != 0)
  {
    result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((v10 & 0x10) != 0)
  {
    result = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
    if ((v9 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((v10 & 0x20) == 0)
  {
    v145 = v12;
    *v177 = 257;
    *&v177[2] = 0;
    v178 = 0;
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  result = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_33;
  }

  v145 = v12;
  *v177 = 257;
  *&v177[2] = 0;
  v178 = 0;
  if ((v10 & 0x40) != 0)
  {
LABEL_23:
    result = IPC::Decoder::decode<WebCore::ScrollableAreaParameters>(a2);
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    *v177 = result;
    *&v177[8] = v9;
    v178 = BYTE2(v9);
  }

LABEL_25:
  v173[0] = 0;
  *&v173[4] = 0;
  v173[12] = 0;
  *&v173[16] = 256;
  v173[18] = 0;
  LOBYTE(v174) = 0;
  v176 = 0;
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_26;
  }

  result = IPC::Decoder::decode<WebCore::RequestedScrollData>(v162, a2);
  if (BYTE4(v163) != 1)
  {
LABEL_33:
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_34;
  }

  *v173 = *v162;
  *&v173[15] = *&v162[15];
  if (v176 == v163)
  {
    if (v176)
    {
      LOBYTE(v174) = v162[20];
      *(&v174 + 4) = *&v162[24];
      HIDWORD(v174) = *&v162[32];
      LOWORD(v175) = *&v162[36];
    }
  }

  else if (v176)
  {
    v176 = 0;
  }

  else
  {
    v174 = *&v162[20];
    v175 = *&v162[36];
    v176 = 1;
  }

LABEL_26:
  v168 = 0;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  if ((v10 & 0x100) != 0)
  {
    IPC::Decoder::decode<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>>(v162, a2);
    if (v167 != 1)
    {
      goto LABEL_151;
    }

    v168 = v162[0];
    v15 = v169;
    if (HIDWORD(v169))
    {
      v16 = 40 * HIDWORD(v169);
      v17 = v169 + 24;
      do
      {
        v18 = *v17;
        if (*v17)
        {
          *v17 = 0;
          *(v17 + 8) = 0;
          WTF::fastFree(v18, v14);
        }

        v17 += 40;
        v16 -= 40;
      }

      while (v16);
      v15 = v169;
    }

    if (v15)
    {
      *&v169 = 0;
      DWORD2(v169) = 0;
      WTF::fastFree(v15, v14);
    }

    v21 = *&v162[8];
    *&v162[8] = 0;
    *&v169 = v21;
    v22 = *&v162[16];
    *&v162[16] = 0;
    *(&v169 + 1) = v22;
    v23 = v170;
    if (HIDWORD(v170))
    {
      v24 = 40 * HIDWORD(v170);
      v25 = v170 + 24;
      do
      {
        v26 = *v25;
        if (*v25)
        {
          *v25 = 0;
          *(v25 + 8) = 0;
          WTF::fastFree(v26, v14);
        }

        v25 += 40;
        v24 -= 40;
      }

      while (v24);
      v23 = v170;
    }

    if (v23)
    {
      *&v170 = 0;
      DWORD2(v170) = 0;
      WTF::fastFree(v23, v14);
    }

    v27 = *&v162[24];
    *&v162[24] = 0;
    *&v170 = v27;
    v28 = *&v162[32];
    *&v162[32] = 0;
    *(&v170 + 1) = v28;
    v29 = v171;
    if (v171)
    {
      *&v171 = 0;
      DWORD2(v171) = 0;
      WTF::fastFree(v29, v14);
    }

    v30 = v163;
    v163 = 0;
    *&v171 = v30;
    v31 = v164;
    v164 = 0;
    *(&v171 + 1) = v31;
    v32 = v172;
    if (v172)
    {
      *&v172 = 0;
      DWORD2(v172) = 0;
      WTF::fastFree(v32, v14);
    }

    v33 = v165;
    v165 = 0;
    *&v172 = v33;
    v34 = v166;
    v166 = 0;
    *(&v172 + 1) = v34;
    if (v167)
    {
      v35 = v163;
      if (v163)
      {
        v163 = 0;
        LODWORD(v164) = 0;
        WTF::fastFree(v35, v14);
      }

      WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v162[24], v14);
      WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v162[8], v36);
    }
  }

  if ((v10 & 0x200) != 0)
  {
    IPC::Decoder::decode<std::optional<unsigned int>>(a2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_151;
    }
  }

  if ((v10 & 0x400) != 0)
  {
    IPC::Decoder::decode<std::optional<unsigned int>>(a2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_151;
    }
  }

  if ((v10 & 0x800) != 0)
  {
    v19 = a2[1];
    v20 = a2[2];
    v14 = *a2;
    if (v19 <= &v20[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v96 = a2[3];
      if (v96)
      {
        if (v19)
        {
          (*(*v96 + 16))(v96);
          v19 = a2[1];
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      a2[2] = (v20 + 1);
      if (v20)
      {
        if (*v20 < 2u)
        {
          goto LABEL_51;
        }

        goto LABEL_276;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v97 = a2[3];
    if (v97)
    {
      if (v19)
      {
        (*(*v97 + 16))(v97);
        v14 = *a2;
        v19 = a2[1];
        goto LABEL_276;
      }
    }

    else
    {
      v19 = 0;
    }

    v14 = 0;
LABEL_276:
    *a2 = 0;
    a2[1] = 0;
    v98 = a2[3];
    if (!v98 || !v19)
    {
      goto LABEL_285;
    }

LABEL_384:
    (*(*v98 + 16))(v98, v14);
LABEL_285:
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_152;
  }

LABEL_51:
  if ((v10 & 0x1000) != 0)
  {
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
    if ((v162[24] & 1) == 0)
    {
      goto LABEL_151;
    }

    v143 = v162[0];
    v224[0] = *&v162[1];
    *(v224 + 7) = *&v162[8];
    v144 = v162[16];
  }

  else
  {
    v144 = 0;
    v143 = 0;
  }

  if ((v10 & 0x2000) != 0)
  {
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
    if ((v162[24] & 1) == 0)
    {
      goto LABEL_151;
    }

    LOBYTE(v140) = v162[0];
    v223[0] = *&v162[1];
    *(v223 + 7) = *&v162[8];
    BYTE4(v140) = v162[16];
  }

  else
  {
    v140 = 0;
  }

  if ((v10 & 0x4000) != 0)
  {
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
    if ((v162[24] & 1) == 0)
    {
      goto LABEL_151;
    }

    LOBYTE(v139) = v162[0];
    v222[0] = *&v162[1];
    *(v222 + 7) = *&v162[8];
    BYTE4(v139) = v162[16];
  }

  else
  {
    v139 = 0;
  }

  if ((v10 & 0x8000) != 0)
  {
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
    if ((v162[24] & 1) == 0)
    {
      goto LABEL_151;
    }

    v137 = v162[0];
    v221[0] = *&v162[1];
    *(v221 + 7) = *&v162[8];
    v138 = v162[16];
  }

  else
  {
    v138 = 0;
    v137 = 0;
  }

  if ((v10 & 0x10000) != 0)
  {
    v37 = a2[1];
    v38 = a2[2];
    v14 = *a2;
    if (v37 <= &v38[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v99 = a2[3];
      if (v99)
      {
        if (v37)
        {
          (*(*v99 + 16))(v99);
          v37 = a2[1];
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      a2[2] = (v38 + 1);
      if (v38)
      {
        if (*v38 < 2u)
        {
          goto LABEL_93;
        }

        goto LABEL_284;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v100 = a2[3];
    if (v100)
    {
      if (v37)
      {
        (*(*v100 + 16))(v100);
        v14 = *a2;
        v37 = a2[1];
        goto LABEL_284;
      }
    }

    else
    {
      v37 = 0;
    }

    v14 = 0;
LABEL_284:
    *a2 = 0;
    a2[1] = 0;
    v98 = a2[3];
    if (!v98 || !v37)
    {
      goto LABEL_285;
    }

    goto LABEL_384;
  }

LABEL_93:
  v157 = 0uLL;
  if ((v10 & 0x20000) != 0)
  {
    IPC::Decoder::decode<WebCore::MouseLocationState>(v162, a2);
    if ((v162[16] & 1) == 0)
    {
      goto LABEL_151;
    }

    v157 = *v162;
  }

  v156 = 0;
  if ((v10 & 0x40000) != 0)
  {
    v39 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
    if ((v39 & 0xFFFFFF) < 0x10000)
    {
      goto LABEL_151;
    }

    v156 = v39;
  }

  v155 = 0;
  if ((v10 & 0x80000) != 0)
  {
    v40 = IPC::Decoder::decode<WebCore::ScrollbarHoverState>(a2);
    if ((v40 & 0xFFFFFF) < 0x10000)
    {
      goto LABEL_151;
    }

    v155 = v40;
  }

  if ((v10 & 0x100000) != 0 && IPC::Decoder::decode<WebCore::UserInterfaceLayoutDirection>(a2) < 0x100u || (v10 & 0x200000) != 0 && IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2) < 0x100u)
  {
    goto LABEL_151;
  }

  if ((v10 & 0x400000) != 0)
  {
    v41 = a2[1];
    v42 = a2[2];
    v14 = *a2;
    if (v41 <= &v42[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v108 = a2[3];
      if (v108)
      {
        if (v41)
        {
          (*(*v108 + 16))(v108);
          v41 = a2[1];
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      a2[2] = (v42 + 1);
      if (v42)
      {
        if (*v42 < 2u)
        {
          goto LABEL_110;
        }

        goto LABEL_313;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    v109 = a2[3];
    if (v109)
    {
      if (v41)
      {
        (*(*v109 + 16))(v109);
        v14 = *a2;
        v41 = a2[1];
        goto LABEL_313;
      }
    }

    else
    {
      v41 = 0;
    }

    v14 = 0;
LABEL_313:
    *a2 = 0;
    a2[1] = 0;
    v98 = a2[3];
    if (!v98 || !v41)
    {
      goto LABEL_285;
    }

    goto LABEL_384;
  }

LABEL_110:
  LOBYTE(v152) = 0;
  BYTE4(v152) = 0;
  LOBYTE(v154) = 0;
  if ((v10 & 0x800000) == 0)
  {
    goto LABEL_113;
  }

  IPC::Decoder::decode<WebCore::RequestedKeyboardScrollData>(v162, a2);
  if ((v162[36] & 1) == 0)
  {
LABEL_151:
    *a1 = 0;
    a1[8] = 0;
    goto LABEL_152;
  }

  v152 = *v162;
  v153 = *&v162[16];
  v154 = *&v162[32];
LABEL_113:
  if ((v10 & 0x1000000) == 0)
  {
    goto LABEL_118;
  }

  v43 = a2[1];
  v44 = (a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *a2;
  v45 = v44 - *a2;
  v46 = v43 >= v45;
  v47 = v43 - v45;
  if (!v46 || v47 <= 3)
  {
    *a2 = 0;
    a2[1] = 0;
    v110 = a2[3];
    if (v110)
    {
      if (v43)
      {
        (*(*v110 + 16))(v110);
        v14 = *a2;
        v43 = a2[1];
        goto LABEL_322;
      }
    }

    else
    {
      v43 = 0;
    }

    v14 = 0;
LABEL_322:
    *a2 = 0;
    a2[1] = 0;
    v111 = a2[3];
    if (v111 && v43)
    {
      (*(*v111 + 16))(v111);
    }

    goto LABEL_285;
  }

  a2[2] = v44 + 4;
  if (!v44)
  {
    goto LABEL_322;
  }

LABEL_118:
  v48 = WebCore::Region::Region(v150);
  v151 = 0;
  if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  IPC::Decoder::decode<WebCore::Region>(&v184, a2);
  v49 = a2[1];
  v50 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v51 = *a2;
  v52 = v50 - *a2;
  v46 = v49 >= v52;
  v53 = v49 - v52;
  if (!v46 || v53 <= 3)
  {
    *a2 = 0;
    a2[1] = 0;
    v101 = a2[3];
    if (v101)
    {
      if (v49)
      {
        (*(*v101 + 16))(v101);
        v49 = a2[1];
      }
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_290;
  }

  a2[2] = (v50 + 1);
  if (!v50)
  {
LABEL_290:
    *a2 = 0;
    a2[1] = 0;
    v102 = a2[3];
    if (v102 && v49)
    {
      (*(*v102 + 16))(v102);
    }

    goto LABEL_161;
  }

  v54 = *v50;
  *&v210 = 0;
  v134 = v54;
  if (v54)
  {
    v55 = 0;
    while (1)
    {
      v56 = a2[1];
      v57 = a2[2];
      v58 = *a2;
      if (v56 <= &v57[-*a2])
      {
        *a2 = 0;
        a2[1] = 0;
        v103 = a2[3];
        if (v103)
        {
          if (v56)
          {
            (*(*v103 + 16))(v103);
            v56 = a2[1];
          }
        }

        else
        {
          v56 = 0;
        }

LABEL_295:
        *a2 = 0;
        a2[1] = 0;
        v104 = a2[3];
        if (!v104)
        {
          v56 = 0;
          goto LABEL_297;
        }

        if (v56)
        {
          (*(*v104 + 16))(v104);
          v58 = *a2;
          v56 = a2[1];
        }

        else
        {
LABEL_297:
          v58 = 0;
        }

LABEL_298:
        *a2 = 0;
        a2[1] = 0;
        v105 = a2[3];
        if (v105 && v56)
        {
          (*(*v105 + 16))(v105, v58);
        }

        goto LABEL_159;
      }

      a2[2] = (v57 + 1);
      if (!v57)
      {
        goto LABEL_295;
      }

      v141 = *v57;
      if (v141 >= 0x10)
      {
        goto LABEL_298;
      }

      IPC::Decoder::decode<WebCore::Region>(&v189, a2);
      if ((v193 & 1) == 0)
      {
        goto LABEL_159;
      }

      v59 = v210;
      if (!v210)
      {
        WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::expand(&v210);
        v59 = v210;
      }

      v135 = v55;
      v60 = *(v59 - 8);
      v61 = 9 * ((~(v141 << 15) + v141) ^ ((~(v141 << 15) + v141) >> 10));
      v62 = (v61 ^ (v61 >> 6)) + ~((v61 ^ (v61 >> 6)) << 11);
      v63 = v60 & (v62 ^ HIWORD(v62));
      v64 = (v59 + 32 * v63);
      v65 = *v64;
      if (v65 != 255)
      {
        v66 = 0;
        v67 = 1;
        while (v65 != v141)
        {
          if (v65 == 254)
          {
            v66 = v64;
          }

          v63 = (v63 + v67) & v60;
          v64 = (v59 + 32 * v63);
          v65 = *v64;
          ++v67;
          if (v65 == 255)
          {
            if (v66)
            {
              *v66 = -1;
              WebCore::Region::Region((v66 + 8));
              --*(v210 - 16);
              v64 = v66;
            }

            goto LABEL_139;
          }
        }

        if (v193)
        {
          WebCore::Region::~Region(&v189);
        }

LABEL_159:
        if (v210)
        {
          WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(v210, v58);
        }

LABEL_161:
        v51 = *a2;
        v49 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v48 = a2[3];
        if (v48)
        {
          goto LABEL_250;
        }

        goto LABEL_162;
      }

LABEL_139:
      *v64 = v141;
      WebCore::Region::Region();
      WebCore::Region::operator=();
      WebCore::Region::~Region(&v213);
      v68 = v210;
      v69 = v210 ? *(v210 - 12) + 1 : 1;
      *(v210 - 12) = v69;
      v70 = (*(v68 - 16) + v69);
      v71 = *(v68 - 4);
      if (v71 > 0x400)
      {
        break;
      }

      if (3 * v71 <= 4 * v70)
      {
        goto LABEL_144;
      }

LABEL_145:
      if (v193 == 1)
      {
        WebCore::Region::~Region(&v189);
      }

      v55 = v135 + 1;
      if (v135 + 1 == v134)
      {
        v88 = v210;
        goto LABEL_164;
      }
    }

    if (v71 > 2 * v70)
    {
      goto LABEL_145;
    }

LABEL_144:
    v48 = WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::expand(&v210);
    goto LABEL_145;
  }

  v88 = 0;
LABEL_164:
  for (i = 1; ; i = 0)
  {
    if (*a2)
    {
      if ((v188 & 1) == 0)
      {
        goto LABEL_249;
      }

      v48 = WebCore::Region::Region();
      if ((i & 1) == 0)
      {
        goto LABEL_249;
      }

      v193 = v88;
      WebCore::Region::Region();
      v76 = v193;
      v193 = 0;
      *&v162[24] = v76;
      v162[32] = 1;
      WebCore::Region::~Region(&v189);
    }

    else
    {
      v162[0] = 0;
      v162[32] = 0;
      if (v88)
      {
        v92 = i;
      }

      else
      {
        v92 = 0;
      }

      if (v92)
      {
        WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(v88, v51);
      }
    }

    if (v188 == 1)
    {
      WebCore::Region::~Region(&v184);
    }

    if (v162[32] & 1) != 0 || (v51 = *a2, v49 = a2[1], *a2 = 0, a2[1] = 0, (v48 = a2[3]) != 0) && v49 && (v48 = (*(*v48 + 16))(v48, v51), (v162[32]))
    {
      WebCore::Region::operator=();
      v77 = *&v162[24];
      *&v162[24] = 0;
      v48 = v151;
      v151 = v77;
      if (v48)
      {
        v48 = WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(v48, v51);
      }

      v78 = 1;
    }

    else
    {
      v78 = 0;
      *a1 = 0;
      a1[8] = 0;
    }

    if (v162[32] == 1)
    {
      if (*&v162[24])
      {
        WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(*&v162[24], v51);
      }

      WebCore::Region::~Region(v162);
    }

    if (!v78)
    {
      goto LABEL_235;
    }

LABEL_180:
    if ((v10 & 0x4000000) != 0)
    {
      v48 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
      if ((v162[24] & 1) == 0)
      {
        goto LABEL_234;
      }

      v80 = v162[0];
      *v220 = *&v162[1];
      *(v11 + 7) = *&v162[8];
      v79 = v162[16];
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v11 = &v184;
    if ((v10 & 0x8000000) != 0)
    {
      v48 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
      if ((v162[24] & 1) == 0)
      {
        goto LABEL_234;
      }

      v136 = v162[0];
      v219[0] = *&v162[1];
      *(v219 + 7) = *&v162[8];
      v142 = v162[16];
    }

    else
    {
      v142 = 0;
      v136 = 0;
    }

    if ((v10 & 0x10000000) != 0)
    {
      v48 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
      if ((v162[24] & 1) == 0)
      {
        goto LABEL_234;
      }

      LOBYTE(v133) = v162[0];
      v218[0] = *&v162[1];
      *(v218 + 7) = *&v162[8];
      BYTE4(v133) = v162[16];
    }

    else
    {
      v133 = 0;
    }

    if ((v10 & 0x20000000) != 0)
    {
      v48 = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v162, a2);
      if ((v162[24] & 1) == 0)
      {
        goto LABEL_234;
      }

      LOBYTE(v132) = v162[0];
      v217[0] = *&v162[1];
      *(v217 + 7) = *&v162[8];
      BYTE4(v132) = v162[16];
    }

    else
    {
      v132 = 0;
    }

    if ((v10 & 0x40000000) != 0)
    {
      v48 = IPC::Decoder::decode<float>(a2);
      if ((v48 & 0x100000000) == 0)
      {
        goto LABEL_234;
      }
    }

    v131 = v80;
    if ((v10 & 0x80000000) != 0)
    {
      v48 = IPC::Decoder::decode<float>(a2);
      if ((v48 & 0x100000000) == 0)
      {
        goto LABEL_234;
      }
    }

    if ((v10 & 0x100000000) != 0)
    {
      v49 = a2[1];
      v81 = a2[2];
      v51 = *a2;
      if (v49 > &v81[-*a2])
      {
        a2[2] = (v81 + 1);
        if (!v81)
        {
          goto LABEL_327;
        }

        if (*v81 >= 2u)
        {
          goto LABEL_330;
        }

        goto LABEL_204;
      }

      *a2 = 0;
      a2[1] = 0;
      v112 = a2[3];
      if (v112)
      {
        if (v49)
        {
          (*(*v112 + 16))(v112);
          v49 = a2[1];
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_327:
      *a2 = 0;
      a2[1] = 0;
      v113 = a2[3];
      if (v113)
      {
        if (v49)
        {
          (*(*v113 + 16))(v113);
          v51 = *a2;
          v49 = a2[1];
          goto LABEL_330;
        }
      }

      else
      {
        v49 = 0;
      }

      v51 = 0;
LABEL_330:
      *a2 = 0;
      a2[1] = 0;
      v114 = a2[3];
      if (v114)
      {
        if (v49)
        {
          (*(*v114 + 16))(v114, v51);
          v115 = a2[3];
          v51 = *a2;
          v116 = a2[1];
          *a2 = 0;
          a2[1] = 0;
          if (v115)
          {
            if (v116)
            {
              goto LABEL_378;
            }
          }
        }
      }

      goto LABEL_234;
    }

LABEL_204:
    if ((v10 & 0x200000000) != 0)
    {
      v48 = IPC::Decoder::decode<WebCore::RectEdges<float>>(v162, a2);
      if ((v162[16] & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    if ((v10 & 0x400000000) == 0)
    {
      goto LABEL_210;
    }

    v49 = a2[1];
    v82 = a2[2];
    v51 = *a2;
    if (v49 <= &v82[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v120 = a2[3];
      if (v120)
      {
        if (v49)
        {
          (*(*v120 + 16))(v120);
          v49 = a2[1];
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_340:
      *a2 = 0;
      a2[1] = 0;
      v121 = a2[3];
      if (!v121)
      {
        v49 = 0;
        goto LABEL_342;
      }

      if (v49)
      {
        (*(*v121 + 16))(v121);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_342:
        v51 = 0;
      }

LABEL_343:
      *a2 = 0;
      a2[1] = 0;
      v115 = a2[3];
      if (v115 && v49)
      {
        goto LABEL_378;
      }

      goto LABEL_234;
    }

    a2[2] = (v82 + 1);
    if (!v82)
    {
      goto LABEL_340;
    }

    if (*v82 >= 2u)
    {
      goto LABEL_343;
    }

LABEL_210:
    if ((v10 & 0x800000000) == 0)
    {
      goto LABEL_214;
    }

    v49 = a2[1];
    v83 = a2[2];
    v51 = *a2;
    if (v49 <= &v83[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v122 = a2[3];
      if (v122)
      {
        if (v49)
        {
          (*(*v122 + 16))(v122);
          v49 = a2[1];
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_348:
      *a2 = 0;
      a2[1] = 0;
      v123 = a2[3];
      if (!v123)
      {
        v49 = 0;
        goto LABEL_350;
      }

      if (v49)
      {
        (*(*v123 + 16))(v123);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_350:
        v51 = 0;
      }

LABEL_351:
      *a2 = 0;
      a2[1] = 0;
      v115 = a2[3];
      if (v115 && v49)
      {
        goto LABEL_378;
      }

      goto LABEL_234;
    }

    a2[2] = (v83 + 1);
    if (!v83)
    {
      goto LABEL_348;
    }

    if (*v83 >= 2u)
    {
      goto LABEL_351;
    }

LABEL_214:
    if ((v10 & 0x1000000000) == 0)
    {
      goto LABEL_218;
    }

    v49 = a2[1];
    v84 = a2[2];
    v51 = *a2;
    if (v49 <= &v84[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v124 = a2[3];
      if (v124)
      {
        if (v49)
        {
          (*(*v124 + 16))(v124);
          v49 = a2[1];
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_356:
      *a2 = 0;
      a2[1] = 0;
      v125 = a2[3];
      if (!v125)
      {
        v49 = 0;
        goto LABEL_358;
      }

      if (v49)
      {
        (*(*v125 + 16))(v125);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_358:
        v51 = 0;
      }

LABEL_359:
      *a2 = 0;
      a2[1] = 0;
      v115 = a2[3];
      if (v115 && v49)
      {
        goto LABEL_378;
      }

      goto LABEL_234;
    }

    a2[2] = (v84 + 1);
    if (!v84)
    {
      goto LABEL_356;
    }

    if (*v84 >= 2u)
    {
      goto LABEL_359;
    }

LABEL_218:
    if ((v10 & 0x2000000000) == 0)
    {
      goto LABEL_222;
    }

    v49 = a2[1];
    v85 = a2[2];
    v51 = *a2;
    if (v49 <= &v85[-*a2])
    {
      *a2 = 0;
      a2[1] = 0;
      v126 = a2[3];
      if (v126)
      {
        if (v49)
        {
          (*(*v126 + 16))(v126);
          v49 = a2[1];
        }
      }

      else
      {
        v49 = 0;
      }

LABEL_364:
      *a2 = 0;
      a2[1] = 0;
      v127 = a2[3];
      if (!v127)
      {
        v49 = 0;
        goto LABEL_366;
      }

      if (v49)
      {
        (*(*v127 + 16))(v127);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_366:
        v51 = 0;
      }

LABEL_367:
      *a2 = 0;
      a2[1] = 0;
      v115 = a2[3];
      if (v115 && v49)
      {
        goto LABEL_378;
      }

      goto LABEL_234;
    }

    a2[2] = (v85 + 1);
    if (!v85)
    {
      goto LABEL_364;
    }

    if (*v85 >= 2u)
    {
      goto LABEL_367;
    }

LABEL_222:
    if ((v10 & 0x4000000000) != 0)
    {
      IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
      v130 = v86;
      if ((v86 & 1) == 0)
      {
        v117 = *a2;
        v118 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v119 = a2[3];
        if (v119)
        {
          if (v118)
          {
            (*(*v119 + 16))(v119, v117);
          }
        }
      }

      v48 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a2);
      v87 = v51;
      if ((v51 & 1) == 0)
      {
        v51 = *a2;
        v49 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v48 = a2[3];
        if (v48)
        {
          if (v49)
          {
            v48 = (*(*v48 + 16))(v48, v51);
          }
        }
      }

      if (!*a2)
      {
        v106 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v107 = a2[3];
        if (v107 && v106)
        {
          (*(*v107 + 16))(v107, 0);
        }

        goto LABEL_234;
      }

      if ((v130 & 1) == 0 || (v87 & 1) == 0)
      {
        goto LABEL_249;
      }
    }

    if ((v10 & 0x8000000000) != 0)
    {
      v48 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      if ((v51 & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    if ((v10 & 0x10000000000) != 0)
    {
      v48 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
      if ((v51 & 1) == 0)
      {
        goto LABEL_234;
      }
    }

    if ((v10 & 0x20000000000) != 0)
    {
      v48 = IPC::Decoder::decode<std::optional<WebCore::FloatSize>>(a2);
      if ((v51 & 0x100000000) == 0)
      {
        goto LABEL_234;
      }
    }

    v51 = *a2;
    if ((v10 & 0x40000000000) == 0)
    {
      goto LABEL_242;
    }

    v49 = a2[1];
    v89 = a2[2];
    if (v49 <= &v89[-v51])
    {
      *a2 = 0;
      a2[1] = 0;
      v128 = a2[3];
      if (!v128)
      {
        v49 = 0;
        goto LABEL_372;
      }

      if (v49)
      {
        (*(*v128 + 16))(v128);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_372:
        v51 = 0;
      }

LABEL_373:
      *a2 = 0;
      a2[1] = 0;
      v129 = a2[3];
      if (!v129)
      {
        v49 = 0;
        goto LABEL_375;
      }

      if (v49)
      {
        (*(*v129 + 16))(v129, v51);
        v51 = *a2;
        v49 = a2[1];
      }

      else
      {
LABEL_375:
        v51 = 0;
      }

LABEL_376:
      *a2 = 0;
      a2[1] = 0;
      v115 = a2[3];
      if (v115 && v49)
      {
LABEL_378:
        (*(*v115 + 16))(v115, v51);
      }

LABEL_234:
      *a1 = 0;
      a1[8] = 0;
      goto LABEL_235;
    }

    a2[2] = (v89 + 1);
    if (!v89)
    {
      goto LABEL_373;
    }

    if (*v89 >= 2u)
    {
      goto LABEL_376;
    }

LABEL_242:
    if (!v51)
    {
      goto LABEL_234;
    }

    if (v7 & 1) != 0 && (v183 & 1) != 0 && (v181)
    {
      break;
    }

LABEL_249:
    __break(1u);
LABEL_250:
    if (v49)
    {
      v48 = (*(*v48 + 16))(v48, v51);
    }

LABEL_162:
    v88 = 0;
  }

  if (*MEMORY[0x1E69E2720])
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2720], v51);
  }

  else
  {
    NonCompact = WebCore::ScrollingStateFrameScrollingNode::operatorNewSlow(0x380);
  }

  v91 = NonCompact;
  v162[0] = v145;
  *&v162[1] = v225[0];
  *&v162[8] = *(v225 + 7);
  v162[16] = v13;
  *&v162[17] = *v179;
  *&v162[20] = *&v179[3];
  v189 = v143;
  *v190 = v224[0];
  *&v190[7] = *(v224 + 7);
  v191 = v144;
  *v192 = *v161;
  *&v192[3] = *&v161[3];
  v184 = v140;
  *v185 = v223[0];
  *&v185[7] = *(v223 + 7);
  v186 = BYTE4(v140);
  *v187 = *v160;
  *&v187[3] = *&v160[3];
  v213 = v139;
  *v214 = v222[0];
  *&v214[7] = *(v222 + 7);
  v215 = BYTE4(v139);
  *v216 = *v159;
  *&v216[3] = *&v159[3];
  LOBYTE(v210) = v137;
  *(&v210 + 1) = v221[0];
  *(&v210 + 1) = *(v221 + 7);
  v211 = v138;
  *v212 = *v158;
  *&v212[3] = *&v158[3];
  v206 = v131;
  *v207 = *v220;
  *&v207[7] = *&v220[7];
  v208 = v79;
  *v209 = *v149;
  *&v209[3] = *&v149[3];
  v202 = v136;
  *v203 = v219[0];
  *&v203[7] = *(v219 + 7);
  v204 = v142;
  *v205 = *v148;
  *&v205[3] = *&v148[3];
  v198 = v133;
  *v199 = v218[0];
  *&v199[7] = *(v218 + 7);
  v200 = BYTE4(v133);
  *v201 = *v147;
  *&v201[3] = *&v147[3];
  v194 = v132;
  *v195 = v217[0];
  *&v195[7] = *(v217 + 7);
  v196 = BYTE4(v132);
  *v197 = *v146;
  *&v197[3] = *&v146[3];
  WebCore::ScrollingStateFrameScrollingNode::ScrollingStateFrameScrollingNode();
  *a1 = v91;
  a1[8] = 1;
LABEL_235:
  if (v151)
  {
    WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(v151, v51);
  }

  WebCore::Region::~Region(v150);
LABEL_152:
  v72 = v172;
  if (v172)
  {
    *&v172 = 0;
    DWORD2(v172) = 0;
    WTF::fastFree(v72, v14);
  }

  v73 = v171;
  if (v171)
  {
    *&v171 = 0;
    DWORD2(v171) = 0;
    WTF::fastFree(v73, v14);
  }

  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v170, v14);
  result = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v169, v74);
LABEL_34:
  if (v181 == 1)
  {
    return WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v180, v9);
  }

  return result;
}

void sub_19D79A9F8(_Unwind_Exception *a1, void *a2)
{
  if (STACK[0x238])
  {
    WTF::HashTable<WebCore::EventTrackingRegionsEventType,WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::EventTrackingRegionsEventType,WebCore::Region>>,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::HashMap<WebCore::EventTrackingRegionsEventType,WebCore::Region,WTF::IntHash<WebCore::EventTrackingRegionsEventType>,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::HashTraits<WebCore::Region>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::EventTrackingRegionsEventType>,WTF::FastMalloc>::deallocateTable(STACK[0x238], a2);
  }

  WebCore::Region::~Region(&STACK[0x220]);
  v4 = STACK[0x330];
  if (STACK[0x330])
  {
    STACK[0x330] = 0;
    LODWORD(STACK[0x338]) = 0;
    WTF::fastFree(v4, v3);
  }

  v5 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x320] = 0;
    LODWORD(STACK[0x328]) = 0;
    WTF::fastFree(v5, v3);
  }

  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x310], v3);
  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x300], v6);
  if (LOBYTE(STACK[0x398]) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x388], v7);
  }

  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::decode<WebCore::ScrollableAreaParameters>(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v33 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v31 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v3 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v4 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v5 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v32 = v2;
  if (v6 <= &v7[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v24 = a1[3];
    if (v24)
    {
      if (v6)
      {
        (*(*v24 + 16))(v24);
        v6 = a1[1];
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_34:
    *a1 = 0;
    a1[1] = 0;
    v25 = a1[3];
    if (v25)
    {
      if (v6)
      {
        (*(*v25 + 16))(v25);
        v10 = 0;
        v8 = *a1;
        v6 = a1[1];
        goto LABEL_37;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    v10 = 0;
    goto LABEL_37;
  }

  v9 = v7 + 1;
  a1[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_34;
  }

  v10 = *v7;
  if (v10 < 2)
  {
    v11 = 1;
    goto LABEL_5;
  }

LABEL_37:
  *a1 = 0;
  a1[1] = 0;
  v26 = a1[3];
  if (!v26 || !v6)
  {
    v11 = 0;
    v27 = 0;
    v8 = 0;
LABEL_39:
    *a1 = 0;
    a1[1] = 0;
    v28 = a1[3];
    if (v28 && v27)
    {
      (*(*v28 + 16))(v28, v8, v27);
      v12 = 0;
      v8 = *a1;
      v6 = a1[1];
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v12 = 0;
    }

    goto LABEL_41;
  }

  (*(*v26 + 16))(v26, v8);
  v11 = 0;
  v8 = *a1;
  v6 = a1[1];
  v9 = a1[2];
LABEL_5:
  if (v6 <= &v9[-v8])
  {
    v27 = 0;
    v30 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v6 && v30)
    {
      (*(*v30 + 16))(v30);
      v8 = *a1;
      v27 = a1[1];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_39;
  }

  a1[2] = (v9 + 1);
  if (!v9)
  {
    v27 = v6;
    goto LABEL_39;
  }

  v12 = *v9;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_41:
  *a1 = 0;
  a1[1] = 0;
  v29 = a1[3];
  if (v29 && v6)
  {
    (*(*v29 + 16))(v29, v8);
  }

  v13 = 0;
LABEL_9:
  v14 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v15 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  v16 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  if (*a1)
  {
    LOBYTE(v17) = v32;
    if (v32 > 0xFFu)
    {
      v18 = v33;
      if (v33 > 0xFFu)
      {
        v19 = v31;
        if ((v31 & 0x100) != 0 && (v3 & 0x100) != 0 && v4 > 0xFFu && v5 > 0xFFu && (v11 & 1) != 0 && (v13 & 1) != 0 && v14 > 0xFFu && v15 > 0xFFu && v16 > 0xFFu)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
  }

  v23 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v17 = a1[3];
  if (v17)
  {
    if (v23)
    {
      (*(*v17 + 16))(v17);
    }

    LOBYTE(v17) = 0;
  }

  v18 = v33;
  v19 = v31;
LABEL_21:
  v20 = 0x1000000000000;
  if ((v11 & (v10 != 0)) == 0)
  {
    v20 = 0;
  }

  v21 = 0x100000000000000;
  if ((v13 & (v12 != 0)) == 0)
  {
    v21 = 0;
  }

  return v17 | (v20 | v21) & 0xFFFFFFFF000000FFLL | (v5 << 40) | (v4 << 32) | (v3 << 24) | (v19 << 16) | (v18 << 8);
}

uint64_t IPC::Decoder::decode<WebCore::RequestedScrollData>(uint64_t a1, IPC::Decoder *a2)
{
  v30 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
  v6 = IPC::Decoder::decode<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>>(a2);
  v8 = v7;
  v9 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  v10 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
  result = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a2);
  v12 = result;
  v13 = *(a2 + 1);
  v14 = *(a2 + 2);
  v15 = *a2;
  v29 = v6;
  if (v13 <= &v14[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v13)
      {
        (*(*v27 + 16))(v27);
        v13 = *(a2 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_36:
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v13)
      {
        (*(*v28 + 16))(v28);
LABEL_9:
        v15 = *a2;
        v13 = *(a2 + 1);
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
    goto LABEL_10;
  }

  *(a2 + 2) = v14 + 1;
  if (!v14)
  {
    goto LABEL_36;
  }

  v16 = *v14;
  if (v16 < 2)
  {
    if (!v16)
    {
      v18 = 0;
      v24 = 1;
      goto LABEL_14;
    }

    v17 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a2);
    if (v17 >= 0x100u)
    {
      v18 = v17;
      v19 = IPC::Decoder::decode<mpark::variant<WebCore::FloatPoint,WebCore::FloatSize>>(a2);
      if ((v20 & 0x100000000) != 0)
      {
        v3 = v19;
        v2 = v20;
        v21 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
        if (v21 >= 0x100u)
        {
          LOBYTE(v6) = v21;
          result = IPC::Decoder::decode<WebCore::UserStyleLevel>(a2);
          if (result > 0xFFu)
          {
            v24 = 1;
            LOBYTE(v16) = 1;
            goto LABEL_14;
          }
        }
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  *a2 = 0;
  *(a2 + 1) = 0;
  v22 = *(a2 + 3);
  if (v22 && v13)
  {
    (*(*v22 + 16))(v22, v15);
  }

  v23 = *a2;
  v13 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v24 = 0;
    v18 = 0;
    LOBYTE(v16) = 1;
LABEL_14:
    v23 = *a2;
    if (!*a2)
    {
      break;
    }

    if (v30 > 0xFFu && (v8 & 0x100000000) != 0 && v9 > 0xFFu && v10 > 0xFFu && (v12 & 0x100) != 0 && (v24 & 1) != 0)
    {
      *a1 = v30;
      *(a1 + 4) = v29;
      *(a1 + 12) = v8;
      *(a1 + 16) = v9;
      *(a1 + 17) = v10;
      *(a1 + 18) = v12;
      *(a1 + 20) = v18;
      *(a1 + 24) = v3;
      *(a1 + 32) = v2;
      *(a1 + 36) = v6;
      *(a1 + 37) = result;
      *(a1 + 40) = v16;
      *(a1 + 44) = 1;
      return result;
    }

    __break(1u);
LABEL_25:
    if (v13)
    {
      result = (*(*result + 16))(result, v23);
    }
  }

  *a1 = 0;
  *(a1 + 44) = 0;
  v25 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v25)
  {
    v26 = *(*result + 16);

    return v26();
  }

  return result;
}

WTF *IPC::Decoder::decode<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>>(uint64_t a1, uint64_t *a2)
{
  v5 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  if (v7 <= &v5[-v6])
  {
    *a2 = 0;
    a2[1] = 0;
    v43 = a2[3];
    if (v43)
    {
      if (v7)
      {
        (*(*v43 + 16))(v43);
        v6 = *a2;
        v7 = a2[1];
LABEL_78:
        *a2 = 0;
        a2[1] = 0;
        v44 = a2[3];
        if (v44)
        {
          if (v7)
          {
            (*(*v44 + 16))(v44, v6);
            v6 = *a2;
            v7 = a2[1];
            goto LABEL_81;
          }
        }

        else
        {
          v7 = 0;
        }

        v6 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    goto LABEL_78;
  }

  a2[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_78;
  }

  v8 = *v5;
  if (v8 < 3)
  {
    v9 = v8 | 0x100;
    goto LABEL_5;
  }

LABEL_81:
  *a2 = 0;
  a2[1] = 0;
  v45 = a2[3];
  if (v45 && v7)
  {
    (*(*v45 + 16))(v45, v6);
  }

  v9 = 0;
LABEL_5:
  IPC::Decoder::decode<WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v55, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v52, a2);
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v49);
  v11 = a2[1];
  v12 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *a2;
  v14 = v12 - *a2;
  v15 = v11 >= v14;
  v16 = v11 - v14;
  if (!v15 || v16 <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v41 = a2[3];
    if (v41)
    {
      if (v11)
      {
        (*(*v41 + 16))(v41);
        v11 = a2[1];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_72;
  }

  a2[2] = (v12 + 1);
  if (v12)
  {
    v18 = *v12;
    v46 = 0;
    *&v47 = 0;
    if (v18 < 0x20000)
    {
      if (v18)
      {
        v19 = WTF::fastMalloc((8 * v18));
        LODWORD(v2) = 0;
        LODWORD(v47) = v18;
        v46 = v19;
        while (1)
        {
          v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
          v58 = v20;
          v59 = v13;
          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v2 == v47)
          {
            v21 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v46, v2 + 1, &v58);
            v22 = DWORD1(v47);
            v19 = v46;
            *(v46 + DWORD1(v47)) = *v21;
          }

          else
          {
            *(v19 + v2) = v20;
            v22 = DWORD1(v47);
          }

          LODWORD(v2) = v22 + 1;
          DWORD1(v47) = v22 + 1;
          if (!--v18)
          {
            goto LABEL_21;
          }
        }

LABEL_36:
        if (v46)
        {
          WTF::fastFree(v46, v13);
        }

        goto LABEL_38;
      }

      LODWORD(v2) = 0;
LABEL_21:
      result = v46;
      LODWORD(v12) = v47;
      v24 = 1;
      goto LABEL_40;
    }

    v25 = 0;
    LODWORD(v2) = 0;
    do
    {
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v58 = result;
      v59 = v13;
      if ((v13 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v2 == v47)
      {
        result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v46, v2 + 1, &v58);
        v26 = DWORD1(v47);
        v25 = v46;
        *(v46 + DWORD1(v47)) = *result;
      }

      else
      {
        *(v25 + v2) = result;
        v26 = DWORD1(v47);
      }

      v2 = (v26 + 1);
      DWORD1(v47) = v26 + 1;
      --v18;
    }

    while (v18);
    if (v47 <= v2)
    {
      goto LABEL_21;
    }

    if (v26 == -1)
    {
      goto LABEL_68;
    }

    if (v2 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v27 = WTF::fastMalloc((8 * v2));
    LODWORD(v47) = v2;
    v46 = v27;
    if (v27 == v25)
    {
LABEL_68:
      v46 = 0;
      LODWORD(v47) = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        *(v27 + v28) = *(v25 + v28);
        v28 += 8;
      }

      while (8 * v2 != v28);
      if (!v25)
      {
        goto LABEL_21;
      }
    }

    WTF::fastFree(v25, v13);
    LODWORD(v2) = DWORD1(v47);
    goto LABEL_21;
  }

LABEL_72:
  *a2 = 0;
  a2[1] = 0;
  v42 = a2[3];
  if (v42 && v11)
  {
    (*(*v42 + 16))(v42);
  }

LABEL_38:
  v13 = *a2;
  v29 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v29)
    {
      (*(*result + 16))(result, v13);
    }

    v24 = 0;
    result = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_40:
  v30 = *a2;
  if (!*a2)
  {
    goto LABEL_57;
  }

  if (v9 <= 0xFF || (LOBYTE(v46) = v9, (v57 & 1) == 0) || (v31 = v55, v32 = v56, v55 = 0, v56 = 0, (v54 & 1) == 0) || (v33 = v52, v34 = v53, v52 = 0, v53 = 0, (v51 & 1) == 0) || (v35 = v49, v36 = v50, v49 = 0, v50 = 0, (v24 & 1) == 0))
  {
    __break(1u);
LABEL_57:
    *a1 = 0;
    *(a1 + 72) = 0;
    if (result)
    {
      v38 = v24;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      result = WTF::fastFree(result, v13);
    }

    goto LABEL_47;
  }

  *&v10 = 0;
  *a1 = v9;
  v47 = v10;
  *(a1 + 8) = v31;
  *(a1 + 16) = v32;
  v48[0] = v10;
  *(a1 + 24) = v33;
  *(a1 + 32) = v34;
  v48[1] = v10;
  *(a1 + 40) = v35;
  *(a1 + 48) = v36;
  v48[2] = v10;
  *(a1 + 56) = result;
  *(a1 + 64) = v12;
  *(a1 + 68) = v2;
  *(a1 + 72) = 1;
  WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v48, v13);
  result = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47, v37);
LABEL_47:
  if (v51 == 1)
  {
    result = v49;
    if (v49)
    {
      v49 = 0;
      LODWORD(v50) = 0;
      result = WTF::fastFree(result, v13);
    }
  }

  if (v54 == 1)
  {
    result = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v52, v13);
  }

  if (v57 == 1)
  {
    result = WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v55, v13);
  }

  if (!v30)
  {
    v39 = *a2;
    v40 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      if (v40)
      {
        return (*(*result + 16))(result, v39);
      }
    }
  }

  return result;
}

void sub_19D79B8A4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, int a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a21 == 1 && a18)
  {
    WTF::fastFree(a18, a2);
  }

  if (a27 == 1)
  {
    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a23, a2);
  }

  if (*(v27 - 72) == 1)
  {
    WTF::Vector<WebCore::SnapOffset<float>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27 - 88, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::MouseLocationState>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::IntPoint>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v8)
    {
      *a1 = v4;
      *(a1 + 8) = result;
      *(a1 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(*result + 16);

    return v11();
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ScrollbarHoverState>(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    goto LABEL_17;
  }

  v1 = v3 + 1;
  a1[2] = v3 + 1;
  if (!v3)
  {
    v24 = a1;
    goto LABEL_20;
  }

  v5 = *v3;
  if (v5 < 2)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v22 = v5;
  v24 = a1;
  while (1)
  {
    *v24 = 0;
    v24[1] = 0;
    v13 = v24[3];
    if (!v13 || !v2)
    {
      v23 = 0;
      v21 = 0;
      v14 = 0;
      v4 = 0;
LABEL_26:
      *v24 = 0;
      v24[1] = 0;
      v15 = v24[3];
      if (v15 && v14)
      {
        (*(*v15 + 16))(v15, v4, v14);
        v20 = 0;
        v4 = *v24;
        v2 = v24[1];
      }

      else
      {
        v2 = 0;
        v4 = 0;
        v20 = 0;
      }

      goto LABEL_29;
    }

    (*(*v13 + 16))(v13, v4);
    v6 = 0;
    a1 = v24;
    v4 = *v24;
    v2 = v24[1];
    v1 = v24[2];
    v5 = v22;
LABEL_5:
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v2 <= &v1[-v4])
    {
      v21 = v6;
      v23 = v7;
      v14 = 0;
      v19 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      v24 = a1;
      if (v2 && v19)
      {
        (*(*v19 + 16))(v19);
        v4 = *v24;
        v14 = v24[1];
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_26;
    }

    a1[2] = v1 + 1;
    if (!v1)
    {
      v21 = v6;
      v23 = v7;
      v24 = a1;
      v14 = v2;
      goto LABEL_26;
    }

    v8 = *v1;
    if (v8 < 2)
    {
      LOWORD(v1) = 1;
      if (!v4)
      {
        goto LABEL_31;
      }

      goto LABEL_12;
    }

    v20 = *v1;
    v21 = v6;
    v23 = v7;
    v24 = a1;
LABEL_29:
    *v24 = 0;
    v24[1] = 0;
    v16 = v24[3];
    if (!v16 || !v2)
    {
      break;
    }

    (*(*v16 + 16))(v16, v4);
    LOWORD(v1) = 0;
    a1 = v24;
    v4 = *v24;
    v7 = v23;
    v8 = v20;
    LOBYTE(v6) = v21;
    if (!*v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    if (v6 & 1) != 0 && (v1)
    {
      LOWORD(v1) = v8 != 0;
      v9 = 1;
      return (v7 | (v1 << 8)) | (v9 << 16);
    }

    __break(1u);
LABEL_17:
    *a1 = 0;
    a1[1] = 0;
    v24 = a1;
    v11 = a1[3];
    if (!v11)
    {
      v2 = 0;
LABEL_19:
      v4 = 0;
      goto LABEL_20;
    }

    if (!v2)
    {
      goto LABEL_19;
    }

    (*(*v11 + 16))(v11);
    v4 = *v24;
    v2 = v24[1];
LABEL_20:
    *v24 = 0;
    v24[1] = 0;
    v12 = v24[3];
    if (!v12)
    {
      v2 = 0;
      goto LABEL_22;
    }

    if (v2)
    {
      (*(*v12 + 16))(v12, v4);
      v22 = 0;
      v4 = *v24;
      v2 = v24[1];
    }

    else
    {
LABEL_22:
      v4 = 0;
      v22 = 0;
    }
  }

  v4 = 0;
  a1 = v24;
LABEL_31:
  v17 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v18 = a1[3];
  if (v18 && v17)
  {
    (*(*v18 + 16))(v18, v4);
  }

  v7 = 0;
  v9 = 0;
  return (v7 | (v1 << 8)) | (v9 << 16);
}

uint64_t IPC::Decoder::decode<WebCore::RequestedKeyboardScrollData>(uint64_t result, IPC::Decoder *a2)
{
  v6 = result;
  v7 = *(a2 + 2);
  v8 = *a2;
  v9 = *(a2 + 1);
  if (v9 <= &v7[-v8])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v28 = *(a2 + 3);
    if (v28)
    {
      if (v9)
      {
        (*(*v28 + 16))(v28);
        v8 = *a2;
        v9 = *(a2 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
  }

  else
  {
    v10 = v7 + 1;
    *(a2 + 2) = v7 + 1;
    if (v7)
    {
      v11 = *v7;
      if (v11 < 3)
      {
        v12 = v11 | 0x100;
        goto LABEL_5;
      }

      goto LABEL_33;
    }
  }

LABEL_30:
  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = *(a2 + 3);
  if (v29)
  {
    if (v9)
    {
      (*(*v29 + 16))(v29, v8);
      v8 = *a2;
      v9 = *(a2 + 1);
      goto LABEL_33;
    }
  }

  else
  {
    v9 = 0;
  }

  v8 = 0;
LABEL_33:
  *a2 = 0;
  *(a2 + 1) = 0;
  v30 = *(a2 + 3);
  if (!v30)
  {
    v12 = 0;
    goto LABEL_35;
  }

  if (!v9)
  {
    v12 = 0;
    goto LABEL_36;
  }

  result = (*(*v30 + 16))(v30, v8);
  v12 = 0;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
LABEL_5:
  if (v9 <= &v10[-v8])
  {
    v38 = *(a2 + 3);
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v38)
    {
      if (v9)
      {
        (*(*v38 + 16))(v38);
        v8 = *a2;
        v9 = *(a2 + 1);
LABEL_37:
        *a2 = 0;
        *(a2 + 1) = 0;
        v31 = *(a2 + 3);
        if (v31)
        {
          if (v9)
          {
            (*(*v31 + 16))(v31, v8);
            v9 = *(a2 + 1);
          }
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_39;
      }

LABEL_36:
      v8 = 0;
      goto LABEL_37;
    }

LABEL_35:
    v9 = 0;
    goto LABEL_36;
  }

  *(a2 + 2) = v10 + 1;
  if (!v10)
  {
    goto LABEL_37;
  }

  v13 = *v10;
  if (v13 >= 2)
  {
LABEL_39:
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (!v32 || !v9)
    {
      goto LABEL_40;
    }

    v27 = *(*v32 + 16);
    goto LABEL_53;
  }

  if (!v13)
  {
    v24 = 1;
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_41:
    *v6 = 0;
    *(v6 + 36) = 0;
    v36 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v36)
    {
      v37 = *(*result + 16);

      return v37();
    }

    return result;
  }

  v14 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v16 = v15;
  v2 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v18 = v17;
  v3 = IPC::Decoder::decode<WebCore::FloatPoint>(a2);
  v20 = v19;
  v4 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a2);
  result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a2);
  if (!*a2)
  {
    goto LABEL_24;
  }

  if ((v16 & 1) == 0 || (v18 & 1) == 0 || (v20 & 1) == 0 || (v4 & 0x100) == 0 || (result & 0x100) == 0 || v12 <= 0xFF)
  {
    while (1)
    {
      __break(1u);
LABEL_24:
      v25 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26 && v25)
      {
        v27 = *(*v26 + 16);
LABEL_53:
        v27();
      }

LABEL_40:
      v33 = *a2;
      v34 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v35 = *(a2 + 3);
      if (!v35)
      {
        goto LABEL_41;
      }

      if (!v34)
      {
        goto LABEL_41;
      }

      result = (*(*v35 + 16))(v35, v33);
      v24 = 0;
      if (!*a2)
      {
        goto LABEL_41;
      }

LABEL_18:
      if (v12 >= 0x100 && (v24 & 1) != 0)
      {
        v22 = 0;
        v21 = 0;
        v23 = 0;
        goto LABEL_21;
      }
    }
  }

  v21 = v14 & 0xFFFFFFFFFFFFFF00;
  v22 = v14;
  v23 = 1;
LABEL_21:
  *v6 = v12;
  *(v6 + 1) = v39;
  *(v6 + 3) = v40;
  *(v6 + 4) = v21 | v22;
  *(v6 + 12) = v2;
  *(v6 + 20) = v3;
  *(v6 + 28) = v4;
  *(v6 + 29) = result;
  *(v6 + 32) = v23;
  *(v6 + 36) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollingStatePluginHostingNode,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  v4 = a2[4];
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 9);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[5]);
  if (a2[5])
  {
    v8 = a2[13];
    v7 = (a2 + 13);
    v6 = v8;
    if (v8)
    {
      v9 = *v7;
      v6 = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v10 = v6;
    return IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v9);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollingStatePluginScrollingNode,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 72);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  v6 = *(a2 + 40);
  if (v6)
  {
    if (*(a2 + 104))
    {
      v14 = *(a2 + 104);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      LOBYTE(v14) = 0;
    }

    v15 = v7;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v14);
    v6 = *(a2 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 132));
  v6 = *(a2 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
  result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
  v6 = *(a2 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
  result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 148));
  v6 = *(a2 + 40);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  result = IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 156));
  v6 = *(a2 + 40);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
  result = IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 164));
  v6 = *(a2 + 40);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = IPC::ArgumentCoder<WebCore::ScrollableAreaParameters,void>::encode(a1, (a2 + 438));
  v6 = *(a2 + 40);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = IPC::ArgumentCoder<WebCore::RequestedScrollData,void>::encode(a1, (a2 + 452));
  v6 = *(a2 + 40);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = IPC::ArgumentCoder<WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>,void>::encode(a1, a2 + 168);
  v6 = *(a2 + 40);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v8 = *(a2 + 240);
  LODWORD(v14) = v8;
  BYTE4(v14) = BYTE4(v8);
  result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v9 = *(a2 + 248);
  LODWORD(v14) = v9;
  BYTE4(v14) = BYTE4(v9);
  result = IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  LOBYTE(v14) = *(a2 + 535);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_42:
  v10 = *(a2 + 272);
  if (v10)
  {
    v14 = *(a2 + 272);
    LOBYTE(v10) = 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = v10;
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_46:
  v11 = *(a2 + 312);
  if (v11)
  {
    v14 = *(a2 + 312);
    LOBYTE(v11) = 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = v11;
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_50:
  v12 = *(a2 + 352);
  if (v12)
  {
    v14 = *(a2 + 352);
    LOBYTE(v12) = 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = v12;
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_54:
  v13 = *(a2 + 392);
  if (v13)
  {
    v14 = *(a2 + 392);
    LOBYTE(v13) = 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = v13;
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  LOBYTE(v14) = *(a2 + 536);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = IPC::ArgumentCoder<WebCore::LayoutRect,void>::encode(a1, (a2 + 420));
  v6 = *(a2 + 40);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  LOWORD(v14) = *(a2 + 416);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14 + 1);
  v6 = *(a2 + 40);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  LOWORD(v14) = *(a2 + 436);
  IPC::Encoder::operator<<<BOOL>(a1, &v14);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14 + 1);
  v6 = *(a2 + 40);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  LOBYTE(v14) = *(a2 + 532);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14);
  v6 = *(a2 + 40);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 533));
  v6 = *(a2 + 40);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_64:
  LOBYTE(v14) = *(a2 + 534);
  result = IPC::Encoder::operator<<<BOOL>(a1, &v14);
  if ((*(a2 + 40) & 0x800000) == 0)
  {
    return result;
  }

LABEL_25:
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 496));
  return IPC::ArgumentCoder<std::optional<WebCore::KeyboardScroll>,void>::encode<IPC::Encoder,std::optional<WebCore::KeyboardScroll> const&>(a1, a2 + 500);
}

uint64_t IPC::ArgumentCoder<WebCore::ScrollingStatePositionedNode,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ScrollingStateNode,WTF::RawPtrTraits<WebCore::ScrollingStateNode>,WTF::DefaultRefDerefTraits<WebCore::ScrollingStateNode>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 72);
  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  v6 = *(a2 + 40);
  if (v6)
  {
    if (*(a2 + 104))
    {
      v13 = *(a2 + 104);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      LOBYTE(v13) = 0;
    }

    v14 = v9;
    result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, &v13);
    v6 = *(a2 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
  v10 = *(a2 + 140);
  if (v10)
  {
    v11 = *(a2 + 128);
    v12 = 16 * v10;
    do
    {
      result = IPC::Encoder::operator<<<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> const&>(a1, v11);
      v11 += 2;
      v12 -= 16;
    }

    while (v12);
  }

  if ((*(a2 + 40) & 4) != 0)
  {
LABEL_4:
    v7 = *(a2 + 148);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 144));
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v7);
    v8 = *(a2 + 156);
    IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
    return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v8);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteScrollingUIState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *a2;
  if ((*a2 & 1) == 0)
  {
    if ((*a2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = IPC::ArgumentCoder<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 16));
    if ((*a2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = IPC::ArgumentCoder<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  v5 = *a2;
  if ((*a2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return IPC::ArgumentCoder<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 24));
}

uint64_t *IPC::ArgumentCoder<WebKit::RemoteScrollingUIState,void>::decode@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    result[1] = 0;
    v11 = result[3];
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_31;
  }

  result[2] = (v5 + 1);
  if (!v5)
  {
LABEL_31:
    *v2 = 0;
    v2[1] = 0;
    v12 = v2[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_34;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_34:
    *v2 = 0;
    v2[1] = 0;
    result = v2[3];
    if (result && v4)
    {
      result = (*(*result + 16))(result, v6);
    }

    goto LABEL_35;
  }

  v7 = *v5;
  if (v7 >= 8)
  {
    goto LABEL_34;
  }

  if (v7)
  {
    result = IPC::Decoder::decode<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v13, result);
    if (v14 == 1)
    {
      v8 = v13;
      if ((v7 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_35:
    *a2 = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v8 = 0;
  if ((v7 & 2) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_9:
  result = IPC::Decoder::decode<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v13, v2);
  if (v14)
  {
    v9 = v13;
LABEL_11:
    if (v7 >= 4)
    {
      result = IPC::Decoder::decode<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v13, v2);
      if (v14)
      {
        v10 = v13;
        if (*v2)
        {
          goto LABEL_16;
        }

        *a2 = 0;
        *(a2 + 32) = 0;
        if (v10)
        {
          result = WTF::fastFree((v10 - 16), v6);
        }

LABEL_20:
        if (v9)
        {
          result = WTF::fastFree((v9 - 16), v6);
          if (!v8)
          {
            return result;
          }
        }

        else if (!v8)
        {
          return result;
        }

        goto LABEL_22;
      }
    }

    else if (*v2)
    {
      v10 = 0;
LABEL_16:
      *a2 = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      *(a2 + 24) = v10;
      *(a2 + 32) = 1;
      return result;
    }

    *a2 = 0;
    *(a2 + 32) = 0;
    goto LABEL_20;
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (!v8)
  {
    return result;
  }

LABEL_22:

  return WTF::fastFree((v8 - 16), v6);
}

void sub_19D79C9BC(_Unwind_Exception *exception_object, void *a2)
{
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  if (v2)
  {
    WTF::fastFree((v2 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::HashSet<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = ((a2[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 3)
  {
    *a2 = 0;
    a2[1] = 0;
    v27 = a2[3];
    if (v27)
    {
      if (v6)
      {
        (*(*v27 + 16))(v27);
        v5 = *a2;
        v6 = a2[1];
LABEL_47:
        *a2 = 0;
        a2[1] = 0;
        v28 = a2[3];
        if (v28 && v6)
        {
          (*(*v28 + 16))(v28, v5);
        }

        *v3 = 0;
        v3[8] = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_47;
  }

  a2[2] = (v4 + 1);
  if (!v4)
  {
    goto LABEL_47;
  }

  v8 = *v4;
  v31 = 0;
  if (!v8)
  {
    v26 = 0;
LABEL_42:
    *v3 = v26;
    v3[8] = 1;
    return result;
  }

  v9 = 0;
  while (1)
  {
    IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::DOMCacheIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v29);
    if ((v30 & 1) == 0)
    {
      break;
    }

    if (*(&v29 + 1) == -1 || v29 == 0)
    {
      break;
    }

    v12 = v31;
    if (v31 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(&v31, 0), (v12 = v31) != 0))
    {
      v13 = *(v12 - 8);
    }

    else
    {
      v13 = 0;
    }

    result = WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>::hash(&v29);
    v14 = result & v13;
    v10 = (v12 + 16 * (result & v13));
    v16 = *v10;
    v15 = v10[1];
    v17 = v29;
    if (*v10 != 0)
    {
      v18 = 0;
      v19 = 1;
      while (__PAIR128__(v15, v16) != v29)
      {
        if (v15 == -1)
        {
          v18 = v10;
        }

        v14 = (v14 + v19) & v13;
        v10 = (v12 + 16 * v14);
        v16 = *v10;
        v15 = v10[1];
        ++v19;
        if (*v10 == 0)
        {
          if (v18)
          {
            *v18 = 0;
            v18[1] = 0;
            --*(v31 - 16);
            v17 = v29;
            v10 = v18;
          }

          goto LABEL_25;
        }
      }

      break;
    }

LABEL_25:
    *v10 = v17;
    v20 = v31;
    if (v31)
    {
      v21 = *(v31 - 12) + 1;
    }

    else
    {
      v21 = 1;
    }

    *(v31 - 12) = v21;
    v22 = (*(v20 - 16) + v21);
    v23 = *(v20 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_31;
      }

LABEL_30:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(&v31, v10);
      goto LABEL_31;
    }

    if (3 * v23 <= 4 * v22)
    {
      goto LABEL_30;
    }

LABEL_31:
    if (++v9 == v8)
    {
      v26 = v31;
      goto LABEL_42;
    }
  }

  *v3 = 0;
  v3[8] = 0;
  if (v31)
  {
    WTF::fastFree((v31 - 16), v10);
  }

LABEL_38:
  v24 = *a2;
  v25 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v25)
    {
      return (*(*result + 16))(result, v24);
    }
  }

  return result;
}

void sub_19D79CC98(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    WTF::fastFree((a12 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 25));
  v5 = *(a2 + 26);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 27));
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 28));
}

void *IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::encode(WTF *a1, uint64_t a2)
{
  IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (*(a1 + 1) < v5)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  else
  {
    *(*a1 + (v4 & 3)) = *(a2 + 8);
    v6 = *(a1 + 1);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      goto LABEL_13;
    }

    *a1 += v5;
    *(a1 + 1) = v8;
  }

  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::encode(a1, (a2 + 16));
  if (!*(a1 + 1))
  {
    goto LABEL_14;
  }

  **a1 = *(a2 + 24);
  v9 = *(a1 + 1);
  if (v9)
  {
    ++*a1;
    *(a1 + 1) = v9 - 1;
    goto LABEL_8;
  }

LABEL_13:
  while (1)
  {
    __break(1u);
LABEL_14:
    *a1 = 0;
    *(a1 + 1) = 0;
LABEL_8:
    result = IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::encode(a1, (a2 + 25));
    if (!*(a1 + 1))
    {
      break;
    }

    **a1 = *(a2 + 27);
    v11 = *(a1 + 1);
    if (v11)
    {
      v13 = v11 - 1;
      v12 = v11 == 1;
      v14 = (*a1 + 1);
      *a1 = v14;
      *(a1 + 1) = v13;
      if (v12)
      {
        break;
      }

      *v14 = *(a2 + 28);
      v15 = *(a1 + 1);
      if (v15)
      {
        ++*a1;
        *(a1 + 1) = v15 - 1;
        return result;
      }
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  return result;
}

void IPC::ArgumentCoder<WebKit::RemoteImageBufferSetConfiguration,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = v8 - *a1;
  v10 = v7 >= v9;
  v11 = v7 - v9;
  if (v10 && v11 > 3)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v13 = *v8 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
  }

  IPC::Decoder::markInvalid(a1);
  v13 = 0;
LABEL_8:
  IPC::ArgumentCoder<WebCore::DestinationColorSpace,void>::decode(a1, &cf);
  v14 = v25;
  if ((v25 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v15 = *(a1 + 2);
  if (*(a1 + 1) <= &v15[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_37;
  }

  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_37:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_38;
  }

  v16 = *v15;
  if ((v16 - 1) < 2 || v16 == 4)
  {
    v18 = 0;
    goto LABEL_18;
  }

LABEL_38:
  IPC::Decoder::markInvalid(a1);
  LOBYTE(v16) = 0;
  v18 = 1;
LABEL_18:
  v19 = IPC::ArgumentCoder<WebCore::ImageBufferFormat,void>::decode(a1);
  if ((v19 & 0xFF0000) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v20 = IPC::Decoder::decode<WebCore::RenderingMode>(a1);
  v21 = IPC::Decoder::decode<WebCore::RenderingPurpose>(a1);
  if (*a1)
  {
    if ((v6 & 1) != 0 && (v13 & 0x100000000) != 0 && (v14 & 1) != 0 && !v18 && (v19 & 0xFF0000) != 0 && (v20 & 0x100) != 0 && (v21 & 0x100) != 0)
    {
      v22 = cf;
      *a2 = v4;
      *(a2 + 8) = v13;
      *(a2 + 16) = v22;
      *(a2 + 24) = v16;
      *(a2 + 25) = v19;
      *(a2 + 27) = v20;
      *(a2 + 28) = v21;
      *(a2 + 32) = 1;
      return;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v14)
  {
    v23 = cf;
    if (cf)
    {

      CFRelease(v23);
    }
  }
}

void sub_19D79D048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (v9)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::RenderingMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::RenderingMode,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t *IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<__CFDictionary const*,void>::encode(a1, *(a2 + 8));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<__CFDictionary const*,void>::encode(a1, v4);
}

void IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::decode(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::MediaSelectionOption::MediaType>(a1);
  IPC::Decoder::decode<WTF::RetainPtr<__CFDictionary const*>>(a1, v5, &v13);
  IPC::Decoder::decode<WTF::RetainPtr<__CFDictionary const*>>(a1, v6, &cf);
  if (!*a1)
  {
LABEL_13:
    *a2 = 0;
    *(a2 + 24) = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ((v4 & 0x100) == 0 || (v14 & 1) == 0 || (v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v13;
  v13 = 0;
  v8 = cf;
  cf = 0;
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
LABEL_6:
  v9 = cf;
  cf = 0;
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_8:
  if (v14 == 1)
  {
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void sub_19D79D1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, char a12)
{
  if (a12)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::SecItemResponseData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v4);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>> const&>(a1, a2 + 8, v4);
}

void IPC::ArgumentCoder<WebKit::SecItemResponseData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<float>(a1);
  IPC::Decoder::decode<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>>(a1, v9, v5);
  if (*a1)
  {
    if (v4 & 0x100000000) != 0 && (v10)
    {
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::move_constructor(v8, v9);
      *a2 = v4;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, v8);
      *(a2 + 32) = 1;
      mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v8, v7);
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_5:
  if (v10 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v9, v6);
  }
}

void sub_19D79D304(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v16 + 8, a2);
  if (a16 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(&a13, v18);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,void>::decode<IPC::Decoder>(a1, a2, a3);
  if ((a2[24] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      (*(*v7 + 16))(v7, v5);
    }
  }
}

void sub_19D79D3A4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 24) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::RetainPtr<void const*>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::WebsiteDataStoreParameters,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v29);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v27);
  IPC::Decoder::decode<WebKit::NetworkSessionCreationParameters>(v44, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v24, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v21, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v18, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v15, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v12, a1);
  if (*a1)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_44;
    }

    WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32, &v29);
    if ((v28 & 1) == 0)
    {
      goto LABEL_44;
    }

    v5 = v27;
    v27 = 0;
    v32[2] = v5;
    if ((v45 & 1) == 0)
    {
      goto LABEL_44;
    }

    WebKit::NetworkSessionCreationParameters::NetworkSessionCreationParameters(&v33, v44);
    if ((v26 & 1) == 0)
    {
      goto LABEL_44;
    }

    LOBYTE(v34) = 0;
    v35 = 0;
    if (v25 == 1)
    {
      goto LABEL_45;
    }

    while (1)
    {
      if (v23)
      {
        LOBYTE(v36) = 0;
        v37 = 0;
        if (v22 == 1)
        {
          v8 = v21;
          v21 = 0;
          v36 = v8;
          v37 = 1;
        }

        if (v20)
        {
          LOBYTE(v38) = 0;
          v39 = 0;
          if (v19 == 1)
          {
            v9 = v18;
            v18 = 0;
            v38 = v9;
            v39 = 1;
          }

          if (v17)
          {
            LOBYTE(v40) = 0;
            v41 = 0;
            if (v16 == 1)
            {
              v10 = v15;
              v15 = 0;
              v40 = v10;
              v41 = 1;
            }

            if (v14)
            {
              break;
            }
          }
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      v7 = v24;
      v24 = 0;
      v34 = v7;
      v35 = 1;
    }

    LOBYTE(v42) = 0;
    v43 = 0;
    if (v13 == 1)
    {
      v11 = v12;
      v12 = 0;
      v42 = v11;
      v43 = 1;
    }

    WebKit::WebsiteDataStoreParameters::WebsiteDataStoreParameters(a2, v32);
    a2[768] = 1;
    WebKit::WebsiteDataStoreParameters::~WebsiteDataStoreParameters(v32);
  }

  else
  {
    *a2 = 0;
    a2[768] = 0;
  }

  if (v14 == 1 && v13 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v12);
  }

  if (v17 == 1 && v16 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v15);
  }

  if (v20 == 1 && v19 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v18);
  }

  if (v23 == 1 && v22 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v21);
  }

  if (v26 == 1 && v25 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v24);
  }

  if (v45 == 1)
  {
    WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v44);
  }

  if (v28 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v27);
  }

  if (v31 == 1)
  {
    v6 = v29;
    if (v29)
    {
      v29 = 0;
      v30 = 0;
      WTF::fastFree(v6, v4);
    }
  }
}

void sub_19D79D700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebKit::SandboxExtensionImpl *a9, char a10, int a11, __int16 a12, WebKit::SandboxExtensionImpl *a13, __int16 a14, int a15, __int16 a16, WebKit::SandboxExtensionImpl *a17, __int16 a18, int a19, __int16 a20, WebKit::SandboxExtensionImpl *a21, __int16 a22, int a23, __int16 a24, WebKit::SandboxExtensionImpl *a25, __int16 a26, int a27, __int16 a28, WebKit::SandboxExtensionImpl *a29, __int16 a30, WTF *a31, int a32, int a33, char a34, WTF *a35)
{
  WebKit::WebsiteDataStoreParameters::~WebsiteDataStoreParameters(&a35);
  if (a12 == 1 && a10 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a9);
  }

  if (a16 == 1 && a14 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a13);
  }

  if (a20 == 1 && a18 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a17);
  }

  if (a24 == 1 && a22 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a21);
  }

  if (a28 == 1 && a26 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a25);
  }

  if (LOBYTE(STACK[0x630]) == 1)
  {
    WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(&STACK[0x3A0]);
  }

  if (a30 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a29);
  }

  if (a34 == 1)
  {
    v37 = a31;
    if (a31)
    {
      a31 = 0;
      a32 = 0;
      WTF::fastFree(v37, v36);
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebKit::NetworkSessionCreationParameters>(_BYTE *a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WebKit::NetworkSessionCreationParameters,void>::decode(a1, a2);
  if ((a1[656] & 1) == 0)
  {
    IPC::Decoder::markInvalid(a2);
  }
}

void sub_19D79D8C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 656) == 1)
  {
    WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v1);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebsiteDataStoreParameters::~WebsiteDataStoreParameters(WebKit::SandboxExtensionImpl **this)
{
  if (*(this + 760) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 94);
  }

  if (*(this + 744) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 92);
  }

  if (*(this + 728) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 90);
  }

  if (*(this + 712) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 88);
  }

  if (*(this + 696) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 86);
  }

  WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(this + 4);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(this + 2);
  v3 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v3, v2);
  }
}

uint64_t IPC::ArgumentCoder<WebKit::WebsiteData::Entry,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<float>(a1);
  if ((v2 & 0x1FFC00800) == 0x100000000)
  {
    return v2 & 0x3FF7FF | 0x100000000;
  }

  IPC::Decoder::markInvalid(a1);
  return 0;
}

uint64_t IPC::ArgumentCoder<WebKit::WebsiteData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 24));

  return IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 32));
}

WTF::StringImpl **IPC::ArgumentCoder<WebKit::WebsiteData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_73;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_73:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (v33 && v4)
    {
      (*(*v33 + 16))(v33);
    }

    LOBYTE(v42[0]) = 0;
    v43 = 0;
LABEL_75:
    v34 = *a1;
    v35 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (v36 && v35)
    {
      (*(*v36 + 16))(v36, v34);
    }

    goto LABEL_27;
  }

  v10 = *v5;
  v44 = 0;
  v45 = 0;
  if (v10 < 0x5555)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    LODWORD(v45) = 48 * v10 / 0x30u;
    v44 = WTF::fastMalloc((48 * v10));
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebsiteData::Entry>(&v46, a1);
      v12 = v49;
      if ((v49 & 1) == 0)
      {
        LOBYTE(v42[0]) = 0;
        v43 = 0;
        goto LABEL_18;
      }

      if (HIDWORD(v45) == v45)
      {
        WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(&v44, &v46);
        goto LABEL_18;
      }

      v13 = v44 + 48 * HIDWORD(v45);
      *v13 = 0;
      v13[24] = -1;
      if (BYTE8(v47))
      {
        if (BYTE8(v47) == 255)
        {
          goto LABEL_17;
        }

        *v13 = v46;
      }

      else
      {
        v14 = v46;
        *&v46 = 0;
        *v13 = v14;
        v15 = *(&v46 + 1);
        *(&v46 + 1) = 0;
        *(v13 + 1) = v15;
        *(v13 + 4) = v47;
      }

      v13[24] = BYTE8(v47);
LABEL_17:
      *(v13 + 2) = v48;
      ++HIDWORD(v45);
LABEL_18:
      if (v49 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v46);
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (!--v10)
      {
        goto LABEL_25;
      }
    }
  }

  do
  {
    result = IPC::Decoder::decode<WebKit::WebsiteData::Entry>(&v46, a1);
    v24 = v49;
    if ((v49 & 1) == 0)
    {
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      goto LABEL_53;
    }

    if (HIDWORD(v45) == v45)
    {
      result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::WebsiteData::Entry>(&v44, &v46);
      goto LABEL_53;
    }

    v25 = v44 + 48 * HIDWORD(v45);
    *v25 = 0;
    v25[24] = -1;
    if (BYTE8(v47))
    {
      if (BYTE8(v47) == 255)
      {
        goto LABEL_52;
      }

      *v25 = v46;
    }

    else
    {
      v26 = v46;
      *&v46 = 0;
      *v25 = v26;
      v27 = *(&v46 + 1);
      *(&v46 + 1) = 0;
      *(v25 + 1) = v27;
      *(v25 + 4) = v47;
    }

    v25[24] = BYTE8(v47);
LABEL_52:
    *(v25 + 2) = v48;
    ++HIDWORD(v45);
LABEL_53:
    if (v49 == 1)
    {
      result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v46);
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

    --v10;
  }

  while (v10);
  v28 = HIDWORD(v45);
  if (v45 <= HIDWORD(v45))
  {
    goto LABEL_25;
  }

  v29 = v44;
  if (!HIDWORD(v45))
  {
    goto LABEL_66;
  }

  v37 = v44;
  if (HIDWORD(v45) >= 0x5555556)
  {
    __break(0xC471u);
    goto LABEL_83;
  }

  v30 = 48 * HIDWORD(v45);
  v31 = WTF::fastMalloc((48 * HIDWORD(v45)));
  v29 = v37;
  LODWORD(v45) = v30 / 0x30;
  v44 = v31;
  if (v31 != v37)
  {
    WTF::VectorMover<false,WebKit::WebsiteData::Entry>::move(v37, v37 + 48 * v28, v31);
    v29 = v37;
  }

LABEL_66:
  if (v29)
  {
    if (v44 == v29)
    {
      v44 = 0;
      LODWORD(v45) = 0;
    }

    WTF::fastFree(v29, v11);
  }

LABEL_25:
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v42, &v44);
  v43 = 1;
LABEL_26:
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v44, v11);
  if ((v43 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_27:
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v44, a1);
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v40, a1);
  result = IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v38);
  if (!*a1)
  {
    *a2 = 0;
    *(a2 + 40) = 0;
    goto LABEL_33;
  }

  if ((v43 & 1) == 0 || (result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v46, v42), (v45 & 1) == 0) || (v18 = v44, v44 = 0, *&v47 = v18, (v41 & 1) == 0) || (v19 = v40, v40 = 0, *(&v47 + 1) = v19, (v39 & 1) == 0))
  {
LABEL_83:
    __break(1u);
    return result;
  }

  v20 = v38;
  v38 = 0;
  *&v48 = v20;
  WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a2, &v46);
  v21 = v47;
  v47 = 0uLL;
  *(a2 + 16) = v21;
  v22 = v48;
  *&v48 = 0;
  *(a2 + 32) = v22;
  *(a2 + 40) = 1;
  result = WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v46, v23);
LABEL_33:
  if (v39 == 1)
  {
    result = v38;
    if (v38)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v38, v17);
    }
  }

  if (v41 == 1)
  {
    result = v40;
    if (v40)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v40, v17);
    }
  }

  if (v45 == 1)
  {
    result = v44;
    if (v44)
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v44, v17);
    }
  }

  if (v43 == 1)
  {
    return WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v42, v17);
  }

  return result;
}

void sub_19D79DFF4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a19 == 1)
  {
    WTF::Vector<WebKit::WebsiteData::Entry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[1]);

  return IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::encode(void *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, a2 + 1);

  return IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 2));
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::BindGroupDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v50);
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v7 = v6;
  v8 = *(a1 + 1);
  v9 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1;
  v11 = v9 - *a1;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  if (!v12 || v13 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v47 = *(a1 + 3);
    if (v47)
    {
      if (v8)
      {
        (*(*v47 + 16))(v47);
        v8 = *(a1 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_56;
  }

  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_56:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (v48 && v8)
    {
      (*(*v48 + 16))(v48);
    }

    v19 = 0;
    goto LABEL_58;
  }

  v15 = *v9;
  v57 = 0;
  v58 = 0;
  if (v15 >= 0x4924)
  {
    do
    {
      IPC::Decoder::decode<WebKit::WebGPU::BindGroupEntry>(&v52, a1);
      if ((v56 & 1) == 0)
      {
        goto LABEL_31;
      }

      v25 = HIDWORD(v58);
      if (HIDWORD(v58) == v58)
      {
        v26 = WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v57, HIDWORD(v58) + 1, &v52);
        v27 = HIDWORD(v58);
        result = v57;
        v29 = v57 + 56 * HIDWORD(v58);
        v30 = *v26;
        v31 = *(v26 + 16);
        v32 = *(v26 + 32);
        *(v29 + 6) = *(v26 + 48);
        *(v29 + 1) = v31;
        *(v29 + 2) = v32;
        *v29 = v30;
        v25 = v27;
      }

      else
      {
        result = v57;
        v33 = v57 + 56 * HIDWORD(v58);
        v34 = v52;
        v35 = v53;
        v36 = v54;
        *(v33 + 6) = v55;
        *(v33 + 1) = v35;
        *(v33 + 2) = v36;
        *v33 = v34;
      }

      v37 = (v25 + 1);
      HIDWORD(v58) = v37;
      --v15;
    }

    while (v15);
    if (v58 <= v37)
    {
      v19 = result;
      goto LABEL_17;
    }

    if (!v37)
    {
      goto LABEL_52;
    }

    if (v37 >= 0x4924925)
    {
      __break(0xC471u);
      return result;
    }

    v38 = result;
    v39 = 56 * v37;
    v19 = WTF::fastMalloc((56 * v37));
    LODWORD(v58) = v39 / 0x38;
    v57 = v19;
    result = v38;
    if (v19 == v38)
    {
LABEL_52:
      v57 = 0;
      LODWORD(v58) = 0;
    }

    else
    {
      v40 = 0;
      do
      {
        v41 = v19 + v40;
        v42 = *(v38 + v40);
        v43 = *(v38 + v40 + 16);
        v44 = *(v38 + v40 + 32);
        *(v41 + 6) = *(v38 + v40 + 48);
        *(v41 + 1) = v43;
        *(v41 + 2) = v44;
        *v41 = v42;
        v40 += 56;
      }

      while (v39 != v40);
      if (!v38)
      {
        goto LABEL_17;
      }
    }

    WTF::fastFree(result, v10);
    v19 = v57;
    goto LABEL_17;
  }

  if (!v15)
  {
    v19 = 0;
LABEL_17:
    v57 = 0;
    v2 = v58;
    v24 = 1;
    HIDWORD(v58) = 0;
    goto LABEL_32;
  }

  v16 = WTF::fastMalloc((56 * v15));
  LODWORD(v58) = 56 * v15 / 0x38u;
  v57 = v16;
  while (1)
  {
    IPC::Decoder::decode<WebKit::WebGPU::BindGroupEntry>(&v52, a1);
    if ((v56 & 1) == 0)
    {
      break;
    }

    v17 = HIDWORD(v58);
    if (HIDWORD(v58) == v58)
    {
      v18 = WTF::Vector<WebKit::WebGPU::BindGroupEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v57, HIDWORD(v58) + 1, &v52);
      v17 = HIDWORD(v58);
      v19 = v57;
      v20 = v57 + 56 * HIDWORD(v58);
      v21 = *v18;
      v22 = *(v18 + 16);
      v23 = *(v18 + 32);
      *(v20 + 6) = *(v18 + 48);
    }

    else
    {
      v19 = v57;
      v20 = v57 + 56 * HIDWORD(v58);
      v21 = v52;
      v22 = v53;
      v23 = v54;
      *(v20 + 6) = v55;
    }

    *(v20 + 1) = v22;
    *(v20 + 2) = v23;
    *v20 = v21;
    HIDWORD(v58) = v17 + 1;
    if (!--v15)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  v24 = 0;
  v19 = 0;
LABEL_32:
  result = v57;
  if (v57)
  {
    v57 = 0;
    LODWORD(v58) = 0;
    result = WTF::fastFree(result, v10);
  }

  if (v24)
  {
    v45 = 1;
    goto LABEL_36;
  }

LABEL_58:
  v10 = *a1;
  v49 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v49)
  {
    result = (*(*result + 16))(result, v10);
  }

  v45 = 0;
LABEL_36:
  if (!*a1)
  {
LABEL_47:
    *a2 = 0;
    *(a2 + 32) = 0;
    if (!v19)
    {
      v45 = 0;
    }

    if (v45 == 1)
    {
      result = WTF::fastFree(v19, v10);
    }

    goto LABEL_41;
  }

  if ((v51 & 1) == 0 || (v46 = v50, v50 = 0, (v7 & 1) == 0) || (v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  *a2 = v46;
  *(a2 + 8) = v5;
  *(a2 + 16) = v19;
  *(a2 + 24) = v2;
  *(a2 + 32) = 1;
LABEL_41:
  if (v51 == 1)
  {
    result = v50;
    v50 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  return result;
}

void sub_19D79E5C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF *a19, int a20)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  result = IPC::Decoder::decode<WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v8);
  if (*a1)
  {
    if (v12)
    {
      v6 = v11;
      v11 = 0;
      if (v10)
      {
        v7 = v8;
        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = v9;
        *(a2 + 24) = 1;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v10)
  {
    result = v8;
    if (v8)
    {
      v8 = 0;
      LODWORD(v9) = 0;
      result = WTF::fastFree(result, v5);
    }
  }

LABEL_5:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D79E6F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebKit::WebGPU::BindGroupLayoutEntry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D79E798(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutEntry,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::BufferBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::BufferBindingLayout> const&>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::TextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::TextureBindingLayout> const&>(a1, (a2 + 34));
  IPC::ArgumentCoder<std::optional<WebKit::WebGPU::StorageTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::StorageTextureBindingLayout> const&>(a1, (a2 + 38));

  return IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ExternalTextureBindingLayout>,void>::encode<IPC::Encoder,std::optional<WebKit::WebGPU::ExternalTextureBindingLayout> const&>(a1, a2 + 42);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BindGroupLayoutEntry,void>::encode(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = -*result;
  v5 = v4 & 3 | 4;
  if (*(result + 8) < v5)
  {
    goto LABEL_67;
  }

  *(*result + (v4 & 3)) = *a2;
  v6 = *(result + 8);
  v8 = v6 - v5;
  v7 = v6 == v5;
  if (v6 < v5)
  {
    goto LABEL_66;
  }

  v9 = (*result + v5);
  *result = v9;
  *(result + 8) = v8;
  if (v7)
  {
    goto LABEL_67;
  }

  *v9 = *(a2 + 4);
  v10 = *(result + 8);
  if (!v10)
  {
    goto LABEL_66;
  }

  v11 = v10 - 1;
  v12 = (*result + 1);
  *result = v12;
  *(result + 8) = v10 - 1;
  v13 = (a2 + 24);
  if ((*(a2 + 24) & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_68;
    }

    *v12 = 0;
    v22 = *(result + 8);
    if (!v22)
    {
      goto LABEL_66;
    }

    v21 = (v22 - 1);
    ++*result;
    *(result + 8) = v21;
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_82;
  }

  *v12 = 1;
  v14 = *(result + 8);
  if (!v14)
  {
    goto LABEL_66;
  }

  v15 = v14 - 1;
  v16 = (*result + 1);
  *result = v16;
  *(result + 8) = v15;
  if (*v13)
  {
    if (!v15)
    {
      goto LABEL_83;
    }

    *v16 = *(a2 + 8);
    v17 = *(result + 8);
    if (!v17)
    {
      goto LABEL_66;
    }

    v18 = v17 - 1;
    v7 = v17 == 1;
    v19 = (*result + 1);
    *result = v19;
    *(result + 8) = v18;
    if (v7)
    {
      goto LABEL_83;
    }

    *v19 = *(a2 + 9);
    v20 = *(result + 8);
    if (!v20)
    {
      goto LABEL_66;
    }

    ++*result;
    *(result + 8) = v20 - 1;
    goto LABEL_14;
  }

LABEL_61:
  while (1)
  {
    result = std::__throw_bad_optional_access[abi:sn200100]();
LABEL_62:
    if (!v27)
    {
      break;
    }

    *v49 = 0;
    v51 = v3[1];
    if (v51)
    {
      ++*v3;
      v3[1] = v51 - 1;
      return result;
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            *v3 = 0;
            v3[1] = 0;
            v13 = (a2 + 24);
            if (*(a2 + 24))
            {
LABEL_82:
              *v3 = 0;
              v3[1] = 0;
              if ((*v13 & 1) == 0)
              {
                goto LABEL_61;
              }

LABEL_83:
              *v3 = 0;
              v3[1] = 0;
LABEL_14:
              result = IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(v3, (a2 + 16));
              v21 = v3[1];
            }

            else
            {
LABEL_68:
              v21 = 0;
              *v3 = 0;
              v3[1] = 0;
            }

LABEL_18:
            if ((*(a2 + 33) & 1) == 0)
            {
              break;
            }

            if (!v21)
            {
              *v3 = 0;
              v3[1] = 0;
              if ((*(a2 + 33) & 1) == 0)
              {
                goto LABEL_61;
              }

LABEL_70:
              v21 = 0;
              goto LABEL_71;
            }

            **v3 = 1;
            v23 = v3[1];
            if (v23)
            {
              v24 = v23 - 1;
              v25 = (*v3 + 1);
              *v3 = v25;
              v3[1] = v24;
              if ((*(a2 + 33) & 1) == 0)
              {
                goto LABEL_61;
              }

              if (!v24)
              {
                goto LABEL_70;
              }

              *v25 = *(a2 + 32);
LABEL_26:
              v26 = v3[1];
              if (v26)
              {
                v27 = v26 - 1;
                v21 = (*v3 + 1);
                *v3 = v21;
                v3[1] = v27;
                goto LABEL_28;
              }
            }
          }

          if (v21)
          {
            **v3 = 0;
            goto LABEL_26;
          }

LABEL_71:
          v27 = 0;
          *v3 = 0;
          v3[1] = 0;
LABEL_28:
          if ((*(a2 + 37) & 1) == 0)
          {
            break;
          }

          if (!v27)
          {
            *v3 = 0;
            v3[1] = 0;
            if ((*(a2 + 37) & 1) == 0)
            {
              goto LABEL_61;
            }

LABEL_73:
            v38 = 0;
            v27 = 0;
            goto LABEL_75;
          }

          *v21 = 1;
          v28 = v3[1];
          if (v28)
          {
            v29 = v28 - 1;
            v30 = (*v3 + 1);
            *v3 = v30;
            v3[1] = v29;
            if ((*(a2 + 37) & 1) == 0)
            {
              goto LABEL_61;
            }

            if (!v29)
            {
              goto LABEL_73;
            }

            *v30 = *(a2 + 34);
            v31 = v3[1];
            if (v31)
            {
              v32 = v31 - 1;
              v7 = v31 == 1;
              v33 = (*v3 + 1);
              *v3 = v33;
              v3[1] = v32;
              if (v7)
              {
                goto LABEL_73;
              }

              *v33 = *(a2 + 35);
              v34 = v3[1];
              if (v34)
              {
                v35 = v34 - 1;
                v7 = v34 == 1;
                v36 = (*v3 + 1);
                *v3 = v36;
                v3[1] = v35;
                if (v7)
                {
                  goto LABEL_73;
                }

                *v36 = *(a2 + 36);
LABEL_40:
                v37 = v3[1];
                if (v37)
                {
                  v27 = v37 - 1;
                  v38 = (*v3 + 1);
                  *v3 = v38;
                  v3[1] = v27;
                  goto LABEL_42;
                }
              }
            }
          }
        }

        if (v27)
        {
          *v21 = 0;
          goto LABEL_40;
        }

        v38 = 0;
LABEL_75:
        *v3 = 0;
        v3[1] = 0;
LABEL_42:
        if ((*(a2 + 41) & 1) == 0)
        {
          break;
        }

        if (!v27)
        {
          *v3 = 0;
          v3[1] = 0;
          if ((*(a2 + 41) & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_77:
          v49 = 0;
          v27 = 0;
          goto LABEL_79;
        }

        *v38 = 1;
        v39 = v3[1];
        if (v39)
        {
          v40 = v39 - 1;
          v41 = (*v3 + 1);
          *v3 = v41;
          v3[1] = v40;
          if ((*(a2 + 41) & 1) == 0)
          {
            goto LABEL_61;
          }

          if (!v40)
          {
            goto LABEL_77;
          }

          *v41 = *(a2 + 38);
          v42 = v3[1];
          if (v42)
          {
            v43 = v42 - 1;
            v7 = v42 == 1;
            v44 = (*v3 + 1);
            *v3 = v44;
            v3[1] = v43;
            if (v7)
            {
              goto LABEL_77;
            }

            *v44 = *(a2 + 39);
            v45 = v3[1];
            if (v45)
            {
              v46 = v45 - 1;
              v7 = v45 == 1;
              v47 = (*v3 + 1);
              *v3 = v47;
              v3[1] = v46;
              if (v7)
              {
                goto LABEL_77;
              }

              *v47 = *(a2 + 40);
LABEL_54:
              v48 = v3[1];
              if (v48)
              {
                v27 = v48 - 1;
                v49 = (*v3 + 1);
                *v3 = v49;
                v3[1] = v27;
                goto LABEL_56;
              }
            }
          }
        }
      }

      if (v27)
      {
        *v38 = 0;
        goto LABEL_54;
      }

      v49 = 0;
LABEL_79:
      *v3 = 0;
      v3[1] = 0;
LABEL_56:
      if ((*(a2 + 43) & 1) == 0)
      {
        goto LABEL_62;
      }

      if (!v27)
      {
        break;
      }

      *v49 = 1;
      v50 = v3[1];
      if (v50)
      {
        ++*v3;
        v3[1] = v50 - 1;
        goto LABEL_60;
      }
    }

    *v3 = 0;
    v3[1] = 0;
LABEL_60:
    if (*(a2 + 43))
    {
      return result;
    }
  }

  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 16));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 18));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::encode(void *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::StreamConnectionEncoder::operator<<<unsigned long long const&>(a1, (a2 + 8));
  v6 = *(a2 + 16);
  result = IPC::StreamConnectionEncoder::encodeSpan<unsigned short const,18446744073709551615ul>(a1, &v6, 1);
  if (!a1[1])
  {
    goto LABEL_6;
  }

  **a1 = *(a2 + 18);
  v5 = a1[1];
  if (!v5)
  {
    __break(1u);
LABEL_6:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  ++*a1;
  a1[1] = v5 - 1;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::BufferDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v32);
  v5 = *(a1 + 1);
  v6 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *a1;
  v8 = v6 - *a1;
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (v9 && v10 > 7)
  {
    *(a1 + 2) = v6 + 1;
    if (v6)
    {
      v12 = *v6;
      v13 = 1;
      v14 = v7;
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (!v22)
    {
      v5 = 0;
LABEL_32:
      v7 = 0;
      goto LABEL_33;
    }

    if (!v5)
    {
      goto LABEL_32;
    }

    (*(*v22 + 16))(v22, v7);
    v7 = *a1;
    v5 = *(a1 + 1);
LABEL_33:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      v14 = 0;
      v5 = 0;
LABEL_35:
      v7 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_8;
    }

    if (!v5)
    {
      v14 = 0;
      goto LABEL_35;
    }

    result = (*(*result + 16))(result, v7);
    v13 = 0;
    v12 = 0;
    v14 = *a1;
    v5 = *(a1 + 1);
    v7 = *a1;
LABEL_8:
    v15 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
    if (v5 >= v15 - v7 && v5 - (v15 - v7) > 1)
    {
      v17 = (v15 + 1);
      *(a1 + 2) = v15 + 1;
      if (v15)
      {
        v18 = *v15 | 0x10000;
        goto LABEL_15;
      }

      v31 = v13;
      v30 = v12;
    }

    else
    {
      v31 = v13;
      v30 = v12;
      *a1 = 0;
      *(a1 + 1) = 0;
      v23 = *(a1 + 3);
      if (!v23)
      {
        v5 = 0;
LABEL_38:
        v14 = 0;
        goto LABEL_39;
      }

      if (!v5)
      {
        goto LABEL_38;
      }

      (*(*v23 + 16))(v23, v14);
      v14 = *a1;
      v5 = *(a1 + 1);
    }

LABEL_39:
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (!v24 || !v5)
    {
      v29 = 0;
      v25 = 0;
      v14 = 0;
LABEL_41:
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26 && v25)
      {
        (*(*v26 + 16))(v26, v14, v25);
        v28 = 0;
        v14 = *a1;
        v5 = *(a1 + 1);
      }

      else
      {
        v5 = 0;
        v14 = 0;
        v28 = 0;
      }

      goto LABEL_44;
    }

    result = (*(*v24 + 16))(v24, v14);
    v18 = 0;
    v7 = *a1;
    v5 = *(a1 + 1);
    v17 = *(a1 + 2);
    v14 = *a1;
    v12 = v30;
    v13 = v31;
LABEL_15:
    if (v5 <= v17 - v7)
    {
      v29 = v18;
      v31 = v13;
      v30 = v12;
      v25 = 0;
      v27 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v27 && v5)
      {
        (*(*v27 + 16))(v27, v14);
        v14 = *a1;
        v25 = *(a1 + 1);
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_41;
    }

    *(a1 + 2) = v17 + 1;
    if (!v17)
    {
      v29 = v18;
      v31 = v13;
      v30 = v12;
      v25 = v5;
      goto LABEL_41;
    }

    v19 = *v17;
    if (v19 < 2)
    {
      v20 = 1;
      goto LABEL_19;
    }

    v28 = *v17;
    v29 = v18;
    v31 = v13;
    v30 = v12;
LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v5)
    {
      break;
    }

    result = (*(*result + 16))(result, v14);
    v20 = 0;
    v7 = *a1;
    v12 = v30;
    v13 = v31;
    v19 = v28;
    v18 = v29;
LABEL_19:
    v21 = v19 ? v20 : 0;
    if (!v7)
    {
      break;
    }

    v7 = v33;
    if (v33 & 1) != 0 && (v13 & 1) != 0 && (v18 & 0x10000) != 0 && (v20)
    {
      *a2 = v32;
      *(a2 + 8) = v12;
      *(a2 + 16) = v18;
      *(a2 + 18) = v21;
      *(a2 + 24) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v33)
  {
    result = v32;
    v32 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

void sub_19D79F0E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::CompilationMessage,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  v4 = *(a2 + 40);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::CompilationMessage,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v53);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v5)
      {
        (*(*v28 + 16))(v28);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_65:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      if (v5)
      {
        (*(*v29 + 16))(v29);
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_68;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    goto LABEL_68;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_65;
  }

  v8 = *v6;
  if (v8 < 3)
  {
    v9 = v8 | 0x100;
    goto LABEL_5;
  }

LABEL_68:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (!result)
  {
    v5 = 0;
LABEL_70:
    v7 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  if (!v5)
  {
    goto LABEL_70;
  }

  result = (*(*result + 16))(result, v7);
  v9 = 0;
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_5:
  v10 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v5 >= v10 - v7 && v5 - (v10 - v7) > 7)
  {
    *(a1 + 2) = v10 + 8;
    if (v10)
    {
      v12 = *v10;
      v13 = 1;
      v14 = v7;
      goto LABEL_12;
    }

    v48 = v9;
    goto LABEL_36;
  }

  while (1)
  {
    v48 = v9;
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (!v24)
    {
      v5 = 0;
LABEL_35:
      v7 = 0;
      goto LABEL_36;
    }

    if (!v5)
    {
      goto LABEL_35;
    }

    (*(*v24 + 16))(v24);
    v7 = *a1;
    v5 = *(a1 + 1);
LABEL_36:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v5)
      {
        result = (*(*result + 16))(result, v7);
        v13 = 0;
        v12 = 0;
        v14 = *a1;
        v5 = *(a1 + 1);
        v7 = *a1;
        goto LABEL_39;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
      v5 = 0;
    }

    v7 = 0;
    v13 = 0;
    v12 = 0;
LABEL_39:
    v9 = v48;
LABEL_12:
    v15 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v5 < v15 - v7 || v5 - (v15 - v7) <= 7)
    {
      v44 = v13;
      v40 = v12;
      v49 = v9;
      *a1 = 0;
      *(a1 + 1) = 0;
      v25 = *(a1 + 3);
      if (v25)
      {
        if (v5)
        {
          (*(*v25 + 16))(v25, v14);
          v14 = *a1;
          v5 = *(a1 + 1);
LABEL_43:
          *a1 = 0;
          *(a1 + 1) = 0;
          result = *(a1 + 3);
          if (result)
          {
            if (v5)
            {
              result = (*(*result + 16))(result, v14);
              v17 = 0;
              v16 = 0;
              v14 = *a1;
              v5 = *(a1 + 1);
              v7 = *a1;
              goto LABEL_46;
            }

            v14 = 0;
          }

          else
          {
            v14 = 0;
            v5 = 0;
          }

          v7 = 0;
          v17 = 0;
          v16 = 0;
LABEL_46:
          v9 = v49;
          v12 = v40;
          v13 = v44;
          goto LABEL_16;
        }
      }

      else
      {
        v5 = 0;
      }

      v14 = 0;
      goto LABEL_43;
    }

    *(a1 + 2) = v15 + 8;
    if (!v15)
    {
      v44 = v13;
      v40 = v12;
      v49 = v9;
      goto LABEL_43;
    }

    v16 = *v15;
    v17 = 1;
LABEL_16:
    v18 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v5 < v18 - v7 || v5 - (v18 - v7) <= 7)
    {
      v34 = v17;
      v37 = v16;
      v41 = v12;
      v45 = v13;
      v50 = v9;
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26)
      {
        if (v5)
        {
          (*(*v26 + 16))(v26, v14);
          v14 = *a1;
          v5 = *(a1 + 1);
LABEL_50:
          *a1 = 0;
          *(a1 + 1) = 0;
          result = *(a1 + 3);
          if (result)
          {
            if (v5)
            {
              result = (*(*result + 16))(result, v14);
              v20 = 0;
              v19 = 0;
              v14 = *a1;
              v5 = *(a1 + 1);
              v7 = *a1;
              goto LABEL_53;
            }

            v14 = 0;
          }

          else
          {
            v14 = 0;
            v5 = 0;
          }

          v7 = 0;
          v20 = 0;
          v19 = 0;
LABEL_53:
          v9 = v50;
          v16 = v37;
          v12 = v41;
          v13 = v45;
          v17 = v34;
          goto LABEL_20;
        }
      }

      else
      {
        v5 = 0;
      }

      v14 = 0;
      goto LABEL_50;
    }

    *(a1 + 2) = v18 + 8;
    if (!v18)
    {
      v34 = v17;
      v37 = v16;
      v41 = v12;
      v45 = v13;
      v50 = v9;
      goto LABEL_50;
    }

    v19 = *v18;
    v20 = 1;
LABEL_20:
    v21 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v5 < v21 - v7 || v5 - (v21 - v7) <= 7)
    {
      break;
    }

    *(a1 + 2) = v21 + 8;
    if (!v21)
    {
      goto LABEL_58;
    }

    v22 = *v21;
    v23 = 1;
    if (!v7)
    {
      goto LABEL_59;
    }

LABEL_24:
    if (v54 & 1) != 0 && v9 > 0xFF && (v13 & 1) != 0 && (v17 & 1) != 0 && (v20 & 1) != 0 && (v23)
    {
      *a2 = v53;
      *(a2 + 8) = v9;
      *(a2 + 16) = v12;
      *(a2 + 24) = v16;
      *(a2 + 32) = v19;
      *(a2 + 40) = v22;
      *(a2 + 48) = 1;
      return result;
    }

    __break(1u);
  }

  v30 = v20;
  v32 = v19;
  v35 = v17;
  v38 = v16;
  v42 = v12;
  v46 = v13;
  v51 = v9;
  *a1 = 0;
  *(a1 + 1) = 0;
  v27 = *(a1 + 3);
  if (!v27)
  {
    v5 = 0;
    goto LABEL_56;
  }

  if (v5)
  {
    (*(*v27 + 16))(v27, v14);
    v14 = *a1;
    v5 = *(a1 + 1);
  }

  else
  {
LABEL_56:
    v14 = 0;
  }

  v9 = v51;
  v16 = v38;
  v12 = v42;
  v13 = v46;
  v17 = v35;
  v19 = v32;
  v20 = v30;
LABEL_58:
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    if (v5)
    {
      v31 = v20;
      v33 = v19;
      v36 = v17;
      v39 = v16;
      v43 = v12;
      v47 = v13;
      v52 = v9;
      result = (*(*result + 16))(result, v14);
      v23 = 0;
      v22 = 0;
      v7 = *a1;
      v9 = v52;
      v16 = v39;
      v12 = v43;
      v13 = v47;
      v17 = v36;
      v19 = v33;
      v20 = v31;
      if (*a1)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_59:
  *a2 = 0;
  *(a2 + 48) = 0;
  if (v54)
  {
    result = v53;
    v53 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D79F78C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 - 24) == 1)
  {
    v4 = *(v2 - 32);
    *(v2 - 32) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::ComputePassDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  result = IPC::ArgumentCoder<std::optional<WebKit::WebGPU::ComputePassTimestampWrites>,void>::decode<IPC::Decoder>(a1, &v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  while (*a1)
  {
    if (v12 & 1) != 0 && (v10)
    {
      v6 = v11;
      *(a2 + 8) = v8;
      *(a2 + 24) = v9;
      *a2 = v6;
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
LABEL_8:
    v5 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      if (v7)
      {
        result = (*(*result + 16))(result, v5);
      }
    }
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v12)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D79F8C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 1);

  return IPC::ArgumentCoder<WebKit::WebGPU::ProgrammableStage,void>::encode(a1, a2 + 2);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::encode(void *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::StreamConnectionEncoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 1);

  return IPC::ArgumentCoder<WebKit::WebGPU::ProgrammableStage,void>::encode(a1, a2 + 2);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::ComputePipelineDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v38);
  v7 = IPC::Decoder::decode<WTF::Markable<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(a1);
  v27 = v8;
  v9 = v7;
  v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v12 = v11;
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v43);
  result = IPC::Decoder::decode<WTF::Vector<WTF::KeyValuePair<WTF::String,double>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v40, a1);
  v16 = *a1;
  v17 = *a1 != 0;
  if (!*a1)
  {
    goto LABEL_42;
  }

  if ((v12 & 1) == 0 || (v45 & 1) == 0)
  {
    goto LABEL_41;
  }

  LOBYTE(v28) = 0;
  v29 = 0;
  v12 = v44;
  if (v44 == 1)
  {
    v18 = v43;
    v43 = 0;
    v28 = v18;
    v29 = 1;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_41;
  }

  v3 = v40;
  v4 = v41;
  v2 = HIDWORD(v41);
  v40 = 0;
  v41 = 0;
  v32 = v10;
  LOBYTE(v33) = 0;
  v34 = 0;
  if (v44)
  {
    v19 = v28;
    v28 = 0;
    v33 = v19;
    v34 = 1;
  }

  *&v15 = 0;
  *v30 = v15;
  v35 = v3;
  v36 = __PAIR64__(v2, v4);
  v37 = 1;
  WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v14);
  if (v29 == 1 && v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v14);
  }

LABEL_13:
  result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v14);
  v20 = v17;
  while (1)
  {
    if (v45 == 1 && v44 == 1)
    {
      result = v43;
      v43 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v14);
        }
      }
    }

    if (!v16)
    {
      v14 = *a1;
      v26 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (result)
      {
        if (v26)
        {
          result = (*(*result + 16))(result, v14);
        }
      }
    }

    if (!*a1)
    {
      break;
    }

    if (v39)
    {
      v21 = v38;
      v38 = 0;
      if ((v27 & 1) != 0 && v20)
      {
        v22 = v32;
        LOBYTE(v30[0]) = 0;
        LOBYTE(v30[1]) = 0;
        if (v12)
        {
          v23 = v33;
          v33 = 0;
          v30[0] = v23;
          LOBYTE(v30[1]) = 1;
        }

        v35 = 0;
        v36 = 0;
        *a2 = v21;
        *(a2 + 8) = v9;
        *(a2 + 16) = v22;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        if (v12)
        {
          v24 = v30[0];
          v30[0] = 0;
          *(a2 + 24) = v24;
          *(a2 + 32) = 1;
        }

        *&v15 = 0;
        v31 = v15;
        *(a2 + 40) = v3;
        *(a2 + 48) = v4;
        *(a2 + 52) = v2;
        *(a2 + 56) = 1;
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v14);
        if (LOBYTE(v30[1]) == 1)
        {
          v25 = v30[0];
          v30[0] = 0;
          if (v25)
          {
            if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v14);
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v20 = 0;
    LOBYTE(v32) = 0;
    v37 = 0;
    if (v42)
    {
      goto LABEL_13;
    }
  }

  *a2 = 0;
  *(a2 + 56) = 0;
  if (!v20)
  {
    goto LABEL_36;
  }

LABEL_32:
  result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v14);
  if (v34 == 1)
  {
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v14);
      }
    }
  }

LABEL_36:
  if (v39 == 1)
  {
    result = v38;
    v38 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  return result;
}

void sub_19D79FCFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24, char a25)
{
  if ((*(v25 - 96) & 1) != 0 && *(v25 - 104) == 1)
  {
    v27 = *(v25 - 112);
    *(v25 - 112) = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, a2);
      }
    }
  }

  if (a25 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::DepthStencilState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 3));
  IPC::ArgumentCoder<WebCore::RectEdges<WebCore::RubberBandingBehavior>,void>::encode(a1, (a2 + 5));
  IPC::ArgumentCoder<WebCore::RectEdges<WebCore::RubberBandingBehavior>,void>::encode(a1, (a2 + 9));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 24);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 36));
  v4 = *(a2 + 40);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::DepthStencilState,void>::encode(void *a1, uint64_t a2)
{
  if (!a1[1])
  {
    goto LABEL_11;
  }

  **a1 = *a2;
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_10;
  }

  ++*a1;
  for (a1[1] = v4 - 1; ; a1[1] = 0)
  {
    IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 1));
    IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, (a2 + 3));
    IPC::ArgumentCoder<WebKit::WebGPU::StencilFaceState,void>::encode(a1, (a2 + 5));
    IPC::ArgumentCoder<WebKit::WebGPU::StencilFaceState,void>::encode(a1, (a2 + 9));
    IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, a2 + 16);
    IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::StreamConnectionEncoder,std::optional<unsigned int> const&>(a1, a2 + 24);
    result = IPC::StreamConnectionEncoder::operator<<<int const&>(a1, (a2 + 32));
    v6 = -*a1;
    v7 = v6 & 3 | 4;
    if (a1[1] < v7)
    {
      break;
    }

    *(*a1 + (v6 & 3)) = *(a2 + 36);
    v8 = a1[1];
    v9 = v8 - v7;
    if (v8 >= v7)
    {
      v10 = *a1 + v7;
      *a1 = v10;
      a1[1] = v9;
      v11 = -v10 & 3 | 4;
      if (v9 < v11)
      {
        break;
      }

      *(v10 + (-v10 & 3)) = *(a2 + 40);
      v12 = a1[1];
      v13 = v12 >= v11;
      v14 = v12 - v11;
      if (v13)
      {
        *a1 += v11;
        a1[1] = v14;
        return result;
      }
    }

LABEL_10:
    __break(1u);
LABEL_11:
    *a1 = 0;
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::WebGPU::TextureFormat>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::WebGPU::TextureFormat,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::WebGPU::CompareFunction>>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (v2 <= &v3[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      if (v2)
      {
        (*(*v10 + 16))(v10);
        v2 = a1[1];
      }
    }

    else
    {
      v2 = 0;
    }

LABEL_14:
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v2)
      {
        (*(*v11 + 16))(v11);
        v4 = *a1;
        v2 = a1[1];
LABEL_17:
        *a1 = 0;
        a1[1] = 0;
        v12 = a1[3];
        if (v12 && v2)
        {
          (*(*v12 + 16))(v12, v4);
        }

        v5 = 0;
        v7 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v2 = 0;
    }

    v4 = 0;
    goto LABEL_17;
  }

  a1[2] = (v3 + 1);
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = *v3;
  if (v5 >= 2)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    v7 = 0;
    v8 = 0x10000;
    return v7 | v5 | v8;
  }

  v6 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
  if ((v6 & 0xFF00) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = 256;
  if (v6 > 0xFFu)
  {
    v8 = (v6 << 8) & 0xFF0000;
    return v7 | v5 | v8;
  }

LABEL_19:
  v13 = *a1;
  v14 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v15 = a1[3];
  if (v15)
  {
    v17 = v7;
    v16 = v5;
    if (v14)
    {
      (*(*v15 + 16))(v15, v13);
    }

    v8 = 0;
    v5 = v16;
    v7 = v17;
  }

  else
  {
    v8 = 0;
  }

  return v7 | v5 | v8;
}

unint64_t IPC::Decoder::decode<WebKit::WebGPU::StencilFaceState>(void *a1)
{
  v2 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
  v3 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
  v4 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
  v5 = IPC::Decoder::decode<WebCore::CSSBoxType>(a1);
  if (*a1)
  {
    if (v2 > 0xFFu && v3 > 0xFFu && v4 > 0xFFu && v5 > 0xFFu)
    {
      v6 = (v4 << 16) | (v5 << 24) | (v3 << 8) | v2;
      v7 = 1;
      return v6 | (v7 << 32);
    }

    __break(1u);
  }

  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a1[3];
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10);
  }

  v6 = 0;
  v7 = 0;
  return v6 | (v7 << 32);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));

  return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::encode(void *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WebCore::ShapeDetection::BarcodeFormat,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 1));

  return IPC::VectorArgumentCoder<false,WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::StreamConnectionEncoder,WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 3));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebGPU::DeviceDescriptor,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v68);
  v6 = *(a1 + 1);
  v7 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 - *a1;
  v9 = v6 >= v8;
  v10 = v6 - v8;
  if (!v9 || v10 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v58 = *(a1 + 3);
    if (v58)
    {
      if (v6)
      {
        (*(*v58 + 16))(v58);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_100;
  }

  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_100:
    *a1 = 0;
    *(a1 + 1) = 0;
    v59 = *(a1 + 3);
    if (v59 && v6)
    {
      (*(*v59 + 16))(v59);
    }

LABEL_27:
    v23 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      goto LABEL_92;
    }

    goto LABEL_28;
  }

  v12 = *v7;
  v62 = 0;
  v63 = 0;
  if (v12 < 0x100000)
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = WTF::fastMalloc(v12);
    v14 = 0;
    LODWORD(v63) = v12;
    v62 = v13;
    while (1)
    {
      v15 = IPC::Decoder::decode<WebCore::WebGPU::FeatureName>(a1);
      LOWORD(v66) = v15;
      if (v15 < 0x100u)
      {
        break;
      }

      if (v14 == v63)
      {
        v17 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v62, v14 + 1, &v66);
        v14 = HIDWORD(v63);
        v13 = v62;
        *(v62 + HIDWORD(v63)) = *v17;
      }

      else
      {
        *(v13 + v14) = v15;
      }

      HIDWORD(v63) = ++v14;
      v12 = (v12 - 1);
      if (!v12)
      {
        goto LABEL_15;
      }
    }

LABEL_26:
    WTF::fastFree(v13, v16);
    goto LABEL_27;
  }

  v13 = 0;
  LODWORD(v20) = 0;
  do
  {
    v21 = IPC::Decoder::decode<WebCore::WebGPU::FeatureName>(a1);
    LOWORD(v66) = v21;
    if (v21 < 0x100u)
    {
      if (!v13)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v20 == v63)
    {
      v22 = WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v62, v20 + 1, &v66);
      LODWORD(v20) = HIDWORD(v63);
      v13 = v62;
      *(v62 + HIDWORD(v63)) = *v22;
    }

    else
    {
      *(v13 + v20) = v21;
    }

    v20 = (v20 + 1);
    HIDWORD(v63) = v20;
    v12 = (v12 - 1);
  }

  while (v12);
  if (v63 > v20)
  {
    if (v20)
    {
      LODWORD(v63) = v20;
      v62 = WTF::fastRealloc(v13, v20);
    }

    else
    {
      v62 = 0;
      LODWORD(v63) = 0;
      WTF::fastFree(v13, v16);
    }
  }

LABEL_15:
  v18 = v62;
  v2 = v63;
  v19 = 1;
LABEL_29:
  v26 = *(a1 + 1);
  v27 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = *a1;
  v29 = v27 - *a1;
  v9 = v26 >= v29;
  v30 = v26 - v29;
  if (v9 && v30 > 7)
  {
    *(a1 + 2) = v27 + 1;
    if (!v27)
    {
      goto LABEL_105;
    }

    v32 = *v27;
    v70 = 0;
    v71 = 0;
    if (v32 < 0x10000)
    {
      if (!v32)
      {
        goto LABEL_47;
      }

      v33 = WTF::fastMalloc((16 * v32));
      LODWORD(v71) = v32;
      v70 = v33;
      while (2)
      {
        IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,unsigned long long>>(&v62, a1);
        if ((v64 & 1) == 0)
        {
          goto LABEL_67;
        }

        if (HIDWORD(v71) == v71)
        {
          v34 = WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v70, HIDWORD(v71) + 1, &v62);
          v35 = HIDWORD(v71) + 1;
          v36 = (v70 + 16 * HIDWORD(v71));
          v37 = *v34;
          *v34 = 0;
          *v36 = v37;
          v36[1] = v34[1];
          HIDWORD(v71) = v35;
          if ((v64 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v38 = HIDWORD(v71) + 1;
          v39 = (v70 + 16 * HIDWORD(v71));
          v40 = v62;
          v62 = 0;
          *v39 = v40;
          v39[1] = v63;
          HIDWORD(v71) = v38;
        }

        v41 = v62;
        v62 = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v28);
        }

LABEL_46:
        if (!--v32)
        {
          goto LABEL_47;
        }

        continue;
      }
    }

    while (1)
    {
      IPC::Decoder::decode<WTF::KeyValuePair<WTF::String,unsigned long long>>(&v62, a1);
      if ((v64 & 1) == 0)
      {
LABEL_67:
        LOBYTE(v66) = 0;
        v67 = 0;
        WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v28);
        goto LABEL_68;
      }

      if (HIDWORD(v71) != v71)
      {
        break;
      }

      result = WTF::Vector<WTF::KeyValuePair<WTF::String,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v70, HIDWORD(v71) + 1, &v62);
      v44 = HIDWORD(v71) + 1;
      v45 = (v70 + 16 * HIDWORD(v71));
      v46 = *result;
      *result = 0;
      *v45 = v46;
      v45[1] = *(result + 1);
      HIDWORD(v71) = v44;
      if (v64)
      {
        goto LABEL_54;
      }

LABEL_57:
      if (!--v32)
      {
        v50 = HIDWORD(v71);
        if (v71 <= HIDWORD(v71))
        {
          goto LABEL_47;
        }

        v51 = v70;
        if (!HIDWORD(v71))
        {
          goto LABEL_63;
        }

        if (HIDWORD(v71) >> 28)
        {
          __break(0xC471u);
          return result;
        }

        v52 = WTF::fastMalloc((16 * HIDWORD(v71)));
        LODWORD(v71) = v50;
        v70 = v52;
        if (v52 != v51)
        {
          WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,unsigned long long>>::move(v51, (v51 + 16 * v50), v52);
        }

LABEL_63:
        if (v51)
        {
          if (v70 == v51)
          {
            v70 = 0;
            LODWORD(v71) = 0;
          }

          WTF::fastFree(v51, v28);
        }

LABEL_47:
        *&v66 = v70;
        v42 = v71;
        v70 = 0;
        v71 = 0;
        *(&v66 + 1) = v42;
        v43 = 1;
        v67 = 1;
        result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v28);
        if (!*a1)
        {
          *a2 = 0;
          *(a2 + 40) = 0;
          goto LABEL_80;
        }

LABEL_71:
        if (v69)
        {
          v53 = v68;
          v68 = 0;
          if (v19 & 1) != 0 && (v43)
          {
            *&v5 = 0;
            v54 = v66;
            v66 = v5;
            v62 = 0;
            v63 = 0;
            *a2 = v53;
            *(a2 + 8) = v18;
            v64 = 0;
            *(a2 + 16) = v2;
            v65 = v5;
            *(a2 + 24) = v54;
            *(a2 + 40) = 1;
            WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v23);
            v55 = v63;
            if (v63)
            {
              v63 = 0;
              LODWORD(v64) = 0;
              WTF::fastFree(v55, v23);
            }

            v56 = v62;
            v62 = 0;
            if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v56, v23);
            }

            v18 = 0;
LABEL_80:
            result = WTF::Vector<WebCore::SpeechRecognitionAlternativeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66, v23);
            goto LABEL_81;
          }
        }

        __break(1u);
LABEL_92:
        if (v24)
        {
          (*(*result + 16))(result, v23);
        }

LABEL_28:
        v19 = 0;
        v18 = 0;
        goto LABEL_29;
      }
    }

    v47 = HIDWORD(v71) + 1;
    v48 = (v70 + 16 * HIDWORD(v71));
    v49 = v62;
    v62 = 0;
    *v48 = v49;
    v48[1] = v63;
    HIDWORD(v71) = v47;
LABEL_54:
    result = v62;
    v62 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v28);
    }

    goto LABEL_57;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v60 = *(a1 + 3);
  if (v60)
  {
    if (v26)
    {
      (*(*v60 + 16))(v60);
      v26 = *(a1 + 1);
    }
  }

  else
  {
    v26 = 0;
  }

LABEL_105:
  *a1 = 0;
  *(a1 + 1) = 0;
  v61 = *(a1 + 3);
  if (v61 && v26)
  {
    (*(*v61 + 16))(v61);
  }

  LOBYTE(v66) = 0;
  v67 = 0;
LABEL_68:
  v23 = *a1;
  v24 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v24)
  {
    result = (*(*result + 16))(result, v23);
  }

  if (*a1)
  {
    v43 = 0;
    goto LABEL_71;
  }

  *a2 = 0;
  *(a2 + 40) = 0;
LABEL_81:
  if (v18)
  {
    v57 = v19;
  }

  else
  {
    v57 = 0;
  }

  if (v57 == 1)
  {
    result = WTF::fastFree(v18, v23);
  }

  if (v69 == 1)
  {
    result = v68;
    v68 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v23);
      }
    }
  }

  return result;
}

void sub_19D7A09AC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    WTF::fastFree(v22, a2);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[1]);
  v4 = a2[2];

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_10;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    goto LABEL_9;
  }

  v6 = *result + v3;
  *result = v6;
  *(result + 8) = v5;
  v7 = -v6 & 3 | 4;
  if (v5 >= v7)
  {
    *(v6 + (-v6 & 3)) = a2[1];
    v8 = *(result + 8);
    v9 = v8 - v7;
    if (v8 < v7)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v10 = *result + v7;
    *result = v10;
    *(result + 8) = v9;
    v11 = -v10 & 3 | 4;
    if (v9 >= v11)
    {
      *(v10 + (-v10 & 3)) = a2[2];
      v12 = *(result + 8);
      v13 = v12 >= v11;
      v14 = v12 - v11;
      if (v13)
      {
        *result += v11;
        *(result + 8) = v14;
        return result;
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  *result = 0;
  *(result + 8) = 0;
  return result;
}

unint64_t IPC::ArgumentCoder<WebKit::WebGPU::Extent3DDict,void>::decode(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 3)
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v8 = *v2 | 0x100000000;
      v9 = v3;
      goto LABEL_8;
    }

    v28 = a1;
    goto LABEL_28;
  }

  while (1)
  {
    *a1 = 0;
    a1[1] = 0;
    v28 = a1;
    v17 = a1[3];
    if (!v17)
    {
      v1 = 0;
LABEL_27:
      v3 = 0;
      goto LABEL_28;
    }

    if (!v1)
    {
      goto LABEL_27;
    }

    (*(*v17 + 16))(v17, v3);
    v3 = *v28;
    v1 = v28[1];
LABEL_28:
    *v28 = 0;
    v28[1] = 0;
    v18 = v28[3];
    if (!v18)
    {
      v9 = 0;
      v1 = 0;
LABEL_30:
      v3 = 0;
      v8 = 0;
      a1 = v28;
      goto LABEL_8;
    }

    if (!v1)
    {
      v9 = 0;
      goto LABEL_30;
    }

    (*(*v18 + 16))(v18, v3);
    v8 = 0;
    a1 = v28;
    v9 = *v28;
    v1 = v28[1];
    v3 = *v28;
LABEL_8:
    v10 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v1 < v10 - v3 || v1 - (v10 - v3) <= 3)
    {
      v25 = v8;
      *a1 = 0;
      a1[1] = 0;
      v29 = a1;
      v19 = a1[3];
      if (!v19)
      {
        v1 = 0;
LABEL_33:
        v9 = 0;
        goto LABEL_34;
      }

      if (!v1)
      {
        goto LABEL_33;
      }

      (*(*v19 + 16))(v19, v9);
      v9 = *v29;
      v1 = v29[1];
LABEL_34:
      *v29 = 0;
      v29[1] = 0;
      v20 = v29[3];
      if (v20)
      {
        if (v1)
        {
          (*(*v20 + 16))(v20, v9);
          v12 = 0;
          a1 = v29;
          v9 = *v29;
          v1 = v29[1];
          v3 = *v29;
          goto LABEL_37;
        }

        v9 = 0;
      }

      else
      {
        v9 = 0;
        v1 = 0;
      }

      v3 = 0;
      v12 = 0;
      a1 = v29;
LABEL_37:
      v8 = v25;
      goto LABEL_15;
    }

    a1[2] = v10 + 1;
    if (!v10)
    {
      v25 = v8;
      v29 = a1;
      goto LABEL_34;
    }

    v12 = *v10 | 0x100000000;
LABEL_15:
    v13 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v1 < v13 - v3 || v1 - (v13 - v3) <= 3)
    {
      break;
    }

    a1[2] = v13 + 1;
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = *v13 | 0x100000000;
    if (!v3)
    {
      return 0;
    }

LABEL_19:
    if ((v8 & 0x100000000) != 0 && (v12 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
    {
      return v8 | (v12 << 32);
    }

    __break(1u);
  }

  v23 = v12;
  v26 = v8;
  *a1 = 0;
  a1[1] = 0;
  v30 = a1;
  v21 = a1[3];
  if (!v21)
  {
    v1 = 0;
    goto LABEL_40;
  }

  if (v1)
  {
    (*(*v21 + 16))(v21, v9);
    a1 = v30;
    v9 = *v30;
    v1 = v30[1];
  }

  else
  {
LABEL_40:
    v9 = 0;
    a1 = v30;
  }

  v12 = v23;
  v8 = v26;
LABEL_42:
  v24 = v12;
  v27 = v8;
  *a1 = 0;
  a1[1] = 0;
  v31 = a1;
  v22 = a1[3];
  if (v22)
  {
    if (v1)
    {
      a1 = (*(*v22 + 16))(v22, v9);
      v14 = 0;
      v3 = *v31;
      v12 = v24;
      v8 = v27;
      if (*v31)
      {
        goto LABEL_19;
      }
    }
  }

  return 0;
}