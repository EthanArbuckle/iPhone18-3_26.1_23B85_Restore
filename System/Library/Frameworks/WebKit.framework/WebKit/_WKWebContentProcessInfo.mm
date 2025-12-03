@interface _WKWebContentProcessInfo
- (_WKWebContentProcessInfo)initWithTaskInfo:(const TaskInfo *)info process:(const void *)process;
@end

@implementation _WKWebContentProcessInfo

- (_WKWebContentProcessInfo)initWithTaskInfo:(const TaskInfo *)info process:(const void *)process
{
  v17.receiver = self;
  v17.super_class = _WKWebContentProcessInfo;
  v5 = [(_WKProcessInfo *)&v17 initWithTaskInfo:info];
  v6 = v5;
  if (v5)
  {
    v5->_webContentState = 2;
    if (*(process + 811) == 1)
    {
      v5->_webContentState = 0;
    }

    else if (*(process + 760) == 1)
    {
      v5->_webContentState = 1;
    }

    else
    {
      WebKit::WebProcessProxy::pages(process, &v15);
      if (v16)
      {
        v8 = v15;
        v9 = 8 * v16;
        do
        {
          WebKit::WebPageProxy::cocoaView(*v8, &v14);
          v10 = v14;
          if (v14)
          {
            m_ptr = v6->_webViews.m_ptr;
            if (!m_ptr)
            {
              m_ptr = objc_alloc_init(MEMORY[0x1E695DF70]);
              v12 = v6->_webViews.m_ptr;
              v6->_webViews.m_ptr = m_ptr;
              if (v12)
              {

                m_ptr = v6->_webViews.m_ptr;
              }
            }

            [(NSMutableArray *)m_ptr addObject:v10];
          }

          ++v8;
          v9 -= 8;
        }

        while (v9);
      }

      WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v15, v7);
    }

    v6->_runningServiceWorkers = *(process + 896);
    v6->_runningSharedWorkers = *(process + 968);
    v6->_totalForegroundTime = WebKit::WebProcessProxy::totalForegroundTime(process);
    v6->_totalBackgroundTime = WebKit::WebProcessProxy::totalBackgroundTime(process);
    v6->_totalSuspendedTime = WebKit::WebProcessProxy::totalSuspendedTime(process);
  }

  return v6;
}

@end