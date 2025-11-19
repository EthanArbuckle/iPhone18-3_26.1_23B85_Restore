kern_return_t IOService::JoinPMTree_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::JoinPMTree_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EDE0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::ChangePowerState_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::ChangePowerState_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EDF0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

double IOService::SetPowerOverride_Invoke(IOService *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, BOOL))
{
  v4 = this->OSObject::OSMetaClassBase::__vftable;
  if (LODWORD(this->isEqualTo) == 1 && v4[1].getMetaClass == 1 && LODWORD(this->meta) >= 0x50 && HIDWORD(this->meta) >= 0x34)
  {
    v5 = *&this->refcount;
    if (!(a3)(a2, LOBYTE(v4[1].release)))
    {
      *(v5 + 28) = xmmword_23820EE00;
      *(v5 + 4) = 52;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

kern_return_t IOService::NewUserClient_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::NewUserClient_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, message[2].msgh.msgh_voucher_port, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820EE10;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOService::Terminate_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::Terminate_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EE20;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::CopyProviderProperties_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CopyProviderProperties_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSArrayMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9, &reply[2].msgh.msgh_local_port);
    if (!v3)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820EE30;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return v3;
}

kern_return_t IOService::RequireMaxBusStall_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::RequireMaxBusStall_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EE40;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::AdjustBusy_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::AdjustBusy_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, message[2].msgh.msgh_voucher_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EE50;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::GetBusyState_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::GetBusyState_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x38)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[1].msgh_body);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EE60;
      reply->msgh.msgh_size = 56;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::CoreAnalyticsSendEvent_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CoreAnalyticsSendEvent_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count != 3 || *&message[3].msgh.msgh_size != 3 || rpc->sendSize < 0x80 || rpc->replySize < 0x34)
  {
    return v3;
  }

  reply = rpc->reply;
  v8 = *&message[3].msgh.msgh_id;
  if (v8 && !OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
  {
    return -536870206;
  }

  v9 = *&message[4].msgh.msgh_bits;
  if (v9)
  {
    if (OSMetaClassBase::safeMetaCast(v9, gOSDictionaryMetaClass))
    {
      v10 = *&message[4].msgh.msgh_bits;
      goto LABEL_12;
    }

    return -536870206;
  }

  v10 = 0;
LABEL_12:
  v3 = (func)(target, *&message[4].msgh.msgh_remote_port, *&message[3].msgh.msgh_id, v10);
  if (!v3)
  {
    *&reply[1].msgh.msgh_bits = xmmword_23820EE70;
    reply->msgh.msgh_size = 52;
    *&reply->msgh.msgh_id = 1302509197;
    *&reply[1].msgh.msgh_voucher_port = 0;
  }

  return v3;
}

kern_return_t IOService::UpdateReport_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::UpdateReport_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 3 && *&message[3].msgh.msgh_bits == 3 && rpc->sendSize >= 0x8C && rpc->replySize >= 0x38)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_voucher_port;
    if ((!v8 || OSMetaClassBase::safeMetaCast(v8, gOSDataMetaClass)) && ((v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh_body.msgh_descriptor_count, gIOMemoryDescriptorMetaClass)) != 0 || !*&message[3].msgh_body.msgh_descriptor_count))
    {
      v3 = (func)(target, *&message[3].msgh.msgh_voucher_port, message[4].msgh.msgh_size, &reply[1].msgh_body, *&message[4].msgh.msgh_local_port, *&message[4].msgh.msgh_id, v9);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820EE80;
        reply->msgh.msgh_size = 56;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOService::ConfigureReport_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::ConfigureReport_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x68 && rpc->replySize >= 0x38)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSDataMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9, message[3].msgh.msgh_local_port, &reply[1].msgh_body);
    if (!v3)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EE90;
      reply->msgh.msgh_size = 56;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return v3;
}

kern_return_t IOService::SetLegend_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SetLegend_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x68 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSArrayMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9, LOBYTE(message[3].msgh.msgh_local_port));
    if (!v3)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EEA0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return v3;
}

kern_return_t IOService::CopyName_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CopyName_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_local_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820EEB0;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return result;
}

kern_return_t IOService::StringFromReturn_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::StringFromReturn_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    result = (func)(target, message[2].msgh.msgh_voucher_port, &reply[2].msgh.msgh_local_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820EEC0;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return result;
}

kern_return_t IOService::_ClaimSystemWakeEvent_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::_ClaimSystemWakeEvent_Handler func)
{
  message = rpc->message;
  v4 = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 3 && *&message[3].msgh.msgh_bits == 3 && rpc->sendSize >= 0x104 && rpc->replySize >= 0x34)
  {
    v4 = -536870206;
    reply = rpc->reply;
    v8 = *&message[3].msgh_body.msgh_descriptor_count;
    if (!v8 || OSMetaClassBase::safeMetaCast(v8, gOSContainerMetaClass))
    {
      v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_voucher_port, gIOServiceMetaClass);
      if ((v9 || !*&message[3].msgh.msgh_voucher_port) && strnlen(&message[4].msgh.msgh_id, 0x80uLL) <= 0x7F)
      {
        v4 = (func)(target, v9, *&message[4].msgh.msgh_size, &message[4].msgh.msgh_id, *&message[3].msgh_body.msgh_descriptor_count);
        if (!v4)
        {
          *&reply[1].msgh.msgh_bits = xmmword_23820EED0;
          reply->msgh.msgh_size = 52;
          *&reply->msgh.msgh_id = 1302509197;
          *&reply[1].msgh.msgh_voucher_port = 0;
        }
      }
    }
  }

  return v4;
}

kern_return_t IOService::SendIOMessageServicePropertyChange_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::SendIOMessageServicePropertyChange_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EEE0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOService::RemoveProperty_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::RemoveProperty_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9);
    if (!v3)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820EEF0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return v3;
}

kern_return_t IOService::CopySystemStateNotificationService_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::CopySystemStateNotificationService_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820EF00;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOService::StateNotificationItemCreate_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::StateNotificationItemCreate_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count != 3 || *&message[3].msgh.msgh_size != 3 || rpc->sendSize < 0x78 || rpc->replySize < 0x34)
  {
    return v3;
  }

  reply = rpc->reply;
  v8 = *&message[3].msgh.msgh_id;
  if (v8 && !OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
  {
    return -536870206;
  }

  v9 = *&message[4].msgh.msgh_bits;
  if (v9)
  {
    if (OSMetaClassBase::safeMetaCast(v9, gOSDictionaryMetaClass))
    {
      v10 = *&message[4].msgh.msgh_bits;
      goto LABEL_12;
    }

    return -536870206;
  }

  v10 = 0;
LABEL_12:
  v3 = (func)(target, *&message[3].msgh.msgh_id, v10);
  if (!v3)
  {
    *&reply[1].msgh.msgh_bits = xmmword_23820EF10;
    reply->msgh.msgh_size = 52;
    *&reply->msgh.msgh_id = 1302509197;
    *&reply[1].msgh.msgh_voucher_port = 0;
  }

  return v3;
}

kern_return_t IOService::StateNotificationItemSet_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::StateNotificationItemSet_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count != 3 || *&message[3].msgh.msgh_size != 3 || rpc->sendSize < 0x78 || rpc->replySize < 0x34)
  {
    return v3;
  }

  reply = rpc->reply;
  v8 = *&message[3].msgh.msgh_id;
  if (v8 && !OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
  {
    return -536870206;
  }

  v9 = *&message[4].msgh.msgh_bits;
  if (v9)
  {
    if (OSMetaClassBase::safeMetaCast(v9, gOSDictionaryMetaClass))
    {
      v10 = *&message[4].msgh.msgh_bits;
      goto LABEL_12;
    }

    return -536870206;
  }

  v10 = 0;
LABEL_12:
  v3 = (func)(target, *&message[3].msgh.msgh_id, v10);
  if (!v3)
  {
    *&reply[1].msgh.msgh_bits = xmmword_23820EF20;
    reply->msgh.msgh_size = 52;
    *&reply->msgh.msgh_id = 1302509197;
    *&reply[1].msgh.msgh_voucher_port = 0;
  }

  return v3;
}

kern_return_t IOService::StateNotificationItemCopy_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOService::StateNotificationItemCopy_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_voucher_port == 2 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    v8 = *&message[3].msgh.msgh_size;
    if (v8)
    {
      if (!OSMetaClassBase::safeMetaCast(v8, gOSStringMetaClass))
      {
        return -536870206;
      }

      v9 = *&message[3].msgh.msgh_size;
    }

    else
    {
      v9 = 0;
    }

    v3 = (func)(target, v9, &reply[2].msgh.msgh_local_port);
    if (!v3)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820EF30;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return v3;
}

double IOService::CreatePMAssertion_Invoke(IOService *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, unsigned int, unint64_t *, BOOL))
{
  v4 = this->OSObject::OSMetaClassBase::__vftable;
  if (LODWORD(this->isEqualTo) == 1 && v4[1].getMetaClass == 1 && LODWORD(this->meta) >= 0x50 && HIDWORD(this->meta) >= 0x3C)
  {
    v5 = *&this->refcount;
    if (!(a3)(a2, LODWORD(v4[1].release), v5 + 52, BYTE4(v4[1].release)))
    {
      *(v5 + 28) = xmmword_23820EF40;
      *(v5 + 4) = 60;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

double IOService::ReleasePMAssertion_Invoke(IOService *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, unint64_t))
{
  v4 = this->OSObject::OSMetaClassBase::__vftable;
  if (LODWORD(this->isEqualTo) == 1 && v4[1].getMetaClass == 1 && LODWORD(this->meta) >= 0x50 && HIDWORD(this->meta) >= 0x34)
  {
    v5 = *&this->refcount;
    if (!(a3)(a2, v4[1].release))
    {
      *(v5 + 28) = xmmword_23820EF50;
      *(v5 + 4) = 52;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

kern_return_t IOServiceNotificationDispatchSourceMetaClass::New(IOServiceNotificationDispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOServiceNotificationDispatchSource::_Dispatch(IOServiceNotificationDispatchSource *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid == 0xEF19D38D4F945FD0)
  {
    v6 = *rpc;
    return IODispatchSource::CheckForWork_Invoke(&v6, self, IOServiceNotificationDispatchSource::CheckForWork_Impl);
  }

  else if (msgid == 0xD963BB196F70BB93)
  {
    v6 = *rpc;
    return IODispatchSource::Cancel_Invoke(&v6, self, IOServiceNotificationDispatchSource::Cancel_Impl);
  }

  else
  {
    v6 = *rpc;
    if (msgid == 0xBB42C489FE4DEE8ELL)
    {
      return IODispatchSource::SetEnableWithCompletion_Invoke(&v6, self, IOServiceNotificationDispatchSource::SetEnableWithCompletion_Impl);
    }

    else
    {
      return IODispatchSource::_Dispatch(self, &v6);
    }
  }
}

kern_return_t IOServiceNotificationDispatchSourceMetaClass::Dispatch(IOServiceNotificationDispatchSourceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOServiceNotificationDispatchSource::Create_Call(OSDictionary *matching, uint64_t options, IODispatchQueue *queue, IOServiceNotificationDispatchSource **notification)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v14 = 0u;
  DWORD1(v10) = 124;
  *(anObject + 4) = xmmword_23820F140;
  *(&anObject[3] + 4) = gIOServiceNotificationDispatchSourceMetaClass;
  *(&anObject[2] + 4) = 3;
  *(&v11 + 4) = 0x34DA2B68CLL;
  v13 = 32;
  *(&anObject[4] + 4) = matching;
  *(&anObject[6] + 4) = options;
  LODWORD(v14) = 16777472;
  LODWORD(anObject[0]) = 0;
  *(&anObject[5] + 4) = queue;
  invoke.message = &v10;
  invoke.reply = &v10;
  *&invoke.sendSize = 0x8C0000007CLL;
  v5 = OSMetaClassBase::Invoke(gIOServiceNotificationDispatchSourceMetaClass, &invoke);
  if (!v5)
  {
    v5 = -536870209;
    if (DWORD1(v10) == 72 && v13 == 0xB40D274E974E946ALL && DWORD2(v11) == 1 && *(&v14 + 1) == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject[0], gIOServiceNotificationDispatchSourceMetaClass);
      *notification = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject[0] == 0;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v5;
}

kern_return_t IOServiceNotificationDispatchSource::SetHandler(IOServiceNotificationDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820F150;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0xCA55C48F95FC6F8ELL && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void IOServiceNotificationDispatchSource::ServiceNotificationReady(IOServiceNotificationDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  DWORD1(v4) = 92;
  v8 = xmmword_23820F160;
  v10 = action;
  v9 = 2;
  *(&v5 + 4) = 0x24DA2B68CLL;
  v7 = 0;
  v11 = action;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 92;
  OSMetaClassBase::Invoke(action, &invoke);
}

kern_return_t IOServiceNotificationDispatchSource::CopyNextNotification(IOServiceNotificationDispatchSource *this, uint64_t *type, IOService **service, uint64_t *options, OSDispatchMethod supermethod)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  DWORD1(v15) = 72;
  v18 = xmmword_23820F170;
  v19 = 1;
  anObject = this;
  *(&v16 + 4) = 0x14DA2B68CLL;
  invoke.message = &v15;
  invoke.reply = &v15;
  *&invoke.sendSize = 0x9C00000048;
  if (supermethod)
  {
    v8 = (supermethod)(this, &invoke);
  }

  else
  {
    v8 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v9 = v8;
  if (!v8)
  {
    v9 = -536870209;
    if (DWORD1(v15) == 88 && v18 == 0xCA420ABBDA782780 && DWORD2(v16) == 1 && v19 == 1)
    {
      if (type)
      {
        *type = v21;
      }

      v12 = OSMetaClassBase::safeMetaCast(anObject, gIOServiceMetaClass);
      *service = v12;
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = anObject == 0;
      }

      if (v13)
      {
        v9 = 0;
      }

      else
      {
        v9 = -536870206;
      }

      if (options)
      {
        *options = v22;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

kern_return_t IOServiceNotificationDispatchSource::Create_Invoke(const IORPC *rpc, IOServiceNotificationDispatchSource::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 3 && *&message[3].msgh.msgh_bits == 3 && rpc->sendSize >= 0x7C && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v6 = *&message[3].msgh.msgh_voucher_port;
    if ((!v6 || OSMetaClassBase::safeMetaCast(v6, gOSDictionaryMetaClass)) && ((v7 = OSMetaClassBase::safeMetaCast(*&message[3].msgh_body.msgh_descriptor_count, gIODispatchQueueMetaClass)) != 0 || !*&message[3].msgh_body.msgh_descriptor_count))
    {
      v2 = (func)(*&message[3].msgh.msgh_voucher_port, *&message[4].msgh.msgh_size, v7, &reply[2].msgh.msgh_remote_port);
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820F180;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IOServiceNotificationDispatchSource::SetHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceNotificationDispatchSource::SetHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820F190;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOServiceNotificationDispatchSource::ServiceNotificationReady_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceNotificationDispatchSource::ServiceNotificationReady_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IOServiceNotificationDispatchSource::CopyNextNotification_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceNotificationDispatchSource::CopyNextNotification_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x58)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_voucher_port, &reply[2].msgh.msgh_remote_port, &reply[2].msgh_body);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820F1A0;
      reply->msgh.msgh_size = 88;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSourceMetaClass::New(IOServiceStateNotificationDispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOServiceStateNotificationDispatchSource::_Dispatch(IOServiceStateNotificationDispatchSource *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid == 0xD963BB196F70BB93)
  {
    v6 = *rpc;
    return IODispatchSource::Cancel_Invoke(&v6, self, IOServiceStateNotificationDispatchSource::Cancel_Impl);
  }

  else
  {
    v6 = *rpc;
    if (msgid == 0xBB42C489FE4DEE8ELL)
    {
      return IODispatchSource::SetEnableWithCompletion_Invoke(&v6, self, IOServiceStateNotificationDispatchSource::SetEnableWithCompletion_Impl);
    }

    else
    {
      return IODispatchSource::_Dispatch(self, &v6);
    }
  }
}

kern_return_t IOServiceStateNotificationDispatchSourceMetaClass::Dispatch(IOServiceStateNotificationDispatchSourceMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t IOServiceStateNotificationDispatchSource::Create_Call(IOService *service, OSArray *items, IODispatchQueue *queue, IOServiceStateNotificationDispatchSource **source)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  *&v14[8] = 0u;
  *(&v11 + 4) = 0x44DA2B68CLL;
  DWORD1(v10) = 136;
  v16 = xmmword_23820F390;
  v17 = 4;
  v18 = gIOServiceStateNotificationDispatchSourceMetaClass;
  v13 = 0;
  *v14 = 40;
  v19 = service;
  v20 = items;
  *&v14[8] = 16777472;
  v15 = 0;
  v21 = queue;
  invoke.message = &v10;
  invoke.reply = &v10;
  *&invoke.sendSize = 0x8C00000088;
  v5 = OSMetaClassBase::Invoke(gIOServiceStateNotificationDispatchSourceMetaClass, &invoke);
  if (!v5)
  {
    v5 = -536870209;
    if (DWORD1(v10) == 72 && *(&v12 + 1) == 0xDDFC03B5EB685059 && DWORD2(v11) == 1 && *&v14[4] == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(*&v14[12], gIOServiceStateNotificationDispatchSourceMetaClass);
      *source = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = *&v14[12] == 0;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v5;
}

kern_return_t IOServiceStateNotificationDispatchSource::SetHandler(IOServiceStateNotificationDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820F3A0;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0x91981670BC7B5188 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSource::StateNotificationBegin(IOServiceStateNotificationDispatchSource *this, OSDispatchMethod supermethod)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  *&v5[4] = 72;
  v6 = xmmword_23820F3B0;
  v7 = 1;
  v8 = this;
  *&v5[20] = 0x14DA2B68CLL;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000048;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v5[4] == 52 && *&v5[28] == 0xE0940D907A5FC5DCLL && !*&v5[24])
  {
    if (*(&v6 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void IOServiceStateNotificationDispatchSource::StateNotificationReady(IOServiceStateNotificationDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  DWORD1(v4) = 92;
  v8 = xmmword_23820F3C0;
  v10 = action;
  v9 = 2;
  *(&v5 + 4) = 0x24DA2B68CLL;
  v7 = 0;
  v11 = action;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 92;
  OSMetaClassBase::Invoke(action, &invoke);
}

kern_return_t IOServiceStateNotificationDispatchSource::Create_Invoke(const IORPC *rpc, IOServiceStateNotificationDispatchSource::Create_Handler func)
{
  message = rpc->message;
  msgh_descriptor_count = rpc->message->msgh_body.msgh_descriptor_count;
  result = -536870209;
  if (msgh_descriptor_count == 4 && *&message[3].msgh.msgh_local_port == 4 && rpc->sendSize >= 0x88 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v8 = *&message[4].msgh.msgh_remote_port;
    if ((!v8 || OSMetaClassBase::safeMetaCast(v8, gOSArrayMetaClass)) && ((v9 = OSMetaClassBase::safeMetaCast(*&message[4].msgh.msgh_bits, gIOServiceMetaClass)) != 0 || !*&message[4].msgh.msgh_bits))
    {
      v10 = OSMetaClassBase::safeMetaCast(*&message[4].msgh.msgh_voucher_port, gIODispatchQueueMetaClass);
      if (v10 || (result = -536870206, !*&message[4].msgh.msgh_voucher_port))
      {
        result = (func)(v9, *&message[4].msgh.msgh_remote_port, v10, &reply[2].msgh.msgh_remote_port);
        if (!result)
        {
          *&reply[1].msgh.msgh_local_port = xmmword_23820F3D0;
          reply->msgh.msgh_size = 72;
          *&reply->msgh.msgh_id = 0x14DA2B68DLL;
          *&reply[2].msgh.msgh_bits = 1;
          reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
        }
      }
    }

    else
    {
      return -536870206;
    }
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSource::SetHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceStateNotificationDispatchSource::SetHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820F3E0;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOServiceStateNotificationDispatchSource::StateNotificationBegin_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceStateNotificationDispatchSource::StateNotificationBegin_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820F3F0;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSource::StateNotificationReady_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOServiceStateNotificationDispatchSource::StateNotificationReady_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IOTimerDispatchSourceMetaClass::New(IOTimerDispatchSourceMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOTimerDispatchSource::_Dispatch(IOTimerDispatchSource *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid > 0xF4AB1C3CBB5AE46)
  {
    if (msgid == 0xF4AB1C3CBB5AE47)
    {
      v6 = *rpc;
      return IOTimerDispatchSource::TimerOccurred_Invoke(&v6, self, IOTimerDispatchSource::TimerOccurred_Impl, 0);
    }

    if (msgid != 0x1DA868F27D5D7D37)
    {
      if (msgid == 0x487F4F13F1A0A074)
      {
        v6 = *rpc;
        return IOTimerDispatchSource::SetHandler_Invoke(&v6, self, IOTimerDispatchSource::SetHandler_Impl);
      }

      goto LABEL_12;
    }

    v6 = *rpc;
    return IOTimerDispatchSource::WakeAtTime_Invoke(&v6, self, IOTimerDispatchSource::WakeAtTime_Impl);
  }

  else
  {
    if (msgid == 0xBB42C489FE4DEE8ELL)
    {
      v6 = *rpc;
      return IODispatchSource::SetEnableWithCompletion_Invoke(&v6, self, IOTimerDispatchSource::SetEnableWithCompletion_Impl);
    }

    if (msgid != 0xD963BB196F70BB93)
    {
      if (msgid == 0xEF19D38D4F945FD0)
      {
        v6 = *rpc;
        return IODispatchSource::CheckForWork_Invoke(&v6, self, IOTimerDispatchSource::CheckForWork_Impl);
      }

LABEL_12:
      v6 = *rpc;
      return IODispatchSource::_Dispatch(self, &v6);
    }

    v6 = *rpc;
    return IODispatchSource::Cancel_Invoke(&v6, self, IOTimerDispatchSource::Cancel_Impl);
  }
}

kern_return_t IOTimerDispatchSource::SetHandler_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOTimerDispatchSource::SetHandler_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSActionMetaClass);
    if (v8 || !*&message[3].msgh.msgh_bits)
    {
      v3 = (func)(target, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_23820F5F0;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t IOTimerDispatchSource::WakeAtTime_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOTimerDispatchSource::WakeAtTime_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x60 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port, *&message[2].msgh_body.msgh_descriptor_count, *&message[3].msgh.msgh_size);
    if (!result)
    {
      *&reply[1].msgh.msgh_bits = xmmword_23820F600;
      reply->msgh.msgh_size = 52;
      *&reply->msgh.msgh_id = 1302509197;
      *&reply[1].msgh.msgh_voucher_port = 0;
    }
  }

  return result;
}

kern_return_t IOTimerDispatchSourceMetaClass::Dispatch(IOTimerDispatchSourceMetaClass *this, const IORPC *rpc)
{
  if (IORPCMessageFromMach(rpc->message, 0)->msgid == 0x5703101BA090EAF0)
  {
    v5 = *rpc;
    return IOTimerDispatchSource::Create_Invoke(&v5, IOTimerDispatchSource::Create_Impl);
  }

  else
  {
    v5 = *rpc;
    return OSMetaClassBase::Dispatch(this, &v5);
  }
}

kern_return_t IOTimerDispatchSource::Create_Invoke(const IORPC *rpc, IOTimerDispatchSource::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x5C && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIODispatchQueueMetaClass) || !*&message[3].msgh.msgh_bits)
    {
      v2 = (func)();
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_23820F610;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t IOTimerDispatchSource::Create(IODispatchQueue *queue, IOTimerDispatchSource **source)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  DWORD1(v8) = 92;
  *anObject = xmmword_23820F620;
  v13 = gIOTimerDispatchSourceMetaClass;
  *&anObject[16] = 2;
  *(&v9 + 4) = 0x24DA2B68CLL;
  v11 = 0;
  v14 = queue;
  invoke.message = &v8;
  invoke.reply = &v8;
  *&invoke.sendSize = 0x8C0000005CLL;
  v3 = OSMetaClassBase::Invoke(gIOTimerDispatchSourceMetaClass, &invoke);
  if (!v3)
  {
    v3 = -536870209;
    if (DWORD1(v8) == 72 && *(&v10 + 1) == 0x5703101BA090EAF0 && DWORD2(v9) == 1 && *&anObject[4] == 1)
    {
      v4 = OSMetaClassBase::safeMetaCast(*&anObject[12], gIOTimerDispatchSourceMetaClass);
      *source = v4;
      if (v4)
      {
        v5 = 1;
      }

      else
      {
        v5 = *&anObject[12] == 0;
      }

      if (v5)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v3;
}

kern_return_t IOTimerDispatchSource::SetHandler(IOTimerDispatchSource *this, OSAction *action, OSDispatchMethod supermethod)
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820F630;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = action;
  if (supermethod)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = -536870209;
  if (v5[1] == 52 && *&v5[7] == 0x487F4F13F1A0A074 && !v5[6])
  {
    if (*&v5[11])
    {
      return -536870209;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

kern_return_t IOTimerDispatchSource::WakeAtTime(IOTimerDispatchSource *this, uint64_t options, uint64_t deadline, uint64_t leeway, OSDispatchMethod supermethod)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  *&v8[4] = 96;
  v9 = xmmword_23820F640;
  v10 = 1;
  v11 = this;
  *&v8[20] = 0x14DA2B68CLL;
  v12 = options;
  v13 = deadline;
  v14 = leeway;
  if (supermethod)
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x7800000060;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x7800000060;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (*&v8[4] == 52 && *&v8[28] == 0x1DA868F27D5D7D37 && !*&v8[24])
  {
    if (*(&v9 + 4))
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t IOTimerDispatchSource::TimerOccurred(IOTimerDispatchSource *this, IORPC *rpc, OSAction *action, uint64_t time, OSDispatchMethod supermethod)
{
  reply = rpc->reply;
  *&reply->msgh.msgh_bits = 0u;
  *&reply->msgh.msgh_voucher_port = 0u;
  *&reply[1].msgh.msgh_size = 0u;
  reply->msgh.msgh_size = 100;
  *&reply[1].msgh_body.msgh_descriptor_count = xmmword_23820F650;
  *&reply[2].msgh.msgh_id = action;
  *&reply[2].msgh.msgh_local_port = 2;
  *&reply->msgh.msgh_id = 0x24DA2B68CLL;
  reply[1].msgh.msgh_id = 0;
  *&reply[3].msgh.msgh_bits = action;
  *&reply[3].msgh.msgh_remote_port = time;
  return 0;
}

kern_return_t IOTimerDispatchSource::TimerOccurred_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOTimerDispatchSource::TimerOccurred_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x64 && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v8 = targetActionClass;
    }

    else
    {
      v8 = gOSActionMetaClass;
    }

    v9 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v8);
    if (v9 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v9, *&message[3].msgh.msgh_remote_port);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IOUserClientMetaClass::New(IOUserClientMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t IOUserClient::_Dispatch(IOUserClient *self, const IORPC *rpc)
{
  msgid = IORPCMessageFromMach(rpc->message, 0)->msgid;
  if (msgid == 0xCFE0C99E739D92F9)
  {
    v6 = *rpc;
    return IOUserClient::_ExternalMethod_Invoke(&v6, self, IOUserClient::_ExternalMethod_Impl);
  }

  else
  {
    v6 = *rpc;
    if (msgid == 0xCAF3BD8932C8486FLL)
    {
      return IOUserClient::CopyClientEntitlements_Invoke(&v6, self, IOUserClient::CopyClientEntitlements_Impl);
    }

    else
    {
      return IOService::_Dispatch(self, &v6);
    }
  }
}

kern_return_t IOUserClient::CopyClientEntitlements_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOUserClient::CopyClientEntitlements_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && rpc->replySize >= 0x4C)
  {
    reply = rpc->reply;
    result = (func)(target, &reply[2].msgh.msgh_local_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_voucher_port = xmmword_23820F820;
      reply->msgh.msgh_size = 76;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_size = 1;
      *&reply[1].msgh.msgh_bits = 24;
      *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
    }
  }

  return result;
}

kern_return_t IOUserClient::_ExternalMethod_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOUserClient::_ExternalMethod_Handler func)
{
  message = rpc->message;
  reply = rpc->reply;
  sendSize = rpc->sendSize;
  replySize = rpc->replySize;
  msgh_id = rpc->message[10].msgh.msgh_id;
  if (msgh_id >= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = msgh_id;
  }

  msgh_descriptor_count = message[10].msgh_body.msgh_descriptor_count;
  if (msgh_descriptor_count >= 0x10)
  {
    msgh_descriptor_count = 16;
  }

  v17 = msgh_descriptor_count;
  result = -536870209;
  if (message->msgh_body.msgh_descriptor_count == 5 && *&message[3].msgh_body.msgh_descriptor_count == 5 && sendSize >= 0x13C && replySize >= 0xDC)
  {
    v13 = *&message[4].msgh.msgh_local_port;
    if ((!v13 || OSMetaClassBase::safeMetaCast(v13, gOSDataMetaClass)) && ((v14 = OSMetaClassBase::safeMetaCast(*&message[4].msgh.msgh_id, gIOMemoryDescriptorMetaClass)) != 0 || !*&message[4].msgh.msgh_id) && ((v15 = OSMetaClassBase::safeMetaCast(*&message[5].msgh.msgh_bits, gIOMemoryDescriptorMetaClass)) != 0 || !*&message[5].msgh.msgh_bits))
    {
      v16 = OSMetaClassBase::safeMetaCast(*&message[5].msgh.msgh_remote_port, gOSActionMetaClass);
      if (v16 || (result = -536870206, !*&message[5].msgh.msgh_remote_port))
      {
        result = (func)(target, *&message[5].msgh.msgh_voucher_port, &message[6].msgh.msgh_size, v8, *&message[4].msgh.msgh_local_port, v14, &reply[3], &v17, *&message[11].msgh.msgh_bits, &reply[2].msgh.msgh_local_port, v15, v16);
        if (!result)
        {
          *&reply[1].msgh.msgh_voucher_port = xmmword_23820F830;
          reply->msgh.msgh_size = 220;
          *&reply->msgh.msgh_id = 0x14DA2B68DLL;
          *&reply[2].msgh.msgh_size = 1;
          reply[7].msgh.msgh_voucher_port = v17;
          *&reply[1].msgh.msgh_bits = 24;
          *&reply[1].msgh.msgh_remote_port = reply[1].msgh.msgh_remote_port & 0xFF00FF | 0x1000100;
        }
      }
    }

    else
    {
      return -536870206;
    }
  }

  return result;
}

kern_return_t IOUserClientMetaClass::Dispatch(IOUserClientMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void IOUserClient::AsyncCompletion(IOUserClient *this, OSAction *action, IOReturn status, const unint64_t *asyncData, uint32_t asyncDataCount, OSDispatchMethod supermethod)
{
  v20 = 0;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v11 = 0u;
  v9 = 0u;
  v10 = 0u;
  DWORD1(v9) = 244;
  v13 = xmmword_23820F840;
  v15 = action;
  v14 = 2;
  *(&v10 + 4) = 0x24DA2B68CLL;
  v12 = 0;
  v16 = action;
  v17 = status;
  if (asyncDataCount <= 0x10)
  {
    memcpy(v18 + 12, asyncData, 8 * asyncDataCount);
    HIDWORD(v19) = asyncDataCount;
    invoke.message = &v9;
    invoke.reply = 0;
    *&invoke.sendSize = 244;
    OSMetaClassBase::Invoke(action, &invoke);
  }
}

kern_return_t IOUserClient::CopyClientMemoryForType(IOUserClient *this, uint64_t type, uint64_t *options, IOMemoryDescriptor **memory, OSDispatchMethod supermethod)
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  DWORD1(v14) = 80;
  v17 = xmmword_23820F850;
  v18 = 1;
  anObject = this;
  *(&v15 + 4) = 0x14DA2B68CLL;
  v20 = type;
  invoke.message = &v14;
  invoke.reply = &v14;
  *&invoke.sendSize = 0x9400000050;
  if (supermethod)
  {
    v7 = (supermethod)(this, &invoke);
  }

  else
  {
    v7 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v8 = v7;
  if (!v7)
  {
    v8 = -536870209;
    if (DWORD1(v14) == 80 && v17 == 0x8399BDB3D0B4F474 && DWORD2(v15) == 1 && v18 == 1)
    {
      if (options)
      {
        *options = v20;
      }

      v9 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryDescriptorMetaClass);
      *memory = v9;
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = anObject == 0;
      }

      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = -536870206;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

kern_return_t IOUserClient::CreateMemoryDescriptorFromClient(IOUserClient *this, uint64_t memoryDescriptorCreateOptions, uint32_t segmentsCount, const IOAddressSegment *segments, IOMemoryDescriptor **memory, OSDispatchMethod supermethod)
{
  bzero(v16, 0x260uLL);
  v17 = 608;
  v19 = 0xF2FA2FAA5CC11191;
  v20 = 1;
  anObject = this;
  v18 = 0x14DA2B68CLL;
  v22 = memoryDescriptorCreateOptions;
  v23 = segmentsCount;
  if (segmentsCount > 0x20)
  {
    return -536870168;
  }

  memcpy(&v24, segments, 16 * segmentsCount);
  if (supermethod)
  {
    v15.message = v16;
    v15.reply = v16;
    *&v15.sendSize = 0x8C00000260;
    result = (supermethod)(this, &v15);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v15.message = v16;
    v15.reply = v16;
    *&v15.sendSize = 0x8C00000260;
    result = OSMetaClassBase::Invoke(this, &v15);
    if (result)
    {
      return result;
    }
  }

  if (v17 != 72 || v19 != 0xF2FA2FAA5CC11191 || HIDWORD(v18) != 1)
  {
    return -536870209;
  }

  result = -536870209;
  if (v20 == 1)
  {
    v13 = OSMetaClassBase::safeMetaCast(anObject, gIOMemoryDescriptorMetaClass);
    *memory = v13;
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = anObject == 0;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return result;
}

kern_return_t IOUserClient::CopyClientEntitlements(IOUserClient *this, OSDictionary **entitlements, OSDispatchMethod supermethod)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_23820F860;
  *v15 = 1;
  *&v15[8] = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x9000000048;
  if (supermethod)
  {
    v4 = (supermethod)(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = -536870209;
    if (DWORD1(v11) == 76 && *(&v14 + 4) == 0xCAF3BD8932C8486FLL && DWORD2(v12) == 1 && *&v15[4] == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(*&v15[12], gOSDictionaryMetaClass);
      *entitlements = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = *&v15[12] == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = -536870206;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

kern_return_t IOUserClient::_ExternalMethod(IOUserClient *this, uint64_t selector, const unint64_t *scalarInput, uint32_t scalarInputCount, OSData *structureInput, IOMemoryDescriptor *structureInputDescriptor, unint64_t *scalarOutput, uint32_t *scalarOutputCount, uint64_t structureOutputMaximumSize, OSData **structureOutput, IOMemoryDescriptor *structureOutputDescriptor, OSAction *completion, OSDispatchMethod supermethod)
{
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = -536870168;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  DWORD1(v27) = 316;
  *(&v29[3] + 12) = 0xCFE0C99E739D92F9;
  *(&v29[5] + 4) = this;
  *(&v29[4] + 12) = 5;
  *(&v28 + 4) = 0x54DA2B68CLL;
  *(&v29[7] + 12) = selector;
  if (scalarInputCount <= 0x10)
  {
    memcpy(&v29[8] + 12, scalarInput, 8 * scalarInputCount);
    v35[3] = scalarInputCount;
    *(&v29[0] + 1) = 32;
    *(&v29[5] + 12) = structureInput;
    LODWORD(v29[1]) = 16777472;
    LODWORD(v29[2]) = 0;
    *(&v29[6] + 4) = structureInputDescriptor;
    if (*scalarOutputCount <= 0x10)
    {
      v35[4] = *scalarOutputCount;
      *&v35[5] = structureOutputMaximumSize;
      *(&v29[6] + 12) = structureOutputDescriptor;
      HIDWORD(v29[2]) = 0;
      DWORD2(v29[3]) = 0;
      *(&v29[7] + 4) = completion;
      invoke.message = &v27;
      invoke.reply = &v27;
      *&invoke.sendSize = 0x1200000013CLL;
      v20 = supermethod ? (supermethod)(this, &invoke) : OSMetaClassBase::Invoke(this, &invoke);
      v13 = v20;
      if (!v20)
      {
        v13 = -536870209;
        if (DWORD1(v27) == 220 && *(v29 + 12) == 0xCFE0C99E739D92F9 && DWORD2(v28) == 1 && *(&v29[1] + 12) == 1)
        {
          v21 = DWORD1(v30);
          v22 = *scalarOutputCount;
          if (DWORD1(v30) < *scalarOutputCount)
          {
            *scalarOutputCount = DWORD1(v30);
            v22 = v21;
          }

          memcpy(scalarOutput, &v29[3] + 4, 8 * v22);
          v23 = OSMetaClassBase::safeMetaCast(*(&v29[2] + 4), gOSDataMetaClass);
          *structureOutput = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = *(&v29[2] + 4) == 0;
          }

          if (v24)
          {
            return 0;
          }

          else
          {
            return -536870206;
          }
        }
      }
    }
  }

  return v13;
}

kern_return_t IOUserClient::CreateActionKernelCompletion(IOUserClient *this, size_t referenceSize, OSAction **action)
{
  v6 = OSString::withCString("OSAction_IOUserClient_KernelCompletion");
  if (!v6)
  {
    return -536870211;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0xF609F134C9046444, 0xDBC5B2E5D2B446F4, referenceSize, v6, action);
  (v7->release)(v7);
  return v8;
}

kern_return_t IOUserClient::AsyncCompletion_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOUserClient::AsyncCompletion_Handler func, const OSMetaClass *targetActionClass)
{
  v4 = -536870209;
  message = rpc->message;
  msgh_local_port = rpc->message[8].msgh.msgh_local_port;
  if (msgh_local_port >= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = msgh_local_port;
  }

  if (message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0xF4 && (!rpc->reply || rpc->replySize >= 0x34))
  {
    if (targetActionClass)
    {
      v10 = targetActionClass;
    }

    else
    {
      v10 = gOSActionMetaClass;
    }

    v11 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, v10);
    if (v11 || !*&message[3].msgh.msgh_bits)
    {
      (func)(target, v11, message[3].msgh.msgh_remote_port, &message[3].msgh_body, v7);
      return 0;
    }

    else
    {
      return -536870206;
    }
  }

  return v4;
}

kern_return_t IOUserClient::CopyClientMemoryForType_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOUserClient::CopyClientMemoryForType_Handler func)
{
  result = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x50 && rpc->replySize >= 0x50)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port, &reply[2].msgh.msgh_voucher_port, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820F870;
      reply->msgh.msgh_size = 80;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t IOUserClient::CreateMemoryDescriptorFromClient_Invoke(const IORPC *rpc, OSMetaClassBase *target, IOUserClient::CreateMemoryDescriptorFromClient_Handler func)
{
  result = -536870209;
  message = rpc->message;
  msgh_descriptor_count = rpc->message[2].msgh_body.msgh_descriptor_count;
  if (msgh_descriptor_count >= 0x20)
  {
    v8 = 32;
  }

  else
  {
    v8 = msgh_descriptor_count;
  }

  if (message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x260 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    result = (func)(target, *&message[2].msgh.msgh_voucher_port, v8, &message[3].msgh.msgh_local_port, &reply[2].msgh.msgh_remote_port);
    if (!result)
    {
      *&reply[1].msgh.msgh_local_port = xmmword_23820F880;
      reply->msgh.msgh_size = 72;
      *&reply->msgh.msgh_id = 0x14DA2B68DLL;
      *&reply[2].msgh.msgh_bits = 1;
      reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
    }
  }

  return result;
}

kern_return_t OSAction_IOUserClient_KernelCompletionMetaClass::New(OSAction_IOUserClient_KernelCompletionMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSAction_IOUserClient_KernelCompletion::Dispatch(OSAction_IOUserClient_KernelCompletion *this, const IORPC *rpc)
{
  message = rpc->message;
  *&rpca.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  rpca.message = message;
  return OSAction::_Dispatch(this, &rpca);
}

kern_return_t OSAction_IOUserClient_KernelCompletion::_Dispatch(OSAction_IOUserClient_KernelCompletion *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSAction::_Dispatch(self, &v5);
}

kern_return_t OSAction_IOUserClient_KernelCompletionMetaClass::Dispatch(OSAction_IOUserClient_KernelCompletionMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOUserServerMetaClass::New(IOUserServerMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFDA68;
  a2->OSObjectInterface::__vftable = &unk_284AFDAB0;
  return 0;
}

uint64_t IOUserServer::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid == 0xD96F074A91A53982)
  {
    v8 = *a2;
    return IOUserServer::LoadModule_Invoke(&v8, this, IOUserServer::LoadModule_Impl, v5);
  }

  else
  {
    v8 = *a2;
    if (msgid == 0xE949D58832EBE980)
    {
      return IOUserServer::Exit_Invoke(&v8, this, IOUserServer::Exit_Impl, v5);
    }

    else
    {
      return IOService::_Dispatch(this, &v8);
    }
  }
}

uint64_t IOUserServer::Exit_Invoke(IOUserServer *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, const char *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 1 && *(v5 + 56) == 1 && *(this + 4) >= 0x450u && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    if (strnlen((v5 + 80), 0x400uLL) <= 0x3FF)
    {
      v4 = (a3)(a2, v5 + 80);
      if (!v4)
      {
        *(v8 + 28) = xmmword_23820FC50;
        *(v8 + 4) = 52;
        *(v8 + 20) = 1302509197;
        *(v8 + 44) = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

uint64_t IOUserServer::LoadModule_Invoke(IOUserServer *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, const char *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 1 && *(v5 + 56) == 1 && *(this + 4) >= 0x450u && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    if (strnlen((v5 + 80), 0x400uLL) <= 0x3FF)
    {
      v4 = (a3)(a2, v5 + 80);
      if (!v4)
      {
        *(v8 + 28) = xmmword_23820FC60;
        *(v8 + 4) = 52;
        *(v8 + 20) = 1302509197;
        *(v8 + 44) = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

uint64_t IOUserServerMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOUserServer::Create(IOUserServer *this, const char *a2, uint64_t a3, uint64_t a4, OSString *a5, IOUserServer **a6)
{
  v28 = *MEMORY[0x277D85DE8];
  anObject[0] = 0;
  v16 = 0u;
  v17 = 0u;
  v26 = 0u;
  v18 = 0;
  DWORD1(v16) = 184;
  v21 = 0xC1DBAEE5E75E22B9;
  anObject[1] = 2;
  v23 = gIOUserServerMetaClass;
  *(&v17 + 4) = 0x24DA2B68CLL;
  v27 = 0;
  memset(v25, 0, sizeof(v25));
  strlcpy(&v25[8], this, 0x40uLL);
  *(&v26 + 1) = a2;
  v27 = a3;
  v20 = 16777472;
  v19 = 32;
  v24 = a4;
  invoke.message = &v16;
  invoke.reply = &v16;
  *&invoke.sendSize = 0x8C000000B8;
  v10 = OSMetaClassBase::Invoke(gIOUserServerMetaClass, &invoke);
  if (!v10)
  {
    v10 = 3758097087;
    if (DWORD1(v16) == 72 && v19 == 0xC1DBAEE5E75E22B9 && DWORD2(v17) == 1 && v21 == 1)
    {
      v11 = OSMetaClassBase::safeMetaCast(anObject[0], gIOUserServerMetaClass);
      a5->OSContainer::OSObject::OSMetaClassBase::__vftable = v11;
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = anObject[0] == 0;
      }

      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3758097090;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t IOUserServer::Exit(OSMetaClassBase *this, const char *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x450uLL);
  v10 = 1104;
  v13 = xmmword_23820FC70;
  v14 = 1;
  v15 = this;
  v11 = 0x14DA2B68CLL;
  v16 = 0;
  strlcpy(v17, a2, 0x400uLL);
  if (a3)
  {
    v8.message = v9;
    v8.reply = v9;
    *&v8.sendSize = 0x7800000450;
    result = a3(this, &v8);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8.message = v9;
    v8.reply = v9;
    *&v8.sendSize = 0x7800000450;
    result = OSMetaClassBase::Invoke(this, &v8);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (v10 == 52 && v12 == 0xE949D58832EBE980 && !HIDWORD(v11))
  {
    if (*(&v13 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOUserServer::LoadModule(OSMetaClassBase *this, const char *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x450uLL);
  v10 = 1104;
  v13 = xmmword_23820FC80;
  v14 = 1;
  v15 = this;
  v11 = 0x14DA2B68CLL;
  v16 = 0;
  strlcpy(v17, a2, 0x400uLL);
  if (a3)
  {
    v8.message = v9;
    v8.reply = v9;
    *&v8.sendSize = 0x7800000450;
    result = a3(this, &v8);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8.message = v9;
    v8.reply = v9;
    *&v8.sendSize = 0x7800000450;
    result = OSMetaClassBase::Invoke(this, &v8);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = 3758097087;
  if (v10 == 52 && v12 == 0xD96F074A91A53982 && !HIDWORD(v11))
  {
    if (*(&v13 + 4))
    {
      result = 3758097087;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOUserServer::Create_Invoke(IOUserServer *this, IORPC *a2, int (*a3)(const char *, unint64_t, unint64_t, OSString *, IOUserServer **))
{
  v3 = 3758097087;
  v4 = *this;
  if (*(*this + 24) == 2 && *(v4 + 72) == 2 && *(this + 4) >= 0xB8u && *(this + 5) >= 0x48u)
  {
    v6 = *(this + 1);
    v7 = *(v4 + 88);
    if ((!v7 || OSMetaClassBase::safeMetaCast(v7, gOSStringMetaClass)) && strnlen((v4 + 104), 0x40uLL) <= 0x3F)
    {
      v3 = (a2)(v4 + 104, *(v4 + 168), *(v4 + 176), *(v4 + 88), v6 + 64);
      if (!v3)
      {
        *(v6 + 40) = xmmword_23820FC90;
        *(v6 + 4) = 72;
        *(v6 + 20) = 0x14DA2B68DLL;
        *(v6 + 56) = 1;
        *(v6 + 36) &= 0xFFFFFFu;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v3;
}

uint64_t IOWorkGroupMetaClass::New(IOWorkGroupMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFDC18;
  a2->OSObjectInterface::__vftable = &unk_284AFDC60;
  return 0;
}

void IOWorkGroup::_Dispatch(IORPC *this, IORPCMessageMach **a2, IORPC *a3)
{
  if (IORPCMessageFromMach(*a2, 0)->msgid == 0x8FFAC48189CBD31BLL)
  {
    v6 = *a2;
    IOWorkGroup::SetWorkGroupPort_Invoke(&v6, this, IOWorkGroup::SetWorkGroupPort_Impl, v5);
  }

  else
  {
    v6 = *a2;
    OSObject::_Dispatch(this, &v6);
  }
}

double IOWorkGroup::SetWorkGroupPort_Invoke(IOWorkGroup *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, unsigned int))
{
  v4 = *this;
  if (*(*this + 24) == 2 && *(v4 + 68) == 1 && *(this + 4) >= 0x54u && *(this + 5) >= 0x34u)
  {
    v5 = *(this + 1);
    if (!(a3)(a2, *(v4 + 40)))
    {
      *(v5 + 28) = xmmword_23820FE40;
      *(v5 + 4) = 52;
      *&result = 1302509197;
      *(v5 + 20) = 1302509197;
      *(v5 + 44) = 0;
    }
  }

  return result;
}

uint64_t IOWorkGroupMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOWorkGroup::Create_Call(const OSMetaClassBase *this, OSString *a2, IOUserClient *a3, IOWorkGroup **a4)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v14 = 0u;
  DWORD1(v10) = 116;
  *(anObject + 4) = xmmword_23820FE50;
  *(&anObject[3] + 4) = gIOWorkGroupMetaClass;
  *(&anObject[2] + 4) = 3;
  *(&v11 + 4) = 0x34DA2B68CLL;
  v13 = 32;
  *(&anObject[4] + 4) = this;
  LODWORD(v14) = 16777472;
  LODWORD(anObject[0]) = 0;
  *(&anObject[5] + 4) = a2;
  invoke.message = &v10;
  invoke.reply = &v10;
  *&invoke.sendSize = 0x8C00000074;
  v5 = OSMetaClassBase::Invoke(gIOWorkGroupMetaClass, &invoke);
  if (!v5)
  {
    v5 = 3758097087;
    if (DWORD1(v10) == 72 && v13 == 0xFF6C673BB6DF71E7 && DWORD2(v11) == 1 && *(&v14 + 1) == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject[0], gIOWorkGroupMetaClass);
      a3->IOService::OSObject::OSMetaClassBase::__vftable = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject[0] == 0;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        return 3758097090;
      }
    }
  }

  return v5;
}

uint64_t IOWorkGroup::SetWorkGroupPort(OSMetaClassBase *this, int a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  memset(v5, 0, 48);
  *&v5[4] = 84;
  v6 = xmmword_23820FE60;
  v8 = this;
  v7 = 1;
  *&v5[20] = 0x24DA2B68CLL;
  *&v5[48] = 1245184;
  *&v5[40] = a2;
  if (a3)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = a3(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x7800000054;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (*&v5[4] == 52 && *&v5[28] == 0x8FFAC48189CBD31BLL && !*&v5[24])
  {
    if (*&v5[44])
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOWorkGroup::InvalidateKernel(OSMetaClassBase *this, IOUserClient *a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  memset(v5, 0, 52);
  v5[1] = 92;
  *&v5[13] = xmmword_23820FE70;
  v7 = this;
  v6 = 2;
  *&v5[5] = 0x24DA2B68CLL;
  v8 = a2;
  if (a3)
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = a3(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v5;
    invoke.reply = v5;
    *&invoke.sendSize = 0x780000005CLL;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (v5[1] == 52 && *&v5[7] == 0xAE2AE4397E9F08A1 && !v5[6])
  {
    if (*&v5[11])
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOWorkGroup::Create_Invoke(IOWorkGroup *this, IORPC *a2, int (*a3)(OSString *, IOUserClient *, IOWorkGroup **))
{
  v3 = 3758097087;
  v4 = *this;
  if (*(*this + 24) == 3 && *(v4 + 84) == 3 && *(this + 4) >= 0x74u && *(this + 5) >= 0x48u)
  {
    v6 = *(this + 1);
    v7 = *(v4 + 100);
    if ((!v7 || OSMetaClassBase::safeMetaCast(v7, gOSStringMetaClass)) && ((v8 = OSMetaClassBase::safeMetaCast(*(v4 + 108), gIOUserClientMetaClass)) != 0 || !*(v4 + 108)))
    {
      v3 = (a2)(*(v4 + 100), v8, v6 + 64);
      if (!v3)
      {
        *(v6 + 40) = xmmword_23820FE80;
        *(v6 + 4) = 72;
        *(v6 + 20) = 0x14DA2B68DLL;
        *(v6 + 56) = 1;
        *(v6 + 36) &= 0xFFFFFFu;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v3;
}

uint64_t IOWorkGroup::InvalidateKernel_Invoke(IOWorkGroup *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IOUserClient *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 2 && *(v5 + 68) == 2 && *(this + 4) >= 0x5Cu && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    v9 = OSMetaClassBase::safeMetaCast(*(v5 + 84), gIOUserClientMetaClass);
    if (v9 || !*(v5 + 84))
    {
      v4 = (a3)(a2, v9);
      if (!v4)
      {
        *(v8 + 28) = xmmword_23820FE90;
        *(v8 + 4) = 52;
        *(v8 + 20) = 1302509197;
        *(v8 + 44) = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

kern_return_t OSActionMetaClass::New(OSActionMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSAction::_Dispatch(OSAction *self, const IORPC *rpc)
{
  if (IORPCMessageFromMach(rpc->message, 0)->msgid == 0xBFB95094C657D68FLL)
  {
    result = -536870209;
    if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && (!rpc->reply || rpc->replySize >= 0x34))
    {
      OSAction::Aborted_Impl(self);
      return 0;
    }
  }

  else
  {
    v5 = *rpc;
    return OSObject::_Dispatch(self, &v5);
  }

  return result;
}

kern_return_t OSAction::Aborted_Invoke(const IORPC *rpc, OSMetaClassBase *target, OSAction::Aborted_Handler func)
{
  result = -536870209;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&rpc->message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x48 && (!rpc->reply || rpc->replySize >= 0x34))
  {
    (func)(target);
    return 0;
  }

  return result;
}

kern_return_t OSActionMetaClass::Dispatch(OSActionMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t OSAction::Create_Call(OSObject *target, uint64_t targetmsgid, uint64_t msgid, size_t referenceSize, OSAction **action)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  DWORD1(v11) = 116;
  *anObject = xmmword_238210030;
  v16 = gOSActionMetaClass;
  *&anObject[16] = 2;
  *(&v12 + 4) = 0x24DA2B68CLL;
  v14 = 0;
  v17 = target;
  v18 = targetmsgid;
  v19 = msgid;
  v20 = referenceSize;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000074;
  v6 = OSMetaClassBase::Invoke(gOSActionMetaClass, &invoke);
  if (!v6)
  {
    v6 = -536870209;
    if (DWORD1(v11) == 72 && *(&v13 + 1) == 0xAA1FC3CE85CE5497 && DWORD2(v12) == 1 && *&anObject[4] == 1)
    {
      v7 = OSMetaClassBase::safeMetaCast(*&anObject[12], gOSActionMetaClass);
      *action = v7;
      if (v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = *&anObject[12] == 0;
      }

      if (v8)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v6;
}

kern_return_t OSAction::CreateWithTypeName_Call(OSObject *target, uint64_t targetmsgid, uint64_t msgid, size_t referenceSize, OSString *typeName, OSAction **action)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  DWORD1(v12) = 140;
  *(anObject + 4) = xmmword_238210040;
  *(&anObject[3] + 4) = gOSActionMetaClass;
  *(&anObject[2] + 4) = 3;
  *(&v13 + 4) = 0x34DA2B68CLL;
  v15 = 0;
  *(&anObject[4] + 4) = target;
  *(&anObject[6] + 4) = targetmsgid;
  *(&anObject[7] + 4) = msgid;
  *(&anObject[8] + 4) = referenceSize;
  *&v16[8] = 16777472;
  LODWORD(anObject[0]) = 0;
  *v16 = 40;
  *(&anObject[5] + 4) = typeName;
  invoke.message = &v12;
  invoke.reply = &v12;
  *&invoke.sendSize = 0x8C0000008CLL;
  v7 = OSMetaClassBase::Invoke(gOSActionMetaClass, &invoke);
  if (!v7)
  {
    v7 = -536870209;
    if (DWORD1(v12) == 72 && *(&v14 + 1) == 0xA0C5B3ED5A8EA283 && DWORD2(v13) == 1 && *&v16[4] == 1)
    {
      v8 = OSMetaClassBase::safeMetaCast(anObject[0], gOSActionMetaClass);
      *action = v8;
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = anObject[0] == 0;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return -536870206;
      }
    }
  }

  return v7;
}

void OSAction::Aborted(OSAction *this, OSDispatchMethod supermethod)
{
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  DWORD1(v3) = 72;
  v6 = xmmword_238210050;
  v7 = 1;
  v8 = this;
  *(&v4 + 4) = 0x14DA2B68CLL;
  invoke.message = &v3;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (supermethod)
  {
    (supermethod)(this, &invoke);
  }

  else
  {
    OSMetaClassBase::Invoke(this, &invoke);
  }
}

kern_return_t OSAction::Create_Invoke(const IORPC *rpc, OSAction::Create_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x74 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gOSObjectMetaClass) || !*&message[3].msgh.msgh_bits)
    {
      v6 = *&message[3].msgh.msgh_remote_port;
      v7 = *&message[3].msgh.msgh_voucher_port;
      v8 = *&message[3].msgh_body.msgh_descriptor_count;
      v2 = (func)();
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_238210060;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t OSAction::CreateWithTypeName_Invoke(const IORPC *rpc, OSAction::CreateWithTypeName_Handler func)
{
  v2 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 3 && *&message[3].msgh.msgh_bits == 3 && rpc->sendSize >= 0x8C && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    v6 = *&message[3].msgh_body.msgh_descriptor_count;
    if ((!v6 || OSMetaClassBase::safeMetaCast(v6, gOSStringMetaClass)) && (OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_voucher_port, gOSObjectMetaClass) || !*&message[3].msgh.msgh_voucher_port))
    {
      v7 = *&message[4].msgh.msgh_size;
      v8 = *&message[4].msgh.msgh_local_port;
      v9 = *&message[4].msgh.msgh_id;
      v10 = *&message[3].msgh_body.msgh_descriptor_count;
      v2 = (func)();
      if (!v2)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_238210070;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v2;
}

kern_return_t OSArrayMetaClass::New(OSArrayMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSBooleanMetaClass::New(OSBooleanMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSBundleMetaClass::New(OSBundleMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSContainerMetaClass::New(OSContainerMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSDataMetaClass::New(OSDataMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSDictionaryMetaClass::New(OSDictionaryMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSMappedFileMetaClass::New(OSMappedFileMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSNumberMetaClass::New(OSNumberMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSObjectMetaClass::New(OSObjectMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSObject::Dispatch(OSObject *this, const IORPC *rpc)
{
  message = rpc->message;
  *&invoke.reply = *&rpc->reply;
  IORPCMessageFromMach(message, 0);
  invoke.message = message;
  return OSMetaClassBase::Dispatch(this, &invoke);
}

kern_return_t OSObject::_Dispatch(OSObject *self, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(self, &v5);
}

kern_return_t OSObjectMetaClass::Dispatch(OSObjectMetaClass *this, const IORPC *rpc)
{
  IORPCMessageFromMach(rpc->message, 0);
  v5 = *rpc;
  return OSMetaClassBase::Dispatch(this, &v5);
}

kern_return_t OSObject::SetDispatchQueue(OSObject *this, const char *name, IODispatchQueue *queue, OSDispatchMethod supermethod)
{
  v31 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v10, 0, 52);
  v10[1] = 356;
  *&v10[13] = xmmword_238210E20;
  v12 = this;
  v11 = 2;
  *&v10[5] = 0x24DA2B68CLL;
  memset(v14, 0, sizeof(v14));
  strlcpy(&v14[2], name, 0x100uLL);
  v13 = queue;
  if (supermethod)
  {
    invoke.message = v10;
    invoke.reply = v10;
    *&invoke.sendSize = 0x7800000164;
    result = (supermethod)(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    invoke.message = v10;
    invoke.reply = v10;
    *&invoke.sendSize = 0x7800000164;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      goto LABEL_11;
    }
  }

  result = -536870209;
  if (v10[1] == 52 && *&v10[7] == 0xE608AE8273DAE1BCLL && !v10[6])
  {
    if (*&v10[11])
    {
      result = -536870209;
    }

    else
    {
      result = 0;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

kern_return_t OSObject::CopyDispatchQueue(OSObject *this, const char *name, IODispatchQueue **queue, OSDispatchMethod supermethod)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v18 = 0;
  v15 = 0u;
  v16 = 0;
  v14 = 0u;
  DWORD1(v14) = 336;
  v17 = 0x95115B48FD29F7C9;
  v19 = 1;
  anObject[0] = this;
  *(&v15 + 4) = 0x14DA2B68CLL;
  anObject[1] = 0;
  strlcpy(v21, name, 0x100uLL);
  invoke.message = &v14;
  invoke.reply = &v14;
  *&invoke.sendSize = 0x8C00000150;
  if (supermethod)
  {
    v7 = (supermethod)(this, &invoke);
  }

  else
  {
    v7 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v8 = v7;
  if (!v7)
  {
    v8 = -536870209;
    if (DWORD1(v14) == 72 && v17 == 0x95115B48FD29F7C9 && DWORD2(v15) == 1 && v19 == 1)
    {
      v9 = OSMetaClassBase::safeMetaCast(anObject[0], gIODispatchQueueMetaClass);
      *queue = v9;
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = anObject[0] == 0;
      }

      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = -536870206;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

kern_return_t OSObject::SetDispatchQueue_Invoke(const IORPC *rpc, OSMetaClassBase *target, OSObject::SetDispatchQueue_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 2 && *&message[2].msgh.msgh_local_port == 2 && rpc->sendSize >= 0x164 && rpc->replySize >= 0x34)
  {
    reply = rpc->reply;
    v8 = OSMetaClassBase::safeMetaCast(*&message[3].msgh.msgh_bits, gIODispatchQueueMetaClass);
    if (!v8 && *&message[3].msgh.msgh_bits || strnlen(&message[3].msgh.msgh_voucher_port, 0x100uLL) > 0xFF)
    {
      return -536870206;
    }

    else
    {
      v3 = (func)(target, &message[3].msgh.msgh_voucher_port, v8);
      if (!v3)
      {
        *&reply[1].msgh.msgh_bits = xmmword_238210E30;
        reply->msgh.msgh_size = 52;
        *&reply->msgh.msgh_id = 1302509197;
        *&reply[1].msgh.msgh_voucher_port = 0;
      }
    }
  }

  return v3;
}

kern_return_t OSObject::CopyDispatchQueue_Invoke(const IORPC *rpc, OSMetaClassBase *target, OSObject::CopyDispatchQueue_Handler func)
{
  v3 = -536870209;
  message = rpc->message;
  if (rpc->message->msgh_body.msgh_descriptor_count == 1 && *&message[2].msgh.msgh_bits == 1 && rpc->sendSize >= 0x150 && rpc->replySize >= 0x48)
  {
    reply = rpc->reply;
    if (strnlen(&message[2].msgh_body, 0x100uLL) <= 0xFF)
    {
      v3 = (func)(target, &message[2].msgh_body, &reply[2].msgh.msgh_remote_port);
      if (!v3)
      {
        *&reply[1].msgh.msgh_local_port = xmmword_238210E40;
        reply->msgh.msgh_size = 72;
        *&reply->msgh.msgh_id = 0x14DA2B68DLL;
        *&reply[2].msgh.msgh_bits = 1;
        reply[1].msgh.msgh_remote_port &= 0xFFFFFFu;
      }
    }

    else
    {
      return -536870206;
    }
  }

  return v3;
}

kern_return_t OSOrderedSetMetaClass::New(OSOrderedSetMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSSerializationMetaClass::New(OSSerializationMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSSetMetaClass::New(OSSetMetaClass *this, OSObject *instance)
{
  return 0;
}

kern_return_t OSStringMetaClass::New(OSStringMetaClass *this, OSObject *instance)
{
  return 0;
}

uint64_t _IOBlockStorageDeviceMetaClass::New(_IOBlockStorageDeviceMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFEEC8;
  a2->OSObjectInterface::__vftable = &unk_284AFEF10;
  return 0;
}

uint64_t _IOBlockStorageDevice::Dispatch(IOService *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return IOService::_Dispatch(this, &rpc);
}

uint64_t _IOBlockStorageDevice::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return IOService::_Dispatch(this, &v6);
}

uint64_t _IOBlockStorageDeviceMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t _IOBlockStorageDevice::DoAsyncReadWriteCompletion(_IOBlockStorageDevice *this, OSAction *a2, int a3, uint64_t a4, int (*a5)(OSMetaClassBase *, IORPC *__struct_ptr))
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  DWORD1(v7) = 108;
  v11 = xmmword_238211540;
  v13 = a2;
  v12 = 2;
  *(&v8 + 4) = 0x24DA2B68CLL;
  v10 = 0;
  v14 = a2;
  v15 = a3;
  v16 = 0;
  v17 = a4;
  invoke.message = &v7;
  invoke.reply = 0;
  *&invoke.sendSize = 108;
  return OSMetaClassBase::Invoke(a2, &invoke);
}

uint64_t _IOBlockStorageDevice::DoAsyncReadWrite(OSMetaClassBase *this, IOMemoryDescriptor *a2, uint64_t a3, uint64_t a4, OSAction *a5, uint64_t (*a6)(OSMetaClassBase *, IORPC *))
{
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  *&v8[4] = 128;
  v11 = xmmword_238211550;
  v12 = 3;
  v13 = this;
  *&v8[20] = 0x34DA2B68CLL;
  v16 = a3;
  v17 = a4;
  v10 = 0;
  v14 = a2;
  v15 = a5;
  if (a6)
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x7800000080;
    result = a6(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  else
  {
    invoke.message = v8;
    invoke.reply = v8;
    *&invoke.sendSize = 0x7800000080;
    result = OSMetaClassBase::Invoke(this, &invoke);
    if (result)
    {
      return result;
    }
  }

  result = 3758097087;
  if (*&v8[4] == 52 && *&v8[28] == 0x531DA66B034F3069 && !*&v8[24])
  {
    if (*&v8[44])
    {
      return 3758097087;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _IOBlockStorageDevice::CopyProducerDataQueue(OSMetaClassBase *this, IODataQueueDispatchSource **a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_238211560;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (a3)
  {
    v4 = a3(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = 3758097087;
    if (DWORD1(v11) == 72 && v14 == 0x5EB9E790228E9CFALL && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIODataQueueDispatchSourceMetaClass);
      *a2 = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3758097090;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _IOBlockStorageDevice::CopyReceiverDataQueue(OSMetaClassBase *this, IODataQueueDispatchSource **a2, uint64_t (*a3)(OSMetaClassBase *, IORPC *))
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  DWORD1(v11) = 72;
  v14 = xmmword_238211570;
  v15 = 1;
  anObject = this;
  *(&v12 + 4) = 0x14DA2B68CLL;
  invoke.message = &v11;
  invoke.reply = &v11;
  *&invoke.sendSize = 0x8C00000048;
  if (a3)
  {
    v4 = a3(this, &invoke);
  }

  else
  {
    v4 = OSMetaClassBase::Invoke(this, &invoke);
  }

  v5 = v4;
  if (!v4)
  {
    v5 = 3758097087;
    if (DWORD1(v11) == 72 && v14 == 0x48630EEB0D6B8B14 && DWORD2(v12) == 1 && v15 == 1)
    {
      v6 = OSMetaClassBase::safeMetaCast(anObject, gIODataQueueDispatchSourceMetaClass);
      *a2 = v6;
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = anObject == 0;
      }

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3758097090;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _IOBlockStorageDevice::CreateActionKernelCompletion(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction__IOBlockStorageDevice_KernelCompletion");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0xADE816E976E7C376, 0x4F3D0282014E62D4uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t _IOBlockStorageDevice::DoAsyncReadWriteCompletion_Invoke(_IOBlockStorageDevice *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *, OSAction *, int, unint64_t), const OSMetaClass *a5)
{
  v6 = *this;
  v7 = *(this + 2);
  return _IOBlockStorageDevice::DoAsyncReadWriteCompletion_Invoke(&v6, a2, a3, 0, a5);
}

uint64_t _IOBlockStorageDevice::DoAsyncReadWriteCompletion_Invoke(_IOBlockStorageDevice *this, IORPC *a2, OSMetaClassBase *a3, OSMetaClass *a4, const OSMetaClass *a5)
{
  v5 = 3758097087;
  v6 = *this;
  if (*(*this + 24) == 2 && *(v6 + 68) == 2 && *(this + 4) >= 0x6Cu && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = gOSActionMetaClass;
    }

    v10 = OSMetaClassBase::safeMetaCast(*(v6 + 84), v9);
    if (v10 || !*(v6 + 84))
    {
      (a3)(a2, v10, *(v6 + 92), *(v6 + 100));
      return 0;
    }

    else
    {
      return 3758097090;
    }
  }

  return v5;
}

uint64_t _IOBlockStorageDevice::DoAsyncReadWrite_Invoke(_IOBlockStorageDevice *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IOMemoryDescriptor *, unint64_t, unint64_t, OSAction *))
{
  v4 = 3758097087;
  v5 = *this;
  if (*(*this + 24) == 3 && *(v5 + 80) == 3 && *(this + 4) >= 0x80u && *(this + 5) >= 0x34u)
  {
    v8 = *(this + 1);
    v9 = OSMetaClassBase::safeMetaCast(*(v5 + 96), gIOMemoryDescriptorMetaClass);
    if ((v9 || !*(v5 + 96)) && ((v10 = OSMetaClassBase::safeMetaCast(*(v5 + 104), gOSActionMetaClass)) != 0 || !*(v5 + 104)))
    {
      v4 = (a3)(a2, v9, *(v5 + 112), *(v5 + 120), v10);
      if (!v4)
      {
        *(v8 + 28) = xmmword_238211580;
        *(v8 + 4) = 52;
        *(v8 + 20) = 1302509197;
        *(v8 + 44) = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return v4;
}

double _IOBlockStorageDevice::CopyProducerDataQueue_Invoke(_IOBlockStorageDevice *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IODataQueueDispatchSource **))
{
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && *(this + 5) >= 0x48u)
  {
    v4 = *(this + 1);
    if (!(a3)(a2, v4 + 64))
    {
      *(v4 + 40) = xmmword_238211590;
      *(v4 + 4) = 72;
      *&result = 0x14DA2B68DLL;
      *(v4 + 20) = 0x14DA2B68DLL;
      *(v4 + 56) = 1;
      *(v4 + 36) &= 0xFFFFFFu;
    }
  }

  return result;
}

double _IOBlockStorageDevice::CopyReceiverDataQueue_Invoke(_IOBlockStorageDevice *this, IORPC *a2, OSMetaClassBase *a3, int (*a4)(OSMetaClassBase *, IODataQueueDispatchSource **))
{
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && *(this + 5) >= 0x48u)
  {
    v4 = *(this + 1);
    if (!(a3)(a2, v4 + 64))
    {
      *(v4 + 40) = xmmword_2382115A0;
      *(v4 + 4) = 72;
      *&result = 0x14DA2B68DLL;
      *(v4 + 20) = 0x14DA2B68DLL;
      *(v4 + 56) = 1;
      *(v4 + 36) &= 0xFFFFFFu;
    }
  }

  return result;
}

uint64_t OSAction__IOBlockStorageDevice_KernelCompletionMetaClass::New(OSAction__IOBlockStorageDevice_KernelCompletionMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFEFD8;
  a2->OSObjectInterface::__vftable = &unk_284AFF020;
  return 0;
}

uint64_t OSAction__IOBlockStorageDevice_KernelCompletion::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction__IOBlockStorageDevice_KernelCompletion::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction__IOBlockStorageDevice_KernelCompletionMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t IOThreadMetaClass::New(IOThreadMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &unk_284AFA1D8;
  a2->OSObjectInterface::__vftable = &unk_284AFA220;
  return 0;
}

void panic(const char *a1, ...)
{
  va_start(va, a1);
  va_copy(v8, va);
  vsnprintf(__str, 0x400uLL, a1, va);
  if (qword_27DEF6860 != -1)
  {
    dispatch_once(&qword_27DEF6860, &__block_literal_global);
  }

  v1 = _MergedGlobals;
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v5 = 136446210;
    v6 = __str;
    v3 = MEMORY[0x277D86220];
    v4 = "%{public}s";
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v5 = 136315138;
    v6 = __str;
    v3 = MEMORY[0x277D86220];
    v4 = "%s";
  }

  _os_log_impl(&dword_2381D4000, v3, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
LABEL_9:
  qword_27DEF61A8 = strdup(__str);
  abort();
}

void __assert_rtn(const char *a1, const char *a2, int a3, const char *a4)
{
  if (a1)
  {
    if (a1 == -1)
    {
    }

    panic("Assertion failed: (%s), function %s, file %s, line %d.\n", a4, a1, a2, a3);
  }

  panic("Assertion failed: (%s), file %s, line %d.\n", a4, a2, a3);
}

void OSRegisterClass()
{
  __assert_rtn("OSRegisterClass", "uioserver.cpp", 441, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("OSRegisterClass", "uioserver.cpp", 432, "(desc->queueNamesOffset + desc->queueNamesSize) <= descSize");
}

{
  __assert_rtn("OSRegisterClass", "uioserver.cpp", 431, "(desc->methodOptionsOffset + desc->methodOptionsSize) <= descSize");
}

void OSObjectPortFinalize()
{
  __assert_rtn("OSObjectPortFinalize", "uioserver.cpp", 707, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("OSObjectPortFinalize", "uioserver.cpp", 682, "remotePriv");
}

void OSObject::retain()
{
  __assert_rtn("retain", "uioserver.cpp", 849, "oldcount < INT16_MAX");
}

{
  __assert_rtn("retain", "uioserver.cpp", 848, "oldcount > 0");
}

void OSMetaClassBase::requiredMetaCast(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (***(a2 + 24) + 4);
  }

  else
  {
    v2 = "(null)";
  }

  panic("Failed to cast object of type %s to %s", (***(a1 + 24) + 4), v2);
}

void OSMetaClassBase::QueueForObject()
{
  __assert_rtn("QueueForObject", "uioserver.cpp", 957, "queue");
}

{
  __assert_rtn("QueueForObject", "uioserver.cpp", 945, "priv->queueArray");
}

void CompactArray<IODispatchQueue *>::operator[]()
{
  __assert_rtn("operator[]", "OSMetaClassBasePrivate.h", 82, "idx < size");
}

{
  __assert_rtn("operator[]", "OSMetaClassBasePrivate.h", 81, "size != 0");
}

void OSMetaClassBase::Dispatch()
{
  __assert_rtn("Dispatch", "uioserver.cpp", 1488, "MACH_PORT_NULL != objectName1");
}

{
  __assert_rtn("Dispatch", "uioserver.cpp", 1497, "MACH_PORT_DEAD != remotePriv->objectRef");
}

{
  __assert_rtn("Dispatch", "uioserver.cpp", 1480, "MACH_PORT_NULL != remotePriv->objectRef");
}

{
  __assert_rtn("Dispatch", "uioserver.cpp", 1462, "remotePriv");
}

void InvokeRemote()
{
  __assert_rtn("InvokeRemote", "uioserver.cpp", 2245, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("InvokeRemote", "uioserver.cpp", 2337, "replySize <= rpc.replySize");
}

{
  __assert_rtn("InvokeRemote", "uioserver.cpp", 2242, "oneway || (replySize >= (sizeof(IORPCMessageMach) + sizeof(IORPCMessage)))");
}

{
  __assert_rtn("InvokeRemote", "uioserver.cpp", 2239, "sendSize >= (sizeof(IORPCMessageMach) + sizeof(IORPCMessage))");
}

void OSMetaClassBase::Invoke()
{
  __assert_rtn("Invoke", "uioserver.cpp", 1614, "MACH_PORT_DEAD != remotePriv->objectRef");
}

{
  __assert_rtn("Invoke", "uioserver.cpp", 1613, "MACH_PORT_NULL != remotePriv->objectRef");
}

{
  __assert_rtn("Invoke", "uioserver.cpp", 1619, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("Invoke", "uioserver.cpp", 1612, "remotePriv");
}

{
  __assert_rtn("Invoke", "uioserver.cpp", 1631, "msgid == action->ivars->msgid");
}

{
  __assert_rtn("Invoke", "uioserver.cpp", 1654, "notsync || !remote || (msgid == IOService_Start_ID) || queue->OnQueue()");
}

void ThreadStart()
{
  __assert_rtn("ThreadStart", "uioserver.cpp", 2063, "!err");
}

{
  __assert_rtn("ThreadStart", "uioserver.cpp", 2067, "!err");
}

{
  __assert_rtn("ThreadStart", "uioserver.cpp", 2070, "!err");
}

{
  __assert_rtn("ThreadStart", "uioserver.cpp", 2074, "!err");
}

{
  __assert_rtn("ThreadStart", "uioserver.cpp", 2077, "!err");
}

void OSCopyOutObjects()
{
  __assert_rtn("OSCopyOutObjects", "uioserver.cpp", 1255, "buffer");
}

{
  __assert_rtn("OSCopyOutObjects", "uioserver.cpp", 1249, "serialOut");
}

{
  __assert_rtn("OSObjectCopyOut", "uioserver.cpp", 1173, "MACH_PORT_NULL != remotePriv->objectRef");
}

{
  __assert_rtn("OSObjectCopyOut", "uioserver.cpp", 1172, "remotePriv");
}

{
  __assert_rtn("OSCopyOutObjects", "uioserver.cpp", 1283, "false");
}

{
  __assert_rtn("OSCopyOutObjects", "uioserver.cpp", 1204, "refs <= maxObjectCount");
}

{
  __assert_rtn("OSCopyOutObjects", "uioserver.cpp", 1203, "refs <= mach->msgh_body.msgh_descriptor_count");
}

void OSCopyInObjects()
{
  __assert_rtn("OSCopyInObjects", "uioserver.cpp", 1411, "serial");
}

{
  __assert_rtn("OSCopyInObjects", "uioserver.cpp", 1426, "false");
}

{
  __assert_rtn("OSCopyInObjects", "uioserver.cpp", 1375, "refs <= maxObjectCount");
}

{
  __assert_rtn("OSCopyInObjects", "uioserver.cpp", 1374, "refs <= mach->msgh_body.msgh_descriptor_count");
}

void OSScanLibraries()
{
  __assert_rtn("OSMetaClassAllocate", "uioserver.cpp", 586, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("OSRegisterClasses", "uioserver.cpp", 518, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("OSMetaClassAllocate", "uioserver.cpp", 571, "remotePriv");
}

void IODispatchQueue::Create()
{
  __assert_rtn("Create", "uioserver.cpp", 3201, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3206, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3209, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3224, "lvars->queue");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3217, "lvars->waitTokens");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3214, "lvars->reentrantLock");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3243, "lvars->ipcchannel");
}

{
  __assert_rtn("Create", "uioserver.cpp", 3235, "lvars->queue");
}

void uiomachchannel()
{
  __assert_rtn("uiomachchannel", "uioserver.cpp", 3173, "lvars->recvport == hdr->msgh_local_port");
}

{
  __assert_rtn("uiomachchannel", "uioserver.cpp", 3175, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("uiomachchannel", "uioserver.cpp", 3171, "!(MACH_PORT_VALID(hdr->msgh_remote_port))");
}

{
  __assert_rtn("uiomachchannel", "uioserver.cpp", 3154, "msg");
}

void _IODispatchQueueSleep()
{
  __assert_rtn("_IODispatchQueueSleep", "uioserver.cpp", 3428, "IORecursiveConditionLockHaveLock(lvars->reentrantLock)");
}

{
  __assert_rtn("_IODispatchQueueSleep", "uioserver.cpp", 3481, "0 == lvars->reentrantLock->count");
}

{
  __assert_rtn("_IODispatchQueueSleep", "uioserver.cpp", 3482, "0 == lvars->reentrantLock->thread");
}

void IODispatchQueue::WakeupWithOptions()
{
  __assert_rtn("WakeupWithOptions", "uioserver.cpp", 3589, "IORecursiveConditionLockHaveLock(lvars->reentrantLock)");
}

{
  __assert_rtn("WakeupWithOptions", "uioserver.cpp", 3608, "0 == err");
}

void IODataQueueDispatchSource::init()
{
  __assert_rtn("init", "IODataQueueDispatchSourceShared.h", 45, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("init", "IODataQueueDispatchSourceShared.h", 51, "kIOReturnSuccess == ret");
}

void IOTimerDispatchSource::Create_Impl()
{
  __assert_rtn("Create_Impl", "uioserver.cpp", 4201, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("Create_Impl", "uioserver.cpp", 4213, "inst->ivars->dsource");
}

void IOService::init()
{
  __assert_rtn("init", "uioserver.cpp", 4929, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("init", "uioserver.cpp", 4931, "kIOReturnSuccess == ret");
}

void OSBundle::mainBundle()
{
  __assert_rtn("bundlePathFromExecutablePath", "uioserver.cpp", 5378, "bundlePath != NULL");
}

{
  __assert_rtn("bundlePathFromExecutablePath", "uioserver.cpp", 5374, "tempPathLen < sizeof(tempPath)");
}

{
  __assert_rtn("bundlePathFromExecutablePath", "uioserver.cpp", 5372, "tempPathLen < sizeof(tempPath)");
}

void IOThreadStart()
{
  __assert_rtn("IOThreadStart", "uioserver.cpp", 5880, "self == OSDynamicCast(IOThread, self)");
}

{
  __assert_rtn("IOThreadStart", "uioserver.cpp", 5884, "ret == KERN_SUCCESS");
}

{
  __assert_rtn("IOThreadStart", "uioserver.cpp", 5879, "self != NULL");
}

void IOThread::CopyCurrentThread()
{
  __assert_rtn("CopyCurrentThread", "uioserver.cpp", 6010, "self == OSDynamicCast(IOThread, self)");
}

{
  __assert_rtn("CopyCurrentThread", "uioserver.cpp", 6009, "self != NULL");
}

void _OSObjectCopyIn()
{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1041, "KERN_SUCCESS == ret");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1078, "reply->__hdr.msgid == OSObject_Instantiate_ID");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1117, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1121, "remotePriv");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1091, "size >= queueCount * sizeof(machReply->objects[0])");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1089, "size >= sizeof(OSObject_Instantiate_Rpl)");
}

{
  __assert_rtn("_OSObjectCopyIn", "uioserver.cpp", 1084, "false");
}

void Server()
{
  __assert_rtn("Server", "uioserver.cpp", 2177, "kIOReturnSuccess == ret");
}

{
  __assert_rtn("Server", "uioserver.cpp", 2143, "(replyTo == 0) == (0 != (kIORPCMessageOneway & message->flags))");
}

void OSCreateObjectFromSerializationInternal()
{
  __assert_rtn("OSCreateObjectFromSerializationInternal", "OSCollections.cpp", 359, "false");
}

{
  __assert_rtn("OSCreateObjectFromSerializationInternal", "OSCollections.cpp", 353, "false");
}

{
  __assert_rtn("OSCreateObjectFromSerializationInternal", "OSCollections.cpp", 372, "false");
}

void OSString::free()
{
  __assert_rtn("free", "OSCollections.cpp", 612, "uniq->string == this");
}

{
  __assert_rtn("free", "OSCollections.cpp", 623, "allocLen >= bufferLen");
}

{
  __assert_rtn("roundSerializationSize", "OSCollections.cpp", 66, "length <= kOSSerializeDataMask");
}

void OSSerializationAppendBytes()
{
  __assert_rtn("OSSerializationAppendBytes", "OSCollections.cpp", 1670, "false");
}

{
  __assert_rtn("OSSerializationAppendBytes", "OSCollections.cpp", 1690, "KERN_SUCCESS == kr");
}

{
  __assert_rtn("OSSerializationAppendBytes", "OSCollections.cpp", 1697, "KERN_SUCCESS == kr");
}

{
  __assert_rtn("OSSerializationAppendBytes", "OSCollections.cpp", 1693, "serial->ivars->bufLen == 0 || serial->ivars->buffer != nullptr");
}

{
  __assert_rtn("OSSerializationAppendBytes", "OSCollections.cpp", 1676, "false");
}

void OSSerializationAddBinaryObject()
{
  __assert_rtn("OSSerializationAddBinaryObject", "OSCollections.cpp", 1727, "idx < source->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationAddBinaryObject", "OSCollections.cpp", 1725, "source != nullptr");
}

{
  __assert_rtn("OSSerializationAddBinaryObject", "OSCollections.cpp", 1741, "count && tags");
}

void OSSerializationSize()
{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 215, "idx < serial->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 217, "(count + idx) <= serial->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 183, "length <= kOSSerializeDataMask");
}

{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 181, "idx < maxIndex");
}

{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 203, "false");
}

{
  __assert_rtn("OSSerializationSize", "OSCollections.cpp", 172, "idx < maxIndex");
}

void OSSerializeEntry()
{
  __assert_rtn("OSCollectionEntryArrayCount", "OSCollections.cpp", 1396, "(kOSSerializeArray == (kOSSerializeTypeMask & key)) || (kOSSerializeSet == (kOSSerializeTypeMask & key))");
}

{
  __assert_rtn("OSCollectionEntryArrayCount", "OSCollections.cpp", 1393, "serial != nullptr");
}

{
  __assert_rtn("OSCollectionEntryArrayApply", "OSCollections.cpp", 1414, "serial != nullptr");
}

{
  __assert_rtn("OSCollectionEntryDictionaryCount", "OSCollections.cpp", 947, "kOSSerializeDictionary == (kOSSerializeTypeMask & key)");
}

{
  __assert_rtn("OSCollectionEntryDictionaryCount", "OSCollections.cpp", 945, "serial != nullptr");
}

{
  __assert_rtn("OSCollectionEntryDictionaryApply", "OSCollections.cpp", 977, "serial != nullptr");
}

void OSCollectionEntryTypeID()
{
  __assert_rtn("OSCollectionEntryTypeID", "OSCollections.cpp", 273, "idx < serial->ivars->maxIndex");
}

{
  __assert_rtn("OSCollectionEntryTypeID", "OSCollections.cpp", 271, "serial != nullptr");
}

void OSSerializationDictionaryApply()
{
  __assert_rtn("OSSerializationDictionaryApply", "OSCollections.cpp", 843, "idx < serial->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationDictionaryApply", "OSCollections.cpp", 845, "kOSSerializeDictionary == (kOSSerializeTypeMask & key)");
}

{
  __assert_rtn("OSSerializationDictionaryApply", "OSCollections.cpp", 853, "idx < serial->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationDictionaryApply", "OSCollections.cpp", 857, "idx < serial->ivars->maxIndex");
}

void OSSerializationArrayApply()
{
  __assert_rtn("OSSerializationArrayApply", "OSCollections.cpp", 1300, "idx < serial->ivars->maxIndex");
}

{
  __assert_rtn("OSSerializationArrayApply", "OSCollections.cpp", 1305, "(kOSSerializeArray == (kOSSerializeTypeMask & key)) || (kOSSerializeSet == (kOSSerializeTypeMask & key))");
}

{
  __assert_rtn("OSSerializationArrayApply", "OSCollections.cpp", 1311, "idx < serial->ivars->maxIndex");
}

void IOReporter_IVars::~IOReporter_IVars()
{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOReporter_IVars", "ivar(nElements)", "IOReportElement");
}

{
  panic("%s - %s <= 0!", "~IOReporter_IVars", "ivar(nElements)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOReporter_IVars", "ivar(nChannels)", "int");
}

{
  panic("%s - %s <= 0!", "~IOReporter_IVars", "ivar(nChannels)");
}

void IOReporter_IVars::handleSwapPrepare()
{
  panic("%s was called out of config locked context!", "virtual IOReturn IOReporter_IVars::handleSwapPrepare(int)");
}

{
  panic("IOReporter::_swap* already in use");
}

{
  panic("%s doesn't support shrinking", "handleSwapPrepare");
}

void IOReporter_IVars::handleAddChannelSwap()
{
  panic("%s was called out of config locked context!", "virtual IOReturn IOReporter_IVars::handleAddChannelSwap(uint64_t, const OSString *)");
}

{
  panic("%s was called out of locked context!", "virtual IOReturn IOReporter_IVars::handleAddChannelSwap(uint64_t, const OSString *)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleAddChannelSwap", "ivar(nElements)", "int");
}

{
  panic("%s - %s <= 0!", "handleAddChannelSwap", "ivar(nElements)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleAddChannelSwap", "ivar(nElements)", "IOReportElement");
}

{
  panic("%s - %s <= 0!", "handleAddChannelSwap", "ivar(nElements)");
}

void IOReporter_IVars::handleSwapCleanup()
{
  panic("%s was called out of config locked context!", "virtual void IOReporter_IVars::handleSwapCleanup(int)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleSwapCleanup", "swapNElements", "IOReportElement");
}

{
  panic("%s - %s <= 0!", "handleSwapCleanup", "swapNElements");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleSwapCleanup", "swapNChannels", "int");
}

{
  panic("%s - %s <= 0!", "handleSwapCleanup", "swapNChannels");
}

void IOHistogramReporter_IVars::~IOHistogramReporter_IVars()
{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOHistogramReporter_IVars", "ivar(nElements)", "int64_t");
}

{
  panic("%s - %s <= 0!", "~IOHistogramReporter_IVars", "ivar(nElements)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOHistogramReporter_IVars", "ivar(segmentCount)", "IOHistogramSegmentConfig");
}

{
  panic("%s - %s <= 0!", "~IOHistogramReporter_IVars", "ivar(segmentCount)");
}

void IOStateReporter_IVars::~IOStateReporter_IVars()
{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOStateReporter_IVars", "ivar(nChannels)", "int");
}

{
  panic("%s - %s <= 0!", "~IOStateReporter_IVars", "ivar(nChannels)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "~IOStateReporter_IVars", "ivar(nChannels)", "uint64_t");
}

{
  panic("%s - %s <= 0!", "~IOStateReporter_IVars", "ivar(nChannels)");
}

void IOStateReporter_IVars::handleSwapPrepare()
{
  panic("%s was called out of config locked context!", "virtual IOReturn IOStateReporter_IVars::handleSwapPrepare(int)");
}

{
  panic("IOStateReporter::_swap* already in use");
}

void IOStateReporter_IVars::handleAddChannelSwap()
{
  panic("%s was called out of config locked context!", "virtual IOReturn IOStateReporter_IVars::handleAddChannelSwap(uint64_t, const OSString *)");
}

{
  panic("%s was called out of locked context!", "virtual IOReturn IOStateReporter_IVars::handleAddChannelSwap(uint64_t, const OSString *)");
}

{
  panic("IOStateReporter::handleAddChannelSwap ivar(lastUpdateTimes) unset despite non-NULL ivar(currentStates)");
}

void IOStateReporter_IVars::handleSwapCleanup()
{
  panic("%s was called out of config locked context!", "virtual void IOStateReporter_IVars::handleSwapCleanup(int)");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleSwapCleanup", "swapNChannels", "int");
}

{
  panic("%s - %s <= 0!", "handleSwapCleanup", "swapNChannels");
}

{
  panic("%s - %s > INT_MAX / sizeof(%s)!", "handleSwapCleanup", "swapNChannels", "uint64_t");
}

{
  panic("%s - %s <= 0!", "handleSwapCleanup", "swapNChannels");
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}